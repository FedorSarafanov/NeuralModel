function untitled(a,b)
fid = fopen('/home/lab/neiro/data/img_8d.tsv', 'wt+');
fprintf(fid, 'x\ty\n','1');
for i=1:1:length(a)
    fprintf(fid, '%g\t%g\n', [a(i) b(i)]);
end
fclose(fid);
end