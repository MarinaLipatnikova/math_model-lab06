model lab06
parameter Real a = 0.01;
parameter Real b = 0.02;
parameter Real N = 12600;
parameter Real I0 = 160;
parameter Real R0 = 56;
parameter Real S0 = N - I0 - R0;

Real S1(start=S0);
Real I1(start=I0);
Real R1(start=R0);
Real S2(start=S0);
Real I2(start=I0);
Real R2(start=R0);
equation
//случай для I(t)>I

der (S1) = -a*S1;
der (I1) = a*S1 - b*I1;
der (R1) = b*I1;
//случай для I(t)<=I
der (S2) = 0;
der (I2) = - b*I2;
der (R2) = b*I2;
end lab06;
