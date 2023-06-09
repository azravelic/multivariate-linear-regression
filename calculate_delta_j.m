function D = calculate_delta_j(theta, X, Y)
  [rows, cols] = size(X);
  m = length(Y);
  h = X*theta;
  D = [];
  for j = 1:length(theta)
    D(j)=(1/m)*sum((h-Y).*X(:,j));
  endfor
end
