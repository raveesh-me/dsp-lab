%discrete time ramp function delayed by 3 units
subplot(3,3,1)
for t = -5:5;
  if (t>3)
    y=t-3;
  else
    y = 0;
  end
  stem(t,y);
  hold on;
end
title('Discrete ramp with 3 unit delay');
xlabel('time in seconds');
ylabel('amplitude');
axis([-10 10 -5 5]);

%Discrete ramp advanced by 2 units
subplot(3,3,2)
for t = -5:5;
  if(t>-2)
    y = t+2;
  else
    y = 0;
  end
  stem(t,y);
  hold on;
end
title('Discrete ramp with 2 unit advance');
xlabel('time in seconds');
ylabel('amplitude');
axis([-10 10 -3 7]);

%Discrete time triangular width = 2 units symmetric about y, max amp = 1
subplot(3,3,3);
fw = 2;
w = fw/2;
h = 1;
s = h/w;
for t = -5:5;
  if(t >= -w && t<0)
    y = (t*s) + h;
  elseif(t<= w && t>=0)
    y = h - (t*s);
  else
    y = 0;
  end
  stem(t,y);
  hold on;
end
title('Discrete triangle centered around `Y`');
xlabel('time in seconds');
ylabel('amplitude');
axis([-5 5 -1 2]);

%Time reversal operation on a randomly generated sequence
T = 10
x = floor(10*rand(21));
for t = -T:T;
  i = t+11;
  subplot(3,2,3)
  stem(t, x(i));
  hold on;
  grid on;
  title('random selection');
  xlabel('time in seconds');
  ylabel('amplitude');
  subplot(3,2,4)
  stem(-t, x(i));
  hold on;
  grid on;
  title('time reversal on random selection');
  xlabel('time in seconds');
  ylabel('amplitude');
end

