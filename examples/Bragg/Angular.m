% This program can compute the reflection and transmission coefficients
% as a function of the incidence angle, as well as the absorption in a
% specified layer.

clear all
clf
%addpath('data/:');

% >>>>>>>>>>>>>>>>>>> Parameters <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
% Number of the layer where the absorption has to be computed
Layer=2;
% Workgin wavelength
lambda=600;
% Polarization - 0 means s or TE; 1 means p or TM.
polarization=1;
% Angular range in degrees here
min=0;
max=89;
% Number of points
Npoints=200;
%_____________________________________________________________________


% Structure geometrical parameters
structure

%Ab=zeros(Npoints,length(Type));
theta=linspace(min,max,Npoints);

for k=1:Npoints		

% If only the reflection coefficient is important, use coefficient() instead
	[r(k),R(k),t(k),T(k)]=coefficient(theta(k)*pi/180,lambda,polarization);

end

% >>>>>>>>>>>>>>>>>>>   Vizualization   <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

figure(1)

subplot(2,1,1)
plot(theta,R,'linewidth',2),ylabel('Reflexion'),xlabel('Angle'),title('Reflection');

subplot(2,1,2)
plot(theta,angle(r),'linewidth',2),ylabel('Phase (in radians)'),xlabel('Angle in degree'),title('Phase of the reflection coefficient');

% For test reasons - R+T+Absorption = 1
% R+T+Ab(:,Layer).'-1
