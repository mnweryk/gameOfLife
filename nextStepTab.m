function next_tab = nextStepTab(extended_tab)
    [sh1, sh2] = size(extended_tab);
    next_tab = zeros(sh1-2, sh2-2);
    for row=2:sh1-1
        for column=2:sh2-1
            neighbours = countNeighbours(row, column, extended_tab);
            if extended_tab(row, column) == 1
                if neighbours == 2 || neighbours == 3
                    next_tab(row-1,column-1) = 1;
                else
                    next_tab(row-1,column-1) = 0;
                end
            else
                if neighbours == 3
                    next_tab(row-1,column-1) = 1;
                else
                    next_tab(row-1,column-1) = 0;
                end
            end
        end
    end
end

