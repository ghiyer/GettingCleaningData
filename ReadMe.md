Project:<br>
The course project is to get and clean a data set and obtain a tidy subset data. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

Prerequisite:<br>
The zip file from the course has been downloaded, unzipped in the working directory and and has not been altered.

R Script - Run_Analysis:<br>
The R script gets the data from the required folder annd performs the following functions<br>
&nbsp;&nbsp;&nbsp;&nbsp;	Merges the training and the test sets to create one data set.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		- Column binds (cbind) all data sets namely subject, x and y in each subfolder 'test' and 'train'<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Row binds (rbind) the data sets from the above step to get a single dat aset<br>
    	&nbsp;&nbsp;&nbsp;&nbsp;Uses descriptive activity names to name the activities in the data set.<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Matches the descriptive activity name from 'activity_label' file <br>		
    	&nbsp;&nbsp;&nbsp;&nbsp;Extracts only the measurements on the mean and standard deviation for each measurement.<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Gets a subset of the full data set. Uses grep function for matching the patterns.<br>
    	&nbsp;&nbsp;&nbsp;&nbsp;Appropriately labels the data set with descriptive variable names.<br>
		&nbsp;&nbsp;&nbsp;&nbsp;- Matches the descriptive feature name from 'features' file<br>
    	&nbsp;&nbsp;&nbsp;&nbsp;From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Groups the measurements by each subject and each activity and finds the average for each measurement variable<br>