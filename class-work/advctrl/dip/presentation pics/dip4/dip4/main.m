%load in the linearized system matrices generated by DIPdyn.m
load("getLinearizedSystem.mat",'-mat')
plots = 1;
[I1,I2,m1,m2,a1,a2,k1,k2] = getVars();

%this will give 4 transfer functions per input, we only care about the
%first 2! (the second two are joint vvelocities which we dont want)
pend = tf(ss(A2,B2,C2,D2)); %pend(i,j) is the jth variables effect on the ith ouput
size(pend)

if plots == 1
    figure();
    sgtitle("Unstabilized Root Loci");
    subplot(2,1,1)
    rlocus(pend(1,1))
    title("\tau_1 -> \theta_1")
    subplot(2,1,2)
    rlocus(pend(2,1))
    title("\tau_1 -> \theta_2")
    
    figure();
    bode(pend(1,1))
    title("Unstabilized Bode Plot (\tau_1 -> \theta_1)");
    figure();
    bode(pend(2,1))
    title("Unstabilized Bode Plot (\tau_1 -> \theta_2)");
    
    figure();
    sgtitle("Unstabilized Nyquist Plots")
    subplot(2,1,1)
    nyquist(pend(1,1))
    title("\tau_1 -> \theta_1");
    subplot(2,1,2)
    nyquist(pend(2,1))
    title("\tau_1 -> \theta_2");
end

%begin integrator
%choose a random downwards facing state to validate dynamics
x0 = [...
      (2*pi).*rand() - pi;
      (2*pi).*rand() - pi;
      0;
      0];
tspan = [0 10];
[t,y] = ode45(@fdbkCtrl,tspan,x0);

figure();
sgtitle("State Space Plots")
subplot(2,2,1);
title("\theta_1 vs \theta_2"); hold on
plot(y(:,1),y(:,2));
xlabel("\theta_1"); ylabel("\theta_2"); 
subplot(2,2,2)
title("\theta_1 vs d\theta_1"); hold on
plot(y(:,1),y(:,3));
xlabel("\theta_1"); ylabel("d\theta_2"); 
subplot(2,2,3)
title("\theta_2 vs d\theta_2"); hold on
plot(y(:,2),y(:,4));
xlabel("\theta_2"); ylabel("d\theta_2"); 
subplot(2,2,4)
title("d\theta_1 vs d\theta_2"); hold on
plot(y(:,3),y(:,4));
xlabel("d\theta_1"); ylabel("d\theta_2"); 

figure();
title("Cartesian Path by Joint (\theta_2 msrd from \theta_1!)"); hold on
plot(a1*sin(y(:,1)),-a1*cos(y(:,1)),'r-')
plot(a1*sin(y(:,1)) + a2*sin(y(:,2) + y(:,1)), -a1*cos(y(:,1)) - a2*cos(y(:,2) + y(:,1)),'b-')
ylim([-a1 - a2, a1 + a2])
xlim([-a1 - a2, a1 + a2])
legend("Joint 1","Joint 2")