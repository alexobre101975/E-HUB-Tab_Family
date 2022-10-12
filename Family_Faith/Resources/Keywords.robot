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

# NGG-TC-150
Home-Faith
    Press Keycode       20
    Press keycode       22
    Press keycode       22
    Press Keycode       23

# NGG-TC-151
Tab Family - Faith - Enter To Libraries
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Library


# Click Tab Christian
    Press Keycode           23
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Prayers
# Back
    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Library





# Click Tab Catholic
    Press Keycode           20
    Press Keycode           23
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Prayers
# Back
    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Library






# Click Tab Jewish
    Press Keycode           20
    Press Keycode           20
    Press Keycode           23
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Prayers
# Back
    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Library





# Click Tab Islamic
    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           23
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Prayers
# Back
    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Library







# Click Tab Buddhist
    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           23
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Prayers
## Back
    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Library





# Click Tab General Spirituality
    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           23
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Prayers
# Back
    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Library





# Click Tab Native American
    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           23
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Prayers
# Back
    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Library





# NGG-TC-152
Tab Family - Faith - Christian Library - Enter to Purposes

# Click Tab Christian
    Press Keycode           23
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Prayers

# Click Tab Prayers
    Press Keycode           23
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Genre
# Back

    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Purpose
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Prayers




# Click Tab Inspiration
    Press Keycode           20
    Press Keycode           23
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Genre
# Back
    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Purpose




# Click Tab Sacred Texts/Commentary
    Press Keycode           20
    Press Keycode           20
    Press Keycode           23
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Genre
# Back
    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Purpose


# Click Tab Bible - KJV
    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           23
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Genre
# Back
    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Purpose



# Click Tab Bible - NIV
    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           23
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Genre
# Back
    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Purpose



# Click Tab Education
    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           23
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Genre
# Back
    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Purpose





# Click Tab Meditations
    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           20
    Press Keycode           23
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Genre
# Back
    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Purpose


# Back Home Page
    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Library
    Press Keycode           4

