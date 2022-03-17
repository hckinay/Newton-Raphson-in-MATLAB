%ingredients
f = @(x) x^2 + 1,8*x + 2,5;
df = @(x) 2*x + 1,8;
e = 10^-4;
x0 = 0;
n = 30;

%processing
if df(x0)~=0
    for i=1:n
        x1=x0 - f(x0)/df(x0);
        fprintf('x%d = %.6f\n',i,x1)
        if abs(x1-x0)<e
            break
        end
        if df(x1)==0
            disp('Newton Raphson failed')
        end
        x0 = x1;
    end
else
    disp('Newton Raphson failed');
end