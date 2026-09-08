clc
clear all
close

data_in_folder=("./");
exel_data=dir("./*.xlsx");

    h= size(exel_data, 1)

for i=1:size(exel_data,1)
    table = readtable(exel_data(i).name);

    data_int = table.Number;
    data_time = table.time;
    data_double = table.data;

    f = figure(i);
    plot(data_time, data_int, 'Color','br','LineStyle','--','LineWidth',5,'Marker','*');
    xlabel('время, с.');
    ylabel('некие данные, ед.');
    title('Ну какой то график чего-то');
    fontsize(f,16,"points");

    legend;
    grid on;
    hold on;
    plot(data_time, data_double, 'Color','red','LineStyle','-','LineWidth','3');
    hold off;

    exportgraphics(f, 'babka(i).jpeg', 'Resolution',600);
end