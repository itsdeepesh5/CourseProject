==================================================================
Tidy Data creation for data collected using Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================

Tidy dataset Programmin - 
DRana

Original Dataset - 

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================


The Test and Training data was combined and cleaned using R programming -run_analytics.R

Following steps have been performed to clean and create a Tidy dataset -
1. Copy Samsung Data set into the working directory
2. Read both Training and Test data set, subjects, activity labels into R objects
3. Appropriately labels the data set with descriptive variable names using colnames 
4. Add subjects details to x_test and x_train objects
5. Add Activity details to x_test and x_train objects
6. Merge both Test and Training dataset into one oject
7. Join Merged dataset with Activity labels  using left_join on Activity ID - This will help all activity to use Activity Labels instead of IDs
8. Search all column with colnames include word "mean" OR "std" i.e. Average and Standard Deviation 
9. Add "SubjectID", "ActivityLabelName" and all mean and std column 
10. Assign a groupby function for "SubjectID" and "ActivityLabelName" and calculate the mean for rest of the columns using summarise each


For each record it is provided: 
======================================
   

The Tiday dataset includes the following files:
=========================================
MyTidyData_CourseProject.txt
README.md
CookBook.pdf

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
