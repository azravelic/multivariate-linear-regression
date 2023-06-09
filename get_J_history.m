
function J_history = get_J_history(theta, X, Y, iterations, alpha)

  J_history = zeros(iterations, 1);

  for it = 1:iterations

  deltas  = calculate_delta_j(theta, X, Y);
  theta = theta-(deltas'.*alpha);
  J_history(it) = calculate_cost(theta, X, Y);

  endfor



end
