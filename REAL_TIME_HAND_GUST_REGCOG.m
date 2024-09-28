function varargout = REAL_TIME_HAND_GUST_REGCOG(varargin)
% REAL_TIME_HAND_GUST_REGCOG MATLAB code for REAL_TIME_HAND_GUST_REGCOG.fig
%      REAL_TIME_HAND_GUST_REGCOG, by itself, creates a new REAL_TIME_HAND_GUST_REGCOG or raises the existing
%      singleton*.
%
%      H = REAL_TIME_HAND_GUST_REGCOG returns the handle to a new REAL_TIME_HAND_GUST_REGCOG or the handle to
%      the existing singleton*.
%
%      REAL_TIME_HAND_GUST_REGCOG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in REAL_TIME_HAND_GUST_REGCOG.M with the given input arguments.
%
%      REAL_TIME_HAND_GUST_REGCOG('Property','Value',...) creates a new REAL_TIME_HAND_GUST_REGCOG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before REAL_TIME_HAND_GUST_REGCOG_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to REAL_TIME_HAND_GUST_REGCOG_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
 
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @REAL_TIME_HAND_GUST_REGCOG_OpeningFcn, ...
                   'gui_OutputFcn',  @REAL_TIME_HAND_GUST_REGCOG_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before REAL_TIME_HAND_GUST_REGCOG is made visible.
function REAL_TIME_HAND_GUST_REGCOG_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to REAL_TIME_HAND_GUST_REGCOG (see VARARGIN)

% Choose default command line output for REAL_TIME_HAND_GUST_REGCOG
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
axes(handles.axes1);
imshow('SS.jpg')

% UIWAIT makes REAL_TIME_HAND_GUST_REGCOG wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = REAL_TIME_HAND_GUST_REGCOG_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%menciptakan object akuisisi dari web-cam
% vid = videoinput('winvideo', 1);
% set(vid, 'ReturnedColorSpace', 'RGB');
% img = getsnapshot(vid);
% imshow(img)
vid = videoinput('winvideo',1,'YUY2_640x480');
start(vid);
preview(vid);
img = getsnapshot(vid);
imshow(img)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
color_det


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA
MouseControl
