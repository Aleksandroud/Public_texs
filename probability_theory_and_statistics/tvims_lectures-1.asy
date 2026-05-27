if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="tvims_lectures-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(11cm);

import graph;

real f(real x)
{
return exp(-x^2/2)/sqrt(2*pi);
}

real a=-1.7;
real b=1.7;

draw((-2.5,0)--(2.6,0), Arrow);
label("$x$", (2.5,0), S);
draw((0,-0.2)--(0,1), Arrow);
label("$y$", (0,1), W);

draw(graph(f,-2.5,2.5), black+1bp);

fill(graph(f,a,b)--(b,0)--(a,0)--cycle,
lightgray);

draw((a,0)--(a,f(a)), black);
draw((0,0)--(0,f(0)), black);
draw((b,0)--(b,f(b)), black);

dot((a,0));
dot((b,0));
label("$\alpha/2$", (a,0.17), W);
label("$\alpha/2$", (b,0.17), E);
label("$S = \gamma$", (0,0.17), W);

label("$z_{\alpha/2}$", (a,0), S);
label("$z_{1-\alpha/2}$", (b,0), S);

label("$f_{G(X_1,\ldots,X_n,\mu)}(x)$",
(0.2,0.43),
NE);

draw((0,0)--(0,0.42), dashed);

