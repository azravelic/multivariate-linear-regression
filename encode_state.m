function state_col = encode_state(state_col)

  for i = 1:length(state_col)
    if (strcmp(state_col(i),'New York'))
      state_col(i) = 1;
    elseif (strcmp(state_col(i),'California'))
      state_col(i) = 2;
    elseif(strcmp(state_col(i),'Florida'))
      state_col(i) = 3;
    else
      state_col(i) = 0;
    endif
  endfor
end

