function neighbours = countNeighbours(row, column, tab)
   %[shape1, shape2] = size(tab);
    uppanddown = tab(row-1:2:row+1, column-1:column+1);
    leftandright = tab(row, column-1:2:column+1);
    neighbours = sum(sum(uppanddown))+ sum(leftandright);   %double sum, because sums by rows

end

