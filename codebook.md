## Codebook - 'Tidydata.txt'  
The script "run_analysis.R" reads the raw files and transforms to "TidyData.txt" output file. Processing steps are follows:

1. Merge train and test data sets to a single data set
    + Download and read the raw data files
    + Prepare data sets for train and test data
    + Merge/combine train and test data sets into single data set 
2. Extract measurements - mean and standard deviation for each activity and subject
    + Identify required measurements
    + Create a data set with only required measurements
3. Assign descriptive names to the activity numbers in the data set
4. Assign meaningful variable names to the measurements.
    + Acc replaced with Acceleration
    + GyroJerk replaced with Angular velocity jerk
    + BodyBody replaced with Body
    + Mag replaced with Magnitude
    + Character f replaced with Frequency domain signal:
    + Character t replaced with Time domain signal:
5. Create a tidy data set with averages for each activity and subject.
 
### Description of the variables from 'TidyData.txt'
 
The first 3 variables, 'subject','activity' and activity index
can uniquely identify each row in the file. 
The rest of variables, are the averages for some selected features, namely means and standard deviations,
from the original dataset: 'Human Activity Recognition Using Smartphones Dataset'.


Column | Data Element | Type
---------|-------------|---------------------------
1 | Activity | Character
2 | Subject | Numeric
3 | ActivityIndex | Numeric
4 | Time domain signal: Body acceleration,  mean value in X direction | Numeric
6 | Time domain signal: Body acceleration,  mean value in Y direction | Numeric
7 | Time domain signal: Body acceleration,  mean value in Z direction | Numeric
8 | Time domain signal: Body acceleration,  standard deviation in X direction | Numeric
9 | Time domain signal: Body acceleration,  standard deviation in Y direction | Numeric
10 | Time domain signal: Body acceleration,  standard deviation in Z direction | Numeric
11 | Time domain signal: Gravity acceleration,  mean value in X direction | Numeric
12 | Time domain signal: Gravity acceleration,  mean value in Y direction | Numeric
13 | Time domain signal: Gravity acceleration,  mean value in Z direction | Numeric
14 | Time domain signal: Gravity acceleration,  standard deviation in X direction | Numeric
15 | Time domain signal: Gravity acceleration,  standard deviation in Y direction | Numeric
16 | Time domain signal: Gravity acceleration,  standard deviation in Z direction | Numeric
17 | Time domain signal: Body acceleration jerk,  mean value in X direction | Numeric
18 | Time domain signal: Body acceleration jerk,  mean value in Y direction | Numeric
19 | Time domain signal: Body acceleration jerk,  mean value in Z direction | Numeric
20 | Time domain signal: Body acceleration jerk,  standard deviation in X direction | Numeric
21 | Time domain signal: Body acceleration jerk,  standard deviation in Y direction | Numeric
22 | Time domain signal: Body acceleration jerk,  standard deviation in Z direction | Numeric
23 | Time domain signal: Body angular velocity,  mean value in X direction | Numeric
24 | Time domain signal: Body angular velocity,  mean value in Y direction | Numeric
25 | Time domain signal: Body angular velocity,  mean value in Z direction | Numeric
26 | Time domain signal: Body angular velocity,  standard deviation in X direction | Numeric
27 | Time domain signal: Body angular velocity,  standard deviation in Y direction | Numeric
28 | Time domain signal: Body angular velocity,  standard deviation in Z direction | Numeric
29 | Time domain signal: Body angular velocity jerk,  mean value in X direction | Numeric
30 | Time domain signal: Body angular velocity jerk,  mean value in Y direction | Numeric
31 | Time domain signal: Body angular velocity jerk,  mean value in Z direction | Numeric
32 | Time domain signal: Body angular velocity jerk,  standard deviation in X direction | Numeric
33 | Time domain signal: Body angular velocity jerk,  standard deviation in Y direction | Numeric
34 | Time domain signal: Body angular velocity jerk,  standard deviation in Z direction | Numeric
35 | Time domain signal: Body acceleration magnitude,  mean value | Numeric
36 | Time domain signal: Body acceleration magnitude,  standard deviation | Numeric
37 | Time domain signal: Gravity acceleration magnitude,  mean value | Numeric 
38 | Time domain signal: Gravity acceleration magnitude,  standard deviation | Numeric
39 | Time domain signal: Body acceleration jerk magnitude,  mean value | Numeric
40 | Time domain signal: Body acceleration jerk magnitude,  standard deviation | Numeric
41 | Time domain signal: Body angular velocity magnitude,  mean value | Numeric
42 | Time domain signal: Body angular velocity magnitude,  standard deviation | Numeric
43 | Time domain signal: Body angular velocity jerk magnitude,  mean value | Numeric
44 | Time domain signal: Body angular velocity jerk magnitude,  standard deviation | Numeric
45 | Frequency domain signal: Body acceleration,  mean value in X direction | Numeric
46 | Frequency domain signal: Body acceleration,  mean value in Y direction | Numeric
47 | Frequency domain signal: Body acceleration,  mean value in Z direction | Numeric
48 | Frequency domain signal: Body acceleration,  standard deviation in X direction | Numeric
49 | Frequency domain signal: Body acceleration,  standard deviation in Y direction | Numeric
50 | Frequency domain signal: Body acceleration,  standard deviation in Z direction | Numeric
51 | Frequency domain signal: Body acceleration jerk,  mean value in X direction | Numeric
52 | Frequency domain signal: Body acceleration jerk,  mean value in Y direction | Numeric
53 | Frequency domain signal: Body acceleration jerk,  mean value in Z direction | Numeric
54 | Frequency domain signal: Body acceleration jerk,  standard deviation in X direction | Numeric
55 | Frequency domain signal: Body acceleration jerk,  standard deviation in Y direction | Numeric
56 | Frequency domain signal: Body acceleration jerk,  standard deviation in Z direction | Numeric
57 | Frequency domain signal: Body angular velocity,  mean value in X direction | Numeric
58 | Frequency domain signal: Body angular velocity,  mean value in Y direction | Numeric
59 | Frequency domain signal: Body angular velocity,  mean value in Z direction | Numeric
60 | Frequency domain signal: Body angular velocity,  standard deviation in X direction | Numeric
61 | Frequency domain signal: Body angular velocity,  standard deviation in Y direction | Numeric
62 | Frequency domain signal: Body angular velocity,  standard deviation in Z direction | Numeric
63 | Frequency domain signal: Body acceleration magnitude,  mean value | Numeric
64 | Frequency domain signal: Body acceleration magnitude,  standard deviation | Numeric
65 | Frequency domain signal: Body acceleration jerk magnitude,  mean value | Numeric
66 | Frequency domain signal: Body acceleration jerk magnitude,  standard deviation | Numeric
67 | Frequency domain signal: Body angular velocity magnitude,  mean value | Numeric
68 | Frequency domain signal: Body angular velocity magnitude,  standard deviation | Numeric
69 | Frequency domain signal: Body angular velocity jerk magnitude,  mean value | Numeric
70 | Frequency domain signal: Body angular velocity jerk magnitude,  standard deviation | Numeric

