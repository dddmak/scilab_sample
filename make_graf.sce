//reference:https://help.scilab.org/docs/5.5.1/ja_JP/csvRead.html
//http://hotic.blog129.fc2.com/blog-entry-10.html
//http://scilab.kani33.com/2015/05/graphic-color/
//ファイル読み取り
//filename = fullfile("/Users/makino/Desktop/scilab/check.csv");
filenamex = fullfile("/Users/makino/Desktop/scilab/Book2.csv");
//csv読み取り
//data = csvRead(filename);
datax = csvRead(filenamex);
//プロット
//plot2d(data(:,1),data(:,3),2)
plot2d(datax(:,1),datax(:,2),2)
//plot2d(datax(:,1),datax(:,3),3)
a=get("current_axes"); //get the current axes
a.font_size=6;

replot([3 -40 7 40]);

//title('angle from front','fontsize',7); //タイトル
//legends(['camera' 'sensor'],[2 3],font_size=7,opt="ur")
legends('angle from motion capture', [2],font_size=7,opt="ur")
//legends('from Camera', 3,font_size=7,opt="ur")
xlabel('Time[s]','fontsize',7); //X軸ラベル
ylabel('angle[dig]','fontsize',7); //Y軸ラベル


//一部のみ拡大(未実装。参考部分)
//a=gca();
//a.data_bounds(1:2,1)=[18;60];
//実行時 exec( 'make_graf.sce' )
