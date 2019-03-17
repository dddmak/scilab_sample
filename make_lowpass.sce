//reference:https://help.scilab.org/docs/5.5.1/ja_JP/csvRead.html
//http://hotic.blog129.fc2.com/blog-entry-10.html
//http://scilab.kani33.com/2015/05/graphic-color/
//ファイル読み取り
//filename = fullfile("/Users/makino/Desktop/scilab/check.csv");
filenamex = fullfile("C:\Users\user\Desktop\scilab\Book2.csv");
filename_out = fullfile("C:\Users\user\Desktop\scilab\out.csv");
//csv読み取り
//data = csvRead(filename);
datax = csvRead(filenamex);

x = size(datax,1)
last = datax(x,1)
data_out = zeros(floor(last*100),2);
for i = 1:floor(last * 100),
    for j =1:x, 
        if i * 0.01 < datax(j,1)
            data_out(i,1) = i * 0.01;
            if j==1 
                data_out(i,2) = datax(j,2) * i*0.01/datax(j,1);
                data_out(i,3) = datax(j,3) * i*0.01/datax(j,1);
            else
                data_out(i,2) = datax(j-1,2) * (datax(j,1) - i*0.01) / (datax(j,1) - datax(j-1,1)) +  datax(j,2) * (i*0.01 - datax(j-1,1)) / (datax(j,1) - datax(j-1,1));
                data_out(i,3) = datax(j-1,3) * (datax(j,1) - i*0.01) / (datax(j,1) - datax(j-1,1)) +  datax(j,3) * (i*0.01 - datax(j-1,1)) / (datax(j,1) - datax(j-1,1));
            end,
            break
        end,
    end,
end
csvWrite(data_out,filename_out)
