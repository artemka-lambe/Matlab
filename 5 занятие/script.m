N = out.N.Data;
M = out.M.Data;


Nt = (2/3) * 7910
[~, idx]= min(abs(N-Nt))
Mt = M(idx);
figure;
plot(N,M, 'k-');
hold on;
xline(Nt,'r--');
plot(Nt,Mt,'ro');
text(Nt,Mt, sprintf('M=%.1f, n=%.0f', Mt, Nt))
