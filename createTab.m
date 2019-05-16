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
        case 5
            map = [1 0 0
                0 1 0];
            fig = figure;
            a = axes(fig);
            a.Units = 'pixels';
            a.Position =  [10 10 440 440];
            set(gca,'XLim',[1 columns], 'YLim',[1 rows]);
            imshow(tab, 'Parent', gca, 'InitialMagnification','fit', 'Colormap', map);
            button = uicontrol('Style', 'pushButton','String', 'Almost there!', 'Position', [460 250 90 50]);
            button.Callback = @state
            inputflag = 1;
            
            while inputflag == 1
                
                x = -1;
                y = -1;
                while x < 1 || y<1 || x>rows || y>columns                     
                    [y, x] = ginput(1);
                end
                x = uint8(x);
                y = uint8(y);
                tab(x, y) = 1;
                imshow(tab, 'Parent', gca, 'InitialMagnification','fit', 'Colormap', map);
            
            end
            close(fig)
    end
    
                function state(src,event)
                    inputflag=0;
                end
end

