# Multivariate Linear Regression

# Dataset
We will use the online dataset : https://www.kaggle.com/datasets/karthickveerakumar/startup-logistic-regression?resource=download to figure out how much money the startup will make based on four factors.
The dataset will be available on the LMS and will be called startups.txt. The parameters of the dataset
are:
1. R&D spend - money spent in the research in development for the startup
2. Administration - money spent for the administration of the startup
3. Marketing Spend - money spent for the marketing of the startup
4. State - Location of the startup

# Assignment 1
The first step is to load the given txt file in the Octave programming environment and preprocess our data.
You should write a function that uses the encoding technique to change the values of the State feature to
numbers, where “New York” will become 1, “California” will become 2, and “Florida” will become 3.
Also, you should perform feature normalization, this time by using the mean and std build-in functions
not by iterating through every training example.

# Assignment 2
You have to add one more column to your X vector of ones. You can do that by using the following code:
X = [ones(length(X), 1), X];
By doing this, now the cost function and the function to calculate the first derivative becomes one liner
code functions because the dimensions of the feature matrix X (50 x 5) and the theta parameters q (5 x 1)
are now satisfying the property of matrices that are needed in order to multiply them (number of columns
in first matrix should be equal to the number of rows in the second matrix)

# Assignment 3
In this step, you should create two functions. The first function is called calculate_cost, which will accept
as parameters theta, X, and Y and return the cost function for a given hypothesis. The second function that
you should create is called calculate_delta_j, which will again accept the same parameters as the first
function, namely theta, X, and Y, and it returns the value of the first partial derivative that is needed for
the update of our theta parameters. It is important to notice that the result of the calculate_delta_j function
will be a [5x1] matrix, and that is important in order to be able to update the theta vector in one line.

# Assignment 4
As a last step, you should create a plot of your cost function as a function of the number of iterations.
