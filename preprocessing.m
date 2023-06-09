data = file_open('startups.txt');

x4 = str2double(encode_state(ndata{1,4}));
ndata = normalize(data);

Y  = str2double(data{1,5});
m = length(Y);
x0 = ones(m,1);
x1 = str2double(data{1,1});
x2 = str2double(data{1,2});
x3 = str2double(data{1,3});
X = [x0, x1, x2, x3, x4];

theta = zeros(5,1);  #5x1 matrix
iterations = 200;
alpha  = 0.01;

J_history = get_J_history(theta, X, Y, iterations, alpha);
plot_cost(iterations, J_history);
