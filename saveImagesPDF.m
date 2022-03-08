function [h1] = saveImagesPDF(h1,fileName,mFigs,nFigs)
% Function to save PDF images in file
% 
% h1 = saveImagesPDF(h1,fileName)
% 
% Input:
%     h1 = figure handle (ex.: >h1 = figure;)
%     fileName = string with the name of the file to save, without ".pdf"
%     mFigs = (optional) how many figs in vertical - for subplots
%     nFigs = (optional) how many figs in horizontal - for subplots
% Ouput:
%     h1 = figure handle with new parameters
% 

% Version 001 (2012)
% Version 001 (2016): optional arguments about # of figures for subplots
% 

% verify input arguments for subplots
switch nargin
    case 2
        mFigs=1;
        nFigs=1;
    case 3
        nFigs=1;
end

% prepare figure for saving
set(h1,'Units','centimeters','Position',[0,0,nFigs*10,mFigs*8]);
figSize = get(h1,'Position');
set(h1,'PaperUnits','centimeters','PaperSize',figSize(3:4), ...
    'PaperPosition',[0,0,figSize(3:4)]);
% set(get(h1,'CurrentAxes'),'FontSize',12); %axis fontsize

print(h1,'-dpdf',[fileName '.pdf']);