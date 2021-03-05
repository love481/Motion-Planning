function flag = triangle_intersection(P1, P2)
% triangle_test : returns true if the triangles overlap and false otherwise
m=size(P1,1);
n=size(P2,1);
%%% All of your code should be between the two lines of stars.
% *******************************************************************
checking=6;
count=0;
for i=1:m,
        if inpolygon(P1(i,1),P1(i,2),P2(:,1),P2(:,2))==0,
            count=count+1;
        end
        if inpolygon(P2(i,1),P2(i,2),P1(:,1),P1(:,2))==0,
            count=count+1;
        end
end
if count==checking,
    flag=false;
else
    flag = true;
end


% *******************************************************************
end