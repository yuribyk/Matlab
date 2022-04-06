clear all;clf;clc;
plot(100,100);axis equal;hold on;

x1 = 800;
x2 = 1400;

sqxa = zeros(1,x2-x1+1);
sqxa = sqxa +x1;

sqxb = linspace(x1,x2,x2-x1+1);

sqxc = zeros(1,x2-x1+1);
sqxc = sqxc +x2;

sqxd = linspace(x2,x1,x2-x1+1);

sqx = [sqxa,sqxb,sqxc,sqxd];
sqx2 = [sqx,sqx,-sqx,-sqx];

sqy = [sqxd,sqxa,sqxb,sqxc];
sqy2 = [sqy,-sqy,-sqy,sqy];

sqz = zeros(1,(x2-x1+1)*4);
sqz2 = [sqz,sqz,sqz,sqz];

for z = 0:50
    plot3(sqx2,sqy2,sqz2,'.');
    sqz2 = 1+sqz2;
end


%from pedastel
x1 = 900;
x2 = 1300;

sqxa = zeros(1,x2-x1+1);
sqxa = sqxa +x1;

sqxb = linspace(x1,x2,x2-x1+1);

sqxc = zeros(1,x2-x1+1);
sqxc = sqxc +x2;

sqxd = linspace(x2,x1,x2-x1+1);

sqx = [sqxa,sqxb,sqxc,sqxd];
sqx2 = [sqx,sqx,-sqx,-sqx];

sqy = [sqxd,sqxa,sqxb,sqxc];
sqy2 = [sqy,-sqy,-sqy,sqy];

sqz = zeros(1,(x2-x1+1)*4);
sqz2 = 50+[sqz,sqz,sqz,sqz];

for z = 0:40
    plot3(sqx2,sqy2,sqz2,'.');
    sqz2 = 1+sqz2;
end


%arches DC
x1 = 1300;
x2 = 900;
res = 10000;
theta = linspace(-pi/2,pi/2,res);
archx = (x1-810)*cos(theta);
archy = x2*sin(theta);
archz = x2*(cos(theta));

plot3(archx-x1,archy,archz+90,'.');
plot3(-(archx-x1),archy,archz+90,'.');
plot3(archy,archx-x1,archz+90,'.');
plot3(archy,-(archx-x1),archz+90,'.');



%lines2FirstFloor
x1 = 1300;x2 = 750;res = 1000;h = 1100;
z = linspace(90,h,res);
x = linspace(x1,x2,res);
linx = [x,x,-x,-x];
liny = [x,-x,-x,x];
z = [z,z,z,z];

plot3(linx,liny,z,'.');

%first floor
res = 10;
x = linspace(-x2,x2,res);
y = linspace(-x2,x2,res);
height = linspace(1100,1300,1);


x1 = 750;
x = zeros(1,x1+1)+750;
s = linspace(-x1,x1,x1+1);
sqx = [-x,s,x,-s];
sqy = [-s,x,s,-x];

sqz = zeros(1,(x1+1)*4)+ 1100;

for z = 0:200
    plot3(sqx,sqy,sqz,'.');
    sqz = 1+sqz;
end














