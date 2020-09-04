g=zeros(length(p)-1,1);
for j=1:length(p)-2
    q=path(j+1,1)-path(j,1);
    g(j+1,1)=q;
end
g(1,1)=path(1,1);
motion=[g path(:,2)];
motion2time=zeros(length(p)-1,2);
for k=1:length(motion)
    tr=motion(k,1)/omega;
    tf=motion(k,2)/v;
    motion2time(k,1)=tr;
    motion2time(k,2)=tf;
end
disp(motion2time)