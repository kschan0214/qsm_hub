%% h = qsmhub_handle_panel_utility_get_header(hParent,hFig,h,position)
%
% Input
% --------------
% hParent       : parent handle of this panel
% hFig          : handle of the GUI
% h             : global structure contains all handles
% position      : position of this panel
%
% Output
% --------------
% h             : global structure contains all new and other handles
%
% Description: This GUI function creates a panel for the utility function
% 'Get qsm_hub header'
%
% Kwok-shing Chan @ DCCN
% k.chan@donders.ru.nl
% Date created: 24 May 2018
% Date last modified: 25 May 2018
%
%
function h = qsmhub_handle_panel_utility_get_header(hParent,h,position)
% set Parent of all related controls
h.StepsPanel.Utility.getHeader = uipanel(hParent,'Title','1. Get qsm_hub header',...
    'Position',[position(1) position(2) 0.95 0.3],...
    'backgroundcolor',get(h.fig,'color'));

    % DICOM directory input
    h.Utility.getHeader.text.dicomInput = uicontrol(h.StepsPanel.Utility.getHeader,...
        'Style','text','String','Input DICOM dir:',...
        'Units','normalized','Position', [0.01 0.88 0.2 0.1],...
        'HorizontalAlignment','left',...
        'backgroundcolor',get(h.fig,'color'),...
        'tooltip',...
        strcat('Input directory contains all (magnitude and phase) mGRE DICOM files. ',...
         'No user input will be needed if your data input is a DICOM directory.'));
    h.Utility.getHeader.edit.dicomInput = uicontrol('Parent',h.StepsPanel.Utility.getHeader,...
        'Style','edit',...
        'units','normalized','position',[0.21 0.88 0.68 0.1],...
        'HorizontalAlignment','left',...
        'backgroundcolor','white');
    h.Utility.getHeader.button.dicomInput = uicontrol('Parent',h.StepsPanel.Utility.getHeader,...
        'Style','pushbutton','String','open',...
        'units','normalized','position',[0.89 0.88 0.1 0.1],...
        'backgroundcolor','white');
    
    % NIfTI file input
    h.Utility.getHeader.text.niftiInput = uicontrol(h.StepsPanel.Utility.getHeader,...
        'Style','text','String','or input NIfTI file:',...
        'Units','normalized','Position', [0.01 0.77 0.2 0.1],...
        'HorizontalAlignment','left',...
        'backgroundcolor',get(h.fig,'color'),...
        'tooltip','Input NIfTI file of mGRE data. User input is allowed');
    h.Utility.getHeader.edit.niftiInput = uicontrol('Parent',h.StepsPanel.Utility.getHeader,...
        'Style','edit',...
        'units','normalized','position',[0.21 0.77 0.68 0.1],...
        'HorizontalAlignment','left',...
        'backgroundcolor','white');
    h.Utility.getHeader.button.niftiInput = uicontrol('Parent',h.StepsPanel.Utility.getHeader,...
        'Style','pushbutton','String','open',...
        'units','normalized','position',[0.89 0.77 0.1 0.1],...
        'backgroundcolor','white');
    
    % User input
    h.Utility.getHeader.text.user = uicontrol(h.StepsPanel.Utility.getHeader,...
        'Style','text','String','or/and user parameter(s)',...
        'Units','normalized','Position', [0.01 0.66 0.9 0.1],...
        'HorizontalAlignment','left',...
        'backgroundcolor',get(h.fig,'color'),...
        'tooltip',...
        strcat('User input will replace the header information extracted from the input NIfTI header. ',...
               'Information about echo times has to be provided along with the NIfTI file.'));
    % B0 strength
    h.Utility.getHeader.text.userB0 = uicontrol(h.StepsPanel.Utility.getHeader,...
        'Style','text','String','B0 strength (T)',...
        'Units','normalized','Position', [0.01 0.55 0.2 0.1],...
        'HorizontalAlignment','left',...
        'backgroundcolor',get(h.fig,'color'),...
        'tooltip','Magnetic field strength in Tesla (default: 3).');
    h.Utility.getHeader.edit.userB0 = uicontrol('Parent',h.StepsPanel.Utility.getHeader,...
        'Style','edit',...
        'units','normalized','position',[0.21 0.55 0.2 0.1],...
        'HorizontalAlignment','left',...
        'backgroundcolor','white');
    % B0 direction
    h.Utility.getHeader.text.userB0dir = uicontrol(h.StepsPanel.Utility.getHeader,...
        'Style','text','String','B0 direction [x,y,z]',...
        'Units','normalized','Position', [0.49 0.55 0.2 0.1],...
        'HorizontalAlignment','left',...
        'backgroundcolor',get(h.fig,'color'),...
        'tooltip','Magnetic field direction');
    h.Utility.getHeader.edit.userB0dir = uicontrol('Parent',h.StepsPanel.Utility.getHeader,...
        'Style','edit','String','[ ]',...
        'units','normalized','position',[0.71 0.55 0.2 0.1],...
        'HorizontalAlignment','left',...
        'backgroundcolor','white');
    
    % voxel size
    h.Utility.getHeader.text.userVoxelSize = uicontrol(h.StepsPanel.Utility.getHeader,...
        'Style','text','String','Voxel size (dx,dy,dz) (mm)',...
        'Units','normalized','Position', [0.01 0.44 0.2 0.1],...
        'HorizontalAlignment','left',...
        'backgroundcolor',get(h.fig,'color'),...
        'tooltip','Voxel size of image in order of [x,y,z]');
    h.Utility.getHeader.edit.userVoxelSize = uicontrol('Parent',h.StepsPanel.Utility.getHeader,...
        'Style','edit','String','[ ]',...
        'units','normalized','position',[0.21 0.44 0.2 0.1],...
        'HorizontalAlignment','left',...
        'backgroundcolor','white');
    
    % TE
    % TE file
    h.Utility.getHeader.text.teFile = uicontrol('Parent',h.StepsPanel.Utility.getHeader,...
        'Style','text','String','TE file',...
        'units','normalized','Position',[0.01 0.33 0.2 0.1],...
        'HorizontalAlignment','left',...
        'backgroundcolor',get(h.fig,'color'),...
        'tooltip','Can be either qsm_hub header (.mat) or MRIConvert text (.txt) file');
    h.Utility.getHeader.edit.teFile = uicontrol('Parent',h.StepsPanel.Utility.getHeader,...
        'Style','edit',...
        'units','normalized','position',[0.21 0.33 0.68 0.1],...
        'HorizontalAlignment','left',...
        'backgroundcolor','white');
    h.Utility.getHeader.button.teFile = uicontrol('Parent',h.StepsPanel.Utility.getHeader,...
        'Style','pushbutton','String','open',...
        'units','normalized','position',[0.89 0.33 0.1 0.1],...
        'backgroundcolor','white');
    % user TE input
    h.Utility.getHeader.text.userTE = uicontrol('Parent',h.StepsPanel.Utility.getHeader,...
        'Style','text','String','or user input TEs (s)',...
        'units','normalized','Position',[0.01 0.22 0.2 0.1],...
        'HorizontalAlignment','left',...
        'backgroundcolor',get(h.fig,'color'),...
        'tooltip','Specify the echo time (TE, in s) of each echo');
    h.Utility.getHeader.edit.userTE = uicontrol('Parent',h.StepsPanel.Utility.getHeader,...
        'Style','edit',...
        'units','normalized','position',[0.21 0.22 0.78 0.1],...
        'HorizontalAlignment','left',...
        'backgroundcolor','white',...
        'String','[ ]');
    
    % output directory
    h.Utility.getHeader.text.outputDir = uicontrol(h.StepsPanel.Utility.getHeader,...
        'Style','text','String','Output dir:',...
        'Units','normalized','Position', [0.01 0.11 0.2 0.1],...
        'HorizontalAlignment','left',...
        'backgroundcolor',get(h.fig,'color'),...
        'tooltip','Output directory where the output header file will be stored');
    h.Utility.getHeader.edit.outputDir = uicontrol('Parent',h.StepsPanel.Utility.getHeader,...
        'Style','edit',...
        'units','normalized','position',[0.21 0.11 0.68 0.1],...
        'HorizontalAlignment','left',...
        'backgroundcolor','white');
    h.Utility.getHeader.button.outputDir = uicontrol('Parent',h.StepsPanel.Utility.getHeader,...
        'Style','pushbutton','String','open',...
        'units','normalized','position',[0.89 0.11 0.1 0.1],...
        'backgroundcolor','white');
    
    % run
    h.Utility.getHeader.button.run = uicontrol('Parent',h.StepsPanel.Utility.getHeader,...
        'Style','pushbutton','String','Save header',...
        'units','normalized','position',[0.79 0.005 0.2 0.1],...
        'backgroundcolor','white');
    
end