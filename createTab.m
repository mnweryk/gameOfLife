function tab = createTab(choice, rows, columns)
    tab = zeros(rows, columns);
    switch choice
        case 1
            tab([rows/2-1, rows/2+1], columns/2:columns/2+1) = 1;
            tab(rows/2, [columns/2-1 columns/2+2]) = 1;
        case 2
            tab(rows/2, columns/2-1:columns/2) = 1;
            tab(rows/2-1, columns/2:columns/2+1) = 1;
            tab(rows/2+1, columns/2+1) = 1;
        case 3
            tab(rows/2-1:rows/2+1, columns/2) = 1;
        case 4
            tab = randi([0 1], rows, columns);

    end
end

