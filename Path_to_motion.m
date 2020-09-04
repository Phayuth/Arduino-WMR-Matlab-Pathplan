%Input Path
p=[0 0;1 1;2 1;2 2;3 2;3 3;4 3;4 4;5 5;5 0];
a=p(:,1);
b=p(:,2);
%Input Constant
omega=0.0872665; %rotation velocity rad/s
v=0.05;   %linear velocity m/s

%motion matrix pre-allocate
path=zeros(length(p)-1,2);

%Calculation path to motion planning
%Motion Sequence,  Heading => Forward
for i=1:length(p)-1
    %path p(x y)
    xc=p(i,1);
    xf=p(i+1,1);
    yc=p(i,2);
    yf=p(i+1,2);
    
    %find theta and distance
    theta=atan((yf-yc)/(xf-xc));
    d=sqrt(((yf-yc)^2)+((xf-xc)^2));
    
    %write (tr tf) to m
    path(i,1)=theta;
    path(i,2)=d;  
end
disp('     rad     distance')
disp(path)
