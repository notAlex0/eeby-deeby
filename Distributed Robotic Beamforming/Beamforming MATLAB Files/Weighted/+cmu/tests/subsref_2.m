a = [1.1 2.1 3.1 4.1 5.1]

a([1 3 5])

u = cmu.units;
a = [1.1 2.1 3.1 4.1 5.1]*u.s

a(:,[1 3 5]) = 5*u.s
