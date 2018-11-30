function x = InverseTransform(p)
F=cumsum(p);
u=rand;
x=find(u<F,1,'first');

end

