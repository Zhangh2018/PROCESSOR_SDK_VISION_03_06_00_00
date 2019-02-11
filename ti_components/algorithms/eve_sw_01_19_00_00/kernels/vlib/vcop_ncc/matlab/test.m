% Use this script to generate a test case for the normalized cross-corelation
% testbench
% Upon running this script, files input.c, template.c, output.c are written into directory
% test/
% Rebuild the testbench by doing a 'gmake target' in order to include the
% generated files into the *.out .

close all;
clear all;

testnum= 1;

invTemplateSizeQshift= 8;
invTemplateSizeQval= 2^invTemplateSizeQshift;
qShift= 0;
qVal= 2^qShift;
qVal2= 2^(qShift-1);
qValDiff= 2^(invTemplateSizeQshift-qShift);
qValDiff2= 2^((invTemplateSizeQshift-qShift)-1);

%input = rgb2gray(imread('peppers.png'));
%template   = rgb2gray(imread('onion.png'));
%template = 100.*[1 0 1; 1 1 1; 1 0 1];
%input= zeros(9, 9);
%input(4:6, 5:7)= template;

rng('default');
%template= round(255.*rand(3,3));
template= round(255.*rand(12,12));
%template= 100.*[0 0 0; 0 1 0; 0 0 0];
%input= round(255.*rand(9,9));
input= round(255.*rand(48,48));
image_w= size(input, 2);
image_h= size(input, 1);
template_w= size(template, 2);
template_h= size(template, 1);

template_mean= mean(mean(template));
template_mean_frac= round((invTemplateSizeQval*sum(sum(template)))./(template_w*template_h));
template_mean_frac= floor((template_mean_frac + qValDiff2)/qValDiff);
template_var= sum(sum((template - template_mean).*(template - template_mean)));
template_var_frac= sum(sum((qVal*template - template_mean_frac).*(qVal*template - template_mean_frac)));
template_n= template - template_mean; % normalized template
template_n_frac= qVal*template - template_mean_frac;


imshowpair(input,template,'montage');

% Invoke first the matlab native cross correlation
c = normxcorr2(template,input);

% Invoke the hand-coded cross-correlation
large_input=zeros(size(input) + size(template) -1 );
large_input(1:size(input,1), 1:size(input,2))= input;

if (0),
for v=1:size(large_input, 1) - template_h + 1,
    for u=1:size(large_input, 2) - template_w + 1,
        sumIn= 0;
        for y=1:template_h,
            for x=1:template_w,
                sumIn= sumIn + large_input(y+v-1, x+u-1);
            end;
        end;
        avgIn= sumIn/(template_w*template_h);
        c2(v,u)= 0;
        varIn= 0;
        for y=1:template_h,
            for x=1:template_w,
                c2(v,u)= c2(v,u) + (large_input(y+v-1, x+u-1) - avgIn)*templlate_n_int(y, x);
                varIn= varIn + (large_input(y+v-1, x+u-1) - avgIn)*(large_input(y+v-1, x+u-1) - avgIn);
            end;
        end;
        if (varIn~=0),
            c2(v,u)= c2(v,u)/sqrt(varIn .* template_var);
        else
            c2(v,u)= 0;
        end;
    end;
end;

else
    templateSize= floor((invTemplateSizeQval + (template_w*template_h)/2)/(template_w*template_h));
    for v=1:size(large_input, 1) - template_h + 1,
        for u=1:size(large_input, 2) - template_w + 1,
            sumIn= 0;
            for y=1:template_h,
                for x=1:template_w,
                    sumIn= sumIn + large_input(y+v-1, x+u-1);
                end;
            end;
            avgIn= floor((sumIn*templateSize + qValDiff2)/qValDiff);
            c2(v,u)= 0;
            varIn= 0;
            for y=1:template_h,
                for x=1:template_w,
                    temp= (large_input(y+v-1, x+u-1)*qVal - avgIn);
                    c2(v,u)= c2(v,u) + floor((temp*template_n_frac(y, x)+ qVal2)/qVal);
                    varIn= varIn + floor((temp*temp + qVal2)/qVal);
                end;
            end;

            num_cc(v,u)= c2(v,u);
            denom_var(v,u)= varIn;
            if (varIn~=0),
                c2(v,u)= c2(v,u)/sqrt(floor((varIn .* template_var_frac+ qVal2)./qVal));
            else
                c2(v,u)= 0;
            end;
        end;
    end;

end;
%figure, surf(c), shading flat
[ypeak, xpeak] = find(c==max(c(:)));
%[ypeak2, xpeak2] = find(c2==max(c2(:)))

yoffSet = ypeak-size(template,1);
xoffSet = xpeak-size(template,2);

fprintf(1, 'xoffset= %d, yoffset= %d\n', xoffSet, yoffSet);
hFig = figure;
hAx  = axes;
imshow(input,'Parent', hAx);
imrect(hAx, [xoffSet, yoffSet, size(template,2), size(template,1)]);

% Compare the result of the native cross-correlation with the hand-coded
% one, both should be pretty close
%error= sum(sum(c(template_h:end, template_w:end) - c2));
c3= c(template_h:end, template_w:end);
error_perc= 100*abs(c3- c2)./abs(c3);
avg_error_perc=mean(mean(error_perc))
max_error_perc= max(max(error_perc))
[max_error_y, max_error_x]= find(max_error_perc==error_perc);
value_in_c2_at_max_error= c2(max_error_y, max_error_x);
value_in_c_at_max_error= c3(max_error_y, max_error_x);
%if (abs(error) > 1e-4),
%    disp('Error between two methods');
%end;


% Compute performance estimates
computeWidth= 16;
computeHeight= 16;

tempImgWidth= size(template,2);
tempImgHeight= size(template,1);
orgImgWidth= computeWidth + tempImgWidth -1;
orgImgHeight= computeHeight + tempImgHeight -1;
outputWidth= computeWidth;
outputHeight= computeHeight;
if (qShift==0 || qShift== 8),
    perfMult= 0.25;
else
    perfMult= 0.5;
end;
cycles_per_pixel=(floor((orgImgWidth+15)/16)*16*tempImgHeight)*2/16 + (floor((orgImgWidth+15)/16))*16*(outputHeight-1)*2/16 + ((floor((outputHeight+15)/16))*16*tempImgWidth)*2/16 + (floor((outputHeight+15)/16)*16)*(outputWidth-1)*2/16 + (6/16 + perfMult*tempImgWidth*tempImgHeight)*(floor((outputWidth+15)/16))*16*outputHeight;
cycles_per_pixel= 1.05*cycles_per_pixel/(outputWidth*outputHeight) % Add 5 % overhead

fid= fopen('..\test\input.c','wt');
fprintf(fid, '#include <stdint.h>\n');
fprintf(fid,'const uint8_t input[%d*%d]={',size(input,1), size(input,2));
fprintf(fid,'%d,',input');
fprintf(fid,'};\n');
fclose(fid);

fid= fopen('..\test\template.c','wt');
fprintf(fid, '#include <stdint.h>\n');
fprintf(fid,'const uint8_t template[%d*%d]={',size(template,1), size(template,2));
fprintf(fid,'%d,',template');
fprintf(fid,'};\n');
fclose(fid);

fid= fopen('..\test\output.c','wt');
fprintf(fid, '#include <stdint.h>\n');
fprintf(fid,'const float output[%d*%d]={',size(c2,1), size(c2,2));
fprintf(fid,'%f,',c2');
fprintf(fid,'};\n');
fclose(fid);

filename= ['..\test\testvecs\config\config' num2str(testnum,'%01d') '.txt'];
fid= fopen(filename,'wt');
fprintf(fid, 'inputSrc = "STATIC"\n');
fprintf(fid, 'outFileName = "..\\testvecs\\output\\output1.bin"\n');
fprintf(fid, 'qShift = %d\n', qShift);
fprintf(fid, 'sizeQshift = %d\n', invTemplateSizeQshift);
fprintf(fid, 'templateBlkWidth = %d\n', size(template,2));
fprintf(fid, 'templateBlkHeight = %d\n', size(template,1));
fprintf(fid, 'inputImgWidth = %d\n', size(input,2));
fprintf(fid, 'inputImgHeight = %d\n', size(input,1));
fprintf(fid, 'inputImgStride = %d\n', size(input,2) + size(template,2) - 1);
fprintf(fid, 'computeBlkWidth = %d\n', computeWidth);
fprintf(fid, 'computeBlkHeight = %d\n', computeHeight);
fprintf(fid, 'xDirJump = 1\n');
fprintf(fid, 'yDirJump = 1\n');
fprintf(fid, 'refOutputIdx = 0\n');
fprintf(fid, 'cyclesPerPixel = %3.1f\n', cycles_per_pixel);
fprintf(fid, 'writeOutput = 0');
fclose(fid);

