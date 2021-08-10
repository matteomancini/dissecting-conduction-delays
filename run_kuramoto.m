% Script to run the Kuramoto simulations
%
% Requires NetworkModel_Toolbox from:
% https://github.com/matteomancini/NetworkModel_Toolbox

load('group_cmat.mat');
seed = 1;
lambda = 0.1:0.1:10;
f = 40;
dt = 0.001;
tmax = 1;
nsim = 100;
C = cmat > 0;
N = length(C);
% delay distribution
D = dmat;
% alternatively, constant conduction velocity
%v = 13.42;
%D = lmat / v;
theta = zeros(N,floor(tmax/dt),length(lambda));
rmean = zeros(100,nsim);
rstd = zeros(100,nsim);
for kk = 1:nsim
    disp(['Sim ' num2str(kk)]);
    for l = 1:length(lambda)
        theta(:,:,l) = Kuramoto_Delays(C,D,f,lambda(l),dt,tmax,seed);
    end
    r = zeros(floor(tmax/dt),length(lambda));
    for l = 1:length(lambda)
        r(:,l) = abs(sum(exp(1i*theta(:,:,l)),1)/N);
    end
    rmean(:,kk) = mean(r(301:700,:));
    rstd(:,kk) = std(r(301:700,:));
end
figure(1), hold on, plot(lambda,mean(rmean,2));
figure(2), hold on, plot(lambda,mean(rstd,2));
