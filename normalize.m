function ndata = normalize(data)

  cols = length(data); #5
  ndata = {};
  for i = 1:cols
    if(i~=4)
      old = str2double(data{1,i});
      mean_value = mean(old ,"omitnan");
      sdev = std(old);
      normalized= (old-mean_value)./sdev;
      ndata{1,i} = num2cell(normalized);
    elseif (i==4)
      ndata{1,i};
    endif

  endfor

end
