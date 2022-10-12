*** Variables ***

${url}         http://127.0.0.1:4723/wd/hub
${PlatFormName}      Android
#We'll need to find the Android version that the eHub is using.
${PlatFormVersion}   7.1.2
#This can be replaced with the device name if using a remote device via adroid studio
${DeviceName}        192.168.1.133:5555
${Activity_NAME}      com.sentrics.engage360..presentation.MainActivity
${PACKAGE_NAME}       com.sentrics.engage360

*** Keywords ***
Open App
    Open Application   ${url}
  ...   platformName=${PlatFormName}
  ...   platformVersion=${PlatFormVersion}
  ...   deviceName=${DeviceName}
  ...   automationName=UiAutomator2
  ...   newCommandTimeout=2500
  ...   noReset=True
  ...   activateName=${Activity_NAME}
  ...   packageName=${PACKAGE_NAME}

Page Home E-hub
     Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvGroupName
     Element Should Be Visible            id=com.sentrics.engage360:id/tvGroupName        Entertainment

# NGG-TC-138
Home - My Schedule
    Press Keycode       20
    Press Keycode       22
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvMonthName
#    Wait Until Element Is Visible       id=com.sentrics.engage360:id/calendarDayBtnNewActivity

# NGG-TC-139
Navigation between Months - My Schedule
# Next Month
    Press Keycode           19
    Press Keycode           19
    Press Keycode           23


# Return Current month
    Wait Until Element Is Visible            id=com.sentrics.engage360:id/tvMonthName
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/calendarBtnBackToToday
    Press Keycode           21
    Press Keycode           23

# NGG-TC-140
Select days in the monthly calendar - My Schedule
# the day that is in the center of the calendar
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvMonthName

    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           22
    Press Keycode           23



# clic on the right arrow
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvMonthName
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/cvDate
    Press Keycode           22
    Press Keycode           22


# clic on the up arrow
    Press Keycode           19

# clic 2 times on the left arrow
    Press Keycode           21
    Press Keycode           21

# clic on the down arrow
    Press Keycode           20


# NGG-TC-142
Clic on days in the monthly calendar - My Schedule
# clic on the any day
    Press Keycode           20
    Press Keycode           23


# NGG-TC-144
Back to today - My Schedule
# Select any day on the month calendar
    Press Keycode           22
    Press Keycode           22
    Press Keycode           23

# Select and press the "Back to today" button
    Press Keycode       19
    Press Keycode       20
    Press Keycode       23



 # NGG-TC-146
Select and enter to Activities - My Schedule
# Select and enter to any day with activities
    Press Keycode       20
    Press Keycode       23

# Click Add Activity
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/calendarDayHeader
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/calendarDaySelectedDay
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/calendarDayBtnNewActivity
    Element Should Contain Text         id=com.sentrics.engage360:id/calendarDayBtnNewActivity            Add an Activity
    Press Keycode       23

# enter activity
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate
    Element Should Contain Text          id=com.sentrics.engage360:id/tvDate          Date
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAvailableActivities
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/ivBackgroundImage
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvTitle
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/ivPicture
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnRegister
    Element Should Contain Text          id=com.sentrics.engage360:id/btnRegister         Register
# Back
    Press Keycode       4
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAvailableActivities
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/ivBackgroundImage
# Back
    Press Keycode       4


# NGG-TC-148
Register activity - My Schedule
# Select and enter to any day with one activity
   Wait Until Element Is Visible       id=com.sentrics.engage360:id/mainLayout
   Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvMonthName
   Wait Until Element Is Visible       id=com.sentrics.engage360:id/calendarDayBtnNewActivity
   Element Should Contain Text         id=com.sentrics.engage360:id/calendarDayBtnNewActivity         Add an Activity
   Press Keycode        22
   Press Keycode        22
   Press Keycode        23

# enter add activity
    Press Keycode       23

# click Activity
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate
    Element Should Contain Text          id=com.sentrics.engage360:id/tvDate          Date
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAvailableActivities
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/ivBackgroundImage
    Press Keycode         23

# Click on Register button
     Wait Until Element Is Visible        id=com.sentrics.engage360:id/tvTitle
     Wait Until Element Is Visible        id=com.sentrics.engage360:id/btnRegister
     Element Should Contain Text          id=com.sentrics.engage360:id/btnRegister       Register
     Press Keycode         23

#  Back button
    Press Keycode           4
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAvailableActivities
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/ivBackgroundImage

## Press Back button again
    Press Keycode           4
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/mainLayout
    Wait Until Element Is Visible         id=com.sentrics.engage360:id/tvMonthName

## Press Back button again
    Press Keycode           4
     Wait Until Element Is Visible       id=com.sentrics.engage360:id/mainLayout
     Wait Until Element Is Visible         id=com.sentrics.engage360:id/cvDate
## Press Back button again
    Press Keycode           4

# enter My Schedule Window
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Press Keycode       23
## Select the day where the activity was registered
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvMonthName
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvText
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvText
    Press Keycode       22
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvText



# NGG-TC-147
Enter and unregister in an activity - My Schedule
# Click on the activity
    Press keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/linearLayoutTime
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/descriptionLinearLayout
    Press Keycode       23

# Click on Unregister Button
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvTitle
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDescription
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnUnregister
    Press Keycode       23
#  Back button
    Press Keycode           4
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvMonthName
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/calendarBtnBackToToday
# Press Back button again
    Press Keycode           4
# Press Back button again
    Press Keycode           4
# enter My Schedule Window
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Press Keycode       23




