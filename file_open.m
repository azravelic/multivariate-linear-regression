function data =  file_open(filename)
  fid = fopen(filename, 'r');
  data = textscan(fid, '%s%s%s%s%s', 'delimiter', ',');
  fclose(fid);
end
