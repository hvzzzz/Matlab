syms u v
eqns = [(3+3i)*u + (-3i)*v == 10+10i, (3-3i)*u + v*i == 0];
vars = [v u];
[solv, solu] = solve(eqns, vars);
solutions = [solv solu]