**Tidy Data creation for data collected using Human Activity Recognition Using Smartphones Dataset (Version 1.0)**

*Tidy dataset Programming by  itsdeepesh5*


The Test and Training data was combined and cleaned using R programming - **run_analytics.R**

R file *run_analytics.R* can be executed after putting dataset in the working directory

Following steps have been performed to clean and create a Tidy dataset :-
- Copy Samsung Data set into the working directory
- Import required library dplyr and data.table
- Read both Training and Test data set, subjects, activity labels into R objects
- Appropriately labels the data set with descriptive variable names using colnames 
- Add subjects details to x_test and x_train objects as a new variable in a data frame using cbind
- Add Activity details to x_test and x_train objects as a new variable in a data frame using cbind
- Merge both Test and Training dataset into one object using rbind
- Join Merged dataset with Activity labels  using left_join on Activity ID - This will help all activity to use Activity Labels instead of IDs
- Search all columns where heading includes word "mean" OR "std" i.e. Average and Standard Deviation 
- Add "SubjectID", "ActivityLabelName" and all mean and std column  in to the new data frame
- Assign a groupby function for "SubjectID" and "ActivityLabelName" and calculate the mean for rest of the columns using summarise each function


The Tiday dataset includes the following files:

- MyTidyData_CourseProject.txt
- README.md
- CookBook.pdf

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
