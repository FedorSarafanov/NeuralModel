% tdfread('/home/lab/neiro/data/img2.tsv','\t')
% [xData, yData] = prepareCurveData(x, y2);
% ft = fittype( 'smoothingspline' );
% [fitresult, gof] = fit( xData, yData, ft );
% 
xx=0.2:0.01:2.8;
% y=fitresult(x);
yy=fittedmodel4(xx);
% yy1=fittedmodel1(xx);%
% yy2=fittedmodel2(xx);.
% plot(xx,yy,xx,yy1,xx,yy2)

fid = fopen('/home/lab/neiro/data/cub.tsv', 'wt+');
fprintf(fid, 'x\ty\n','');
for i=1:1:length(xx)
    fprintf(fid, '%g\t%g\n', [xx(i) yy(i)]);
end
fclose(fid);