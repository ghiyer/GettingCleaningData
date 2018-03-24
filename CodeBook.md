Assumptions:<br>
&nbsp;&nbsp;&nbsp;&nbsp;      The working directory contains the folder 'UCI_HAR_Dataset' with all the files and sub folders and they are not altered.<br>
<br>

Variables in Data File:<br>
&nbsp;&nbsp;&nbsp;&nbsp;      activity_label - lists the activities performed (LAYING, SITTING, STANDING, WALKIN, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)<br>
&nbsp;&nbsp;&nbsp;&nbsp;  features - lists the names of measurement feature (tBodyAcc.mean.X	tBodyAcc.mean.Y	tBodyAcc.mean.Z	tBodyAcc.std.X	tBodyAcc.std.Y	tBodyAcc.std.Z	tGravityAcc.mean.X	tGravityAcc.mean.Y	tGravityAcc.mean.Z	tGravityAcc.std.X	tGravityAcc.std.Y	tGravityAcc.std.Z	tBodyAccJerk.mean.X	tBodyAccJerk.mean.Y	tBodyAccJerk.mean.Z	tBodyAccJerk.std.X	tBodyAccJerk.std.Y	tBodyAccJerk.std.Z	tBodyGyro.mean.X	tBodyGyro.mean.Y	tBodyGyro.mean.Z	tBodyGyro.std.X	tBodyGyro.std.Y	tBodyGyro.std.Z	tBodyGyroJerk.mean.X	tBodyGyroJerk.mean.Y	tBodyGyroJerk.mean.Z	tBodyGyroJerk.std.X	tBodyGyroJerk.std.Y	tBodyGyroJerk.std.Z	tBodyAccMag.mean	tBodyAccMag.std	tGravityAccMag.mean	tGravityAccMag.std	tBodyAccJerkMag.mean	tBodyAccJerkMag.std	tBodyGyroMag.mean	tBodyGyroMag.std	tBodyGyroJerkMag.mean	tBodyGyroJerkMag.std	fBodyAcc.mean.X	fBodyAcc.mean.Y	fBodyAcc.mean.Z	fBodyAcc.std.X	fBodyAcc.std.Y	fBodyAcc.std.Z	fBodyAcc.meanFreq.X	fBodyAcc.meanFreq.Y	fBodyAcc.meanFreq.Z	fBodyAccJerk.mean.X	fBodyAccJerk.mean.Y	fBodyAccJerk.mean.Z	fBodyAccJerk.std.X	fBodyAccJerk.std.Y	fBodyAccJerk.std.Z	fBodyAccJerk.meanFreq.X	fBodyAccJerk.meanFreq.Y	fBodyAccJerk.meanFreq.Z	fBodyGyro.mean.X	fBodyGyro.mean.Y	fBodyGyro.mean.Z	fBodyGyro.std.X	fBodyGyro.std.Y	fBodyGyro.std.Z	fBodyGyro.meanFreq.X	fBodyGyro.meanFreq.Y	fBodyGyro.meanFreq.Z	fBodyAccMag.mean	fBodyAccMag.std	fBodyAccMag.meanFreq	fBodyBodyAccJerkMag.mean	fBodyBodyAccJerkMag.std	fBodyBodyAccJerkMag.meanFreq	fBodyBodyGyroMag.mean	fBodyBodyGyroMag.std	fBodyBodyGyroMag.meanFreq	fBodyBodyGyroJerkMag.mean	fBodyBodyGyroJerkMag.std	fBodyBodyGyroJerkMag.meanFreq)<br>
&nbsp;&nbsp;&nbsp;&nbsp;      subject files - lists of numbers from 1 to 30 representing people<br>
&nbsp;&nbsp;&nbsp;&nbsp;      x files - lists of measurements for each feature<br>

Variables in Run_Analysis:<br>
&nbsp;&nbsp;&nbsp;&nbsp;accelerometerData - Merged data set with records from 'test' and 'train'<br>
      &nbsp;&nbsp;&nbsp;&nbsp;activities - Data set containing the activity_labels<br>
      &nbsp;&nbsp;&nbsp;&nbsp;colNms - Contains the dscriptive names of 'features'<br>
      &nbsp;&nbsp;&nbsp;&nbsp;destinationFolder - Folder containing the project files <br>
&nbsp;&nbsp;&nbsp;&nbsp;      features - Data set containing the features<br>
      &nbsp;&nbsp;&nbsp;&nbsp;filesTest - List of file paths in 'test' folder<br>
      &nbsp;&nbsp;&nbsp;&nbsp;filesTrain - List of file paths in 'train' folder<br>
      &nbsp;&nbsp;&nbsp;&nbsp;fTst3 - Temporary data set whose column values are descriptive activity labels<br>
      &nbsp;&nbsp;&nbsp;&nbsp;meanStdIndices - Index values of columns containing 'mean' or 'std' in the merged data set <br>
      &nbsp;&nbsp;&nbsp;&nbsp;subFolders - Path to the folders 'test' and 'train'<br>
      &nbsp;&nbsp;&nbsp;&nbsp;subsetData - Data set containing only the measurements on the mean and standard deviation<br>
      &nbsp;&nbsp;&nbsp;&nbsp;testData - Full data set of 'test' containing the subject, activity and the measurements<br>
      &nbsp;&nbsp;&nbsp;&nbsp;testFileData - List of data sets for each file in 'test' folder<br>
      &nbsp;&nbsp;&nbsp;&nbsp;tidyData - Cleaned up data set of subsetData containing the average of each measurement for each activity and each subject<br>
      &nbsp;&nbsp;&nbsp;&nbsp;trainData - Full data set of 'train' containing the subject, activity and the measurements<br>
      &nbsp;&nbsp;&nbsp;&nbsp;trainFileData - List of data sets for each file in 'train' folder<br>
      &nbsp;&nbsp;&nbsp;&nbsp;variables - List of files in the destinationFolder (activity_labels, features)<br>
<br>

File Information:<br>

      activity_label - Data regarding Activities and its corresponding number <br>
      features - Data regarding measurement Features<br>
      subject files - Data listing the Subjects <br>
      x files - Data regarding Measurements taken for the activities performed by the subjects<br>
      y files - Data regarding Activities performed by the subjects (non-descriptive)<br>


