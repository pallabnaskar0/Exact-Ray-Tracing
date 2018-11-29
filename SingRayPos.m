function[xc,yc,zc]=SingRayPos(yi, Ni)
d3=100;
%x=0;


zc(1)=0;
yc(1)=yi;

y=yc(1);
z=zc(1)-80;

L=0;
M=0;
N=Ni;
n=1;
np=1.515;
R=inf;

[xp,yp,zp,Lp,Mp,Np]=singray_er(y,z,L,M,N,R,n,np);
xc(2)=xp;
yc(2)=yp;
zc(2)=zp+80;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
y=yc(2);
z=zc(2)-88.6;
L=Lp;
M=Mp;
N=Np;
np=1;
n=1.52;
R=-15.5;
[xp,yp,zp,Lp,Mp,Np]=singray_er(y,z,L,M,N,R,n,np);
xc(3)=xp;
yc(3)=yp;
zc(3)=zp+ 88.6;
%%%%%%%%%%%%%%%%%%%%%%%%%%%
y=yc(3);
z=zc(3)-90;
L=Lp;
M=Mp;
N=Np;
n=1;
np=1.52;
R=inf;
[xp,yp,zp,Lp,Mp,Np]=singray_er(y,z,L,M,N,R,n,np);
xc(4)=xp;
yc(4)=yp;
zc(4)=zp+ 90;
%%%%%%%%%%%%%%%%%%%%
y=yc(4);
z=zc(4)-96.4;
L=Lp;
M=Mp;
N=Np;
np=1;
n=1.52;
R=-20.6;
[xp,yp,zp,Lp,Mp,Np]=singray_er(y,z,L,M,N,R,n,np);
xc(5)=xp;
yc(5)=yp;
zc(5)=zp+ 96.4;
%%%%%%%%%%%%%%%%%%%
xc(6)=xc(5)+d3*Lp;
yc(6)=yc(5)+d3*Mp;
zc(6)=zc(5)+d3*Np;


