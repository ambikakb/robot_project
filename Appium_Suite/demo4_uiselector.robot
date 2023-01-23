*** Settings ***
Library   AppiumLibrary


*** Test Cases ***
TC1
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=Infinix
    ...     appPackage=org.khanacademy.android
    ...     appActivity=org.khanacademy.android.ui.library.MainActivity
    ...     noReset=true

    Set Appium Timeout    30s
    Run Keyword And Ignore Error      Wait Until Page Contains Element      android=UiSelector().text("Dismiss")
    Run Keyword And Ignore Error    Click Element    android=UiSelector().text("Dismiss")

    Wait Until Page Contains Element    android=UiSelector().description("Settings")
    Click Element    android=UiSelector().description("Settings")

    Wait Until Page Contains Element    android=UiSelector().text("Sign in")  30s
    Click Element    android=UiSelector().text("Sign in")

    Wait Until Page Contains Element    android=UiSelector().textContains("Sign up")
    Click Element    android=UiSelector().textContains("Sign up")
    
    Wait Until Page Contains Element    android=UiSelector().descriptionContains("First name")
    Input Text    android=UiSelector().descriptionContains("First name")    AkB

    Wait Until Page Contains Element    android=UiSelector().descriptionContains("Last name")
    Input Text    android=UiSelector().descriptionContains("Last name")   anu

    Wait Until Page Contains Element    android=UiSelector().text("Birthday")
    Click Element    android=UiSelector().text("Birthday")

    Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)
    Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)
    Input Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)    Nov

    Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
    Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
    Input Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)    24

    Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
    Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
    Input Text    android=UiSelector().resourceId("android:id/numberpicker_input") .instance(2)   1996

    Wait Until Page Contains Element  android=UiSelector().text("OK")
    Click Element    android=UiSelector().text("OK")

    Wait Until Page Contains Element  android=UiSelector().textContains("Email address")
    Input Text    android=UiSelector().textContains("Email address")  akb@gmail.com

    Wait Until Page Contains Element  android=UiSelector().textContains("Password")
    Input Text    android=UiSelector().textContains("Password")  akb1234

    Wait Until Page Contains Element  android=UiSelector().textContains("CREATE")
    Click Element  android=UiSelector().textContains("CREATE")



    ${page_source}  Get Source
     Log To Console    ${page_source}
     Sleep    10s
     [Teardown]   Close Application


TC2
     Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=Infinix
    ...     appPackage=org.khanacademy.android
    ...     appActivity=org.khanacademy.android.ui.library.MainActivity
    ...     noReset=true

    Set Appium Timeout    30s

    Run Keyword And Ignore Error      Wait Until Page Contains Element       android=UiSelector().text("Dismiss")
    Run Keyword And Ignore Error    Click Element    android=UiSelector().text("Dismiss")
    Wait Until Page Contains Element    android=UiSelector().text("Search")
    Click Element    android=UiSelector().text("Search")
    Wait Until Page Contains Element    android=UiSelector().text("Arts and humanities")
    Click Element    android=UiSelector().text("Arts and humanities")

    &{dic_arg}   Create Dictionary  strategy=-android uiautomator
    ...  selector=UiSelector().text("Art of Asia")
    Execute Script    mobile:scroll  &{dic_arg}
    Click Element    android=UiSelector().text("Art of Asia")

     &{dic_arg}   Create Dictionary  strategy=-android uiautomator
    ...  selector=UiSelector().text("South Asia")
    Execute Script    mobile:scroll  &{dic_arg}
    Click Element    android=UiSelector().text("South Asia")

     &{dic_arg}   Create Dictionary  strategy=-android uiautomator
    ...  selector=UiSelector().text("The Taj Mahal")
    Execute Script    mobile:scroll  &{dic_arg}
    Click Element    android=UiSelector().text("The Taj Mahal")




     ${page_source}  Get Source
     Log To Console    ${page_source}
     Sleep    10s
     [Teardown]   Close Application