fid = fopen('/home/lab/neiro/data/cub.tsv', 'wt+');
fprintf(fid, 'x\ty\n','');
for i=1:1:length(xx)
    fprintf(fid, '%g\t%g\n', [xx(i) yy(i)]);
end
fclose(fid);