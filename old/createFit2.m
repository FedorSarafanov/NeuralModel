% tdfread('/home/lab/neiro/data/img2.tsv','\t')
% [xData, yData] = prepareCurveData(x, y2);
% ft = fittype( 'smoothingspline' );
% [fitresult, gof] = fit( xData, yData, ft );
% 
xx=0:0.01:2.5;
% y=fitresult(x);
yy=fittedmodel(xx);
yy1=fittedmodel1(xx);
yy2=fittedmodel2(xx);
plot(xx,yy,xx,yy1,xx,yy2)

fid = fopen('/home/lab/neiro/data/ris7.tsv', 'wt+');
fprintf(fid, 'x\ty1\ty2\ty3\n','');
for i=1:1:length(xx)
    fprintf(fid, '%g\t%g\t%g\t%g\n', [xx(i) yy(i) yy1(i) yy2(i)]);
end
fclose(fid);