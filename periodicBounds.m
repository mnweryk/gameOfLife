function new_tab = periodicBounds(tab)
    [tabRows, tabColumns] = size(tab);
    new_tab = zeros(tabRows+2, tabColumns+2);

    [new_shape1, new_shape2] = size(new_tab);
    new_tab(2:new_shape1-1, 2:new_shape2-1) = tab;      %copying tab into new_tab
    
    new_tab(:,1) = new_tab(:, end-1);                   %left column
    new_tab(:, end) = new_tab(:, 2);                    %right column
    new_tab(1, :) = new_tab(end-1, :);
    new_tab(end,:) = new_tab(2,:);

end