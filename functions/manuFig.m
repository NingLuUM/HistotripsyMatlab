% Saves figure as both png and fig without all the hassle
% J. Macoskey
% 10.5.17

function manuFig(fignum,name,path)
    if path(end) == '\'
        saveas(fignum,[path,name,'.png'])
        saveas(fignum,[path,name,'.fig'])
    else
        saveas(fignum,[path,'\',name,'.png'])
        saveas(fignum,[path,'\',name,'.fig'])
    end
end