# SepiaPets

This app is build to achieve the tasks metioned in the Sheet. The initialViewController acts as the root View Controller of the application. We may have two flows from this VC depending on the current Date of the system. The two workflows are - 

1) The current Date is outside the allowed bounds. In this case I am showing a non dismissable alert so that the user does not has to see an empty screen while accessing the application. The app message contains a Customs message asking the user to try and access the app in the working hours.
2) The Current Date is within the allowed bounds. In this case we will move to the Listing VC where we will have a list of pets from the Json file shared. 

# Pets View Controller

This VC contains the table view showing the list of the pets. I have kept the Height of the table view row dynamic based on the device i.e the height is more in the case of ipads. The cells display the images(the images have been scaled to fill but since the aspect of all the images were different few images are being cut off) and the title of the pet. 

We also have selection action for the cells. Whenever a cell is clicked the app opens a SafariVC within the application redirecting the user to the URL in respect to the cell selected.

# Pets View Model

In View model we are parsing the Json file into a NSDictionary and then using the dictionary to initalize the array of the data model. 

# Practiced Good Coding Practices

I have tried and followed good coding practies such as adding comments, Marks, Nomunclature and also kept it in mind while naming the functions in the Test class. Although I have not included Swift Lint but have followed the lint practices I am following in my current project. I have also kept in mind to prevent warnings and to avoid forced unwrapping.

# Test cases

I have written test cases for all the View Controller, View model and model. I haven’t written the test cases for the Table View as I haven’t made a seperate View for it(but this reduced my coverage). Tried to cover both positive and negative cases. 

# Things that could be included

SIRI could be a nice Accessibility inclusion for this project. I have worked with media intents i.e. "Play" command so it would have taken me more then the given time if I tried the "Open" command for SIRI. But I have a work plan on how it can be used in this project. 

The command would have been Hey Siri, Open <Pet Name> in <App Name>. Here the <Pet Name> will be the key on which the application will work. We will have three cases moving on from here, namely -

1) The Current time is out of the given bounds. We will have the alert once the app opens.

2) The current app is within the app given bounds. Here we will have two sub cases -
  a) The serched keyword doesnt exist in our data model. - In this case we will get a alert stating the same that the searched keyword doesnt exists.
  b) The searched keyword exists in our data model. - In this case we will redisrect the user to the Safari VC within our application. 
  
# Improvements and Future Scope

We have multiple future scope in this demo. Few of them are mentioned below - 
1) The table View font needs to be device dynamic.
2) The image is taking a lot of time loading so the VC is taking a lot of time to be visible. This can be improved.
3) The test case coverage can be improved by including the test cases for the table View. 
4) The overall UI can be made more user friendly depending on the user demographics
5) I haven’t used any third party integrations but they can used if required. 
