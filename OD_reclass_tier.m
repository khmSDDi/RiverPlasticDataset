%Reclassify index into Tiers

%DS='ams_'; %amsterdam
%DS='jak_'; %jakarta
%DS='viet_'; %amsterdam

tier=0;

%set the current directory to original labels folder
files = dir('*.txt');

for id = 1:length(files)
    [~, fname] = fileparts(files(id).name);
    tfname=strcat(fname,".txt");
    tlabel=readtable(tfname);
    arr_tlabel=table2array(tlabel);
    label_size=size(tlabel,1);
    drop_row=0;
    for tt=1:label_size
        index=arr_tlabel(tt,1);
        %removal of non plastic
        if index>9 %index beyond 9 are non-plastic
            index=NaN;
        else
        OD_tier_def;
        end
        arr_tlabel(tt,1)=index;
    end
    up_arr_tlabel = rmmissing(arr_tlabel,1); %drop row check
    temp_array=(up_arr_tlabel)'; %always transpose when writing to DLM txt
    %change directory
    cd ../..
    new_tfname = fullfile('tier0/valid',tfname); %new tier location %change folder
    fileID = fopen(new_tfname,'w');
    fprintf(fileID,'%d %1.6f %1.6f %1.6f %1.6f\n',temp_array);
    fclose(fileID);
    cd labels/valid %change folder
end