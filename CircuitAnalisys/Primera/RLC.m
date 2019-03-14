function varargout = RLC(varargin)
% RLC MATLAB code for RLC.fig
%      RLC, by itself, creates a new RLC or raises the existing
%      singleton*.
%
%      H = RLC returns the handle to a new RLC or the handle to
%      the existing singleton*.
%
%      RLC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RLC.M with the given input arguments.
%
%      RLC('Property','Value',...) creates a new RLC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RLC_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RLC_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RLC

% Last Modified by GUIDE v2.5 02-Jul-2017 20:22:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RLC_OpeningFcn, ...
                   'gui_OutputFcn',  @RLC_OutputFcn, ...
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


% --- Executes just before RLC is made visible.
function RLC_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RLC (see VARARGIN)

% Choose default command line output for RLC
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RLC wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RLC_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
a1=get(handles.f,'string');
f=str2double(a1);
a2=get(handles.Im,'string');
Im=str2double(a2);
a3=get(handles.R,'string');
R=str2double(a3);
a4=get(handles.L,'string');
L=str2double(a4);
a4=get(handles.C,'string');
C=str2double(a4);
t=-5:0.001:5;
pause(0.01);
w=2*pi*f;
A=atand(((w*L)-(1/w*C))/R);
Vm=(Im*(sqrt((R^2)+(((w*L)-(1/w*C))^2))));
Pap=((Vm*Im)/2);
Pmed=(Pap)*(cos(A));
Pmd=(Pap)*(cos(A));
Pme1=abs((Vm)*(cos(A)));
Pai=((Pmed)-(Pmed*cos(2*w*t)));
Pri=(Pap*sin(A)*sin(2*w*t));
Pr1=abs((Pap)*(sin(A)));
I=Im*sin(w*t);
V=(Im*(sqrt((R^2)+(((w*L)-(1/w*C))^2))))*(sin((w*t)+(A)));
P=(Pai+Pri);
axes(handles.axes1);
plot(t,V,t,I,t,P)
grid on
hold on

t=-5:0.001:5;
pause(0.01);
w=2*pi*f;
z=2*w;
B=atand(((w*C)-(1/w*L))*R);
Vm=(Im/(sqrt((R^2)+(((w*C)-(1/w*L))^2))));
Pap=((Vm*Im)/2);
Pmed=(Pap)*(cos(B));
Pmd=(Pap)*(cos(B));
Pme2=abs((Vm)*(cos(B)));
Pai=((Pmed)-(Pmed*cos(2*w*t)));
Pri=(Pap*sin(B)*sin(2*w*t));
Pr2=abs((Pap)*(sin(B)));
Vm1=Im/(sqrt((R^2)+(((w*C)-(1/w*L))^2)));
V=Vm1*sin(w*t);
I=(Vm*(sqrt((R^2)+(((w*C)-(1/w*L))^2))))*sin((w*t)-B);
P=(Pai-Pri);
axes(handles.axes2);
plot(t,V,t,I,t,P)
grid on
hold on

set(handles.co1,'string',Vm);
set(handles.w1,'string',w);
set(handles.w2,'string',w);
set(handles.a,'string',A);
set(handles.q,'string',Im);
set(handles.pa,'string',Pme1);
set(handles.pa1,'string',Pme1);
set(handles.w3,'string',z);
set(handles.co01,'string',Pr1);
set(handles.w4,'string',z);
set(handles.pa2,'string',Pme1);
set(handles.pa3,'string',Pme1);
set(handles.w5,'string',z);
set(handles.pr1,'string',Pr1);
set(handles.w6,'string',z);
set(handles.pa4,'string',Pme1);
set(handles.pr2,'string',Pr1);

set(handles.co,'string',Vm1);
set(handles.w11,'string',w);
set(handles.w21,'string',w);
set(handles.b,'string',B);
set(handles.q1,'string',Im);
set(handles.pa12,'string',Pme2);
set(handles.pa11,'string',Pme2);
set(handles.w31,'string',z);
set(handles.po,'string',Pr2);
set(handles.w41,'string',z);
set(handles.pa21,'string',Pme2);
set(handles.pa31,'string',Pme2);
set(handles.w51,'string',z);
set(handles.pr11,'string',Pr2);
set(handles.w61,'string',z);
set(handles.pa41,'string',Pme2);
set(handles.pr21,'string',Pr2);

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function f_Callback(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f as text
%        str2double(get(hObject,'String')) returns contents of f as a double


% --- Executes during object creation, after setting all properties.
function f_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R_Callback(hObject, eventdata, handles)
% hObject    handle to R (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R as text
%        str2double(get(hObject,'String')) returns contents of R as a double


% --- Executes during object creation, after setting all properties.
function R_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C_Callback(hObject, eventdata, handles)
% hObject    handle to C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C as text
%        str2double(get(hObject,'String')) returns contents of C as a double


% --- Executes during object creation, after setting all properties.
function C_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Im_Callback(hObject, eventdata, handles)
% hObject    handle to Im (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Im as text
%        str2double(get(hObject,'String')) returns contents of Im as a double


% --- Executes during object creation, after setting all properties.
function Im_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Im (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w1_Callback(hObject, eventdata, handles)
% hObject    handle to w1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w1 as text
%        str2double(get(hObject,'String')) returns contents of w1 as a double


% --- Executes during object creation, after setting all properties.
function w1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a_Callback(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a as text
%        str2double(get(hObject,'String')) returns contents of a as a double


% --- Executes during object creation, after setting all properties.
function a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q_Callback(hObject, eventdata, handles)
% hObject    handle to q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q as text
%        str2double(get(hObject,'String')) returns contents of q as a double


% --- Executes during object creation, after setting all properties.
function q_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w2_Callback(hObject, eventdata, handles)
% hObject    handle to w2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w2 as text
%        str2double(get(hObject,'String')) returns contents of w2 as a double


% --- Executes during object creation, after setting all properties.
function w2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pa_Callback(hObject, eventdata, handles)
% hObject    handle to pa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pa as text
%        str2double(get(hObject,'String')) returns contents of pa as a double


% --- Executes during object creation, after setting all properties.
function pa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w3_Callback(hObject, eventdata, handles)
% hObject    handle to w3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w3 as text
%        str2double(get(hObject,'String')) returns contents of w3 as a double


% --- Executes during object creation, after setting all properties.
function w3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pa1_Callback(hObject, eventdata, handles)
% hObject    handle to pa1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pa1 as text
%        str2double(get(hObject,'String')) returns contents of pa1 as a double


% --- Executes during object creation, after setting all properties.
function pa1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pa1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function co01_Callback(hObject, eventdata, handles)
% hObject    handle to co01 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of co01 as text
%        str2double(get(hObject,'String')) returns contents of co01 as a double


% --- Executes during object creation, after setting all properties.
function co01_CreateFcn(hObject, eventdata, handles)
% hObject    handle to co01 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w4_Callback(hObject, eventdata, handles)
% hObject    handle to w4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w4 as text
%        str2double(get(hObject,'String')) returns contents of w4 as a double


% --- Executes during object creation, after setting all properties.
function w4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pa2_Callback(hObject, eventdata, handles)
% hObject    handle to pa2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pa2 as text
%        str2double(get(hObject,'String')) returns contents of pa2 as a double


% --- Executes during object creation, after setting all properties.
function pa2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pa2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w5_Callback(hObject, eventdata, handles)
% hObject    handle to w5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w5 as text
%        str2double(get(hObject,'String')) returns contents of w5 as a double


% --- Executes during object creation, after setting all properties.
function w5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pa3_Callback(hObject, eventdata, handles)
% hObject    handle to pa3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pa3 as text
%        str2double(get(hObject,'String')) returns contents of pa3 as a double


% --- Executes during object creation, after setting all properties.
function pa3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pa3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pr1_Callback(hObject, eventdata, handles)
% hObject    handle to pr1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pr1 as text
%        str2double(get(hObject,'String')) returns contents of pr1 as a double


% --- Executes during object creation, after setting all properties.
function pr1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pr1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w6_Callback(hObject, eventdata, handles)
% hObject    handle to w6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w6 as text
%        str2double(get(hObject,'String')) returns contents of w6 as a double


% --- Executes during object creation, after setting all properties.
function w6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pa4_Callback(hObject, eventdata, handles)
% hObject    handle to pa4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pa4 as text
%        str2double(get(hObject,'String')) returns contents of pa4 as a double


% --- Executes during object creation, after setting all properties.
function pa4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pa4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pr2_Callback(hObject, eventdata, handles)
% hObject    handle to pr2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pr2 as text
%        str2double(get(hObject,'String')) returns contents of pr2 as a double


% --- Executes during object creation, after setting all properties.
function pr2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pr2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function co_Callback(hObject, eventdata, handles)
% hObject    handle to co (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of co as text
%        str2double(get(hObject,'String')) returns contents of co as a double


% --- Executes during object creation, after setting all properties.
function co_CreateFcn(hObject, eventdata, handles)
% hObject    handle to co (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w21_Callback(hObject, eventdata, handles)
% hObject    handle to w21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w21 as text
%        str2double(get(hObject,'String')) returns contents of w21 as a double


% --- Executes during object creation, after setting all properties.
function w21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pa12_Callback(hObject, eventdata, handles)
% hObject    handle to pa12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pa12 as text
%        str2double(get(hObject,'String')) returns contents of pa12 as a double


% --- Executes during object creation, after setting all properties.
function pa12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pa12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w31_Callback(hObject, eventdata, handles)
% hObject    handle to w31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w31 as text
%        str2double(get(hObject,'String')) returns contents of w31 as a double


% --- Executes during object creation, after setting all properties.
function w31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pa11_Callback(hObject, eventdata, handles)
% hObject    handle to pa11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pa11 as text
%        str2double(get(hObject,'String')) returns contents of pa11 as a double


% --- Executes during object creation, after setting all properties.
function pa11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pa11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function po_Callback(hObject, eventdata, handles)
% hObject    handle to po (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of po as text
%        str2double(get(hObject,'String')) returns contents of po as a double


% --- Executes during object creation, after setting all properties.
function po_CreateFcn(hObject, eventdata, handles)
% hObject    handle to po (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w41_Callback(hObject, eventdata, handles)
% hObject    handle to w41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w41 as text
%        str2double(get(hObject,'String')) returns contents of w41 as a double


% --- Executes during object creation, after setting all properties.
function w41_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pa21_Callback(hObject, eventdata, handles)
% hObject    handle to pa21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pa21 as text
%        str2double(get(hObject,'String')) returns contents of pa21 as a double


% --- Executes during object creation, after setting all properties.
function pa21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pa21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w51_Callback(hObject, eventdata, handles)
% hObject    handle to w51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w51 as text
%        str2double(get(hObject,'String')) returns contents of w51 as a double


% --- Executes during object creation, after setting all properties.
function w51_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pa31_Callback(hObject, eventdata, handles)
% hObject    handle to pa31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pa31 as text
%        str2double(get(hObject,'String')) returns contents of pa31 as a double


% --- Executes during object creation, after setting all properties.
function pa31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pa31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pr11_Callback(hObject, eventdata, handles)
% hObject    handle to pr11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pr11 as text
%        str2double(get(hObject,'String')) returns contents of pr11 as a double


% --- Executes during object creation, after setting all properties.
function pr11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pr11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w61_Callback(hObject, eventdata, handles)
% hObject    handle to w61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w61 as text
%        str2double(get(hObject,'String')) returns contents of w61 as a double


% --- Executes during object creation, after setting all properties.
function w61_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pa41_Callback(hObject, eventdata, handles)
% hObject    handle to pa41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pa41 as text
%        str2double(get(hObject,'String')) returns contents of pa41 as a double


% --- Executes during object creation, after setting all properties.
function pa41_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pa41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pr21_Callback(hObject, eventdata, handles)
% hObject    handle to pr21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pr21 as text
%        str2double(get(hObject,'String')) returns contents of pr21 as a double


% --- Executes during object creation, after setting all properties.
function pr21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pr21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q1_Callback(hObject, eventdata, handles)
% hObject    handle to q1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q1 as text
%        str2double(get(hObject,'String')) returns contents of q1 as a double


% --- Executes during object creation, after setting all properties.
function q1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w11_Callback(hObject, eventdata, handles)
% hObject    handle to w11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w11 as text
%        str2double(get(hObject,'String')) returns contents of w11 as a double


% --- Executes during object creation, after setting all properties.
function w11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double


% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function co1_Callback(hObject, eventdata, handles)
% hObject    handle to co1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of co1 as text
%        str2double(get(hObject,'String')) returns contents of co1 as a double


% --- Executes during object creation, after setting all properties.
function co1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to co1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function L_Callback(hObject, eventdata, handles)
% hObject    handle to L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of L as text
%        str2double(get(hObject,'String')) returns contents of L as a double


% --- Executes during object creation, after setting all properties.
function L_CreateFcn(hObject, eventdata, handles)
% hObject    handle to L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
set(handles.co1,'string','');
set(handles.w1,'string','');
set(handles.w2,'string','');
set(handles.a,'string','');
set(handles.q,'string','');
set(handles.pa,'string','');
set(handles.pa1,'string','');
set(handles.w3,'string','');
set(handles.co01,'string','');
set(handles.w4,'string','');
set(handles.pa2,'string','');
set(handles.pa3,'string','');
set(handles.w5,'string','');
set(handles.pr1,'string','');
set(handles.w6,'string','');
set(handles.pa4,'string','');
set(handles.pr2,'string','');

set(handles.co,'string','');
set(handles.w11,'string','');
set(handles.w21,'string','');
set(handles.b,'string','');
set(handles.q1,'string','');
set(handles.pa12,'string','');
set(handles.pa11,'string','');
set(handles.w31,'string','');
set(handles.po,'string','');
set(handles.w41,'string','');
set(handles.pa21,'string','');
set(handles.pa31,'string','');
set(handles.w51,'string','');
set(handles.pr11,'string','');
set(handles.w61,'string','');
set(handles.pa41,'string','');
set(handles.pr21,'string','');
axes(handles.axes1);
cla reset
axes(handles.axes2);
cla reset

% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
