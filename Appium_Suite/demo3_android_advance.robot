*** Settings ***
Library   AppiumLibrary
*** Test Cases ***
TC5
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=Infinix
    ...     appPackage=org.khanacademy.android
    ...     appActivity=org.khanacademy.android.ui.library.MainActivity
    ...     noReset=true
    Run Keyword And Ignore Error      Wait Until Page Contains Element       xpath=//android.widget.TextView[@text='Dismiss']
    Run Keyword And Ignore Error    Click Element    xpath=//android.widget.TextView[@text='Dismiss']
    Wait Until Page Contains Element    xpath=//android.widget.Button[@text='Search']
    Click Element    xpath=//android.widget.Button[@text='Search']
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Arts and humanities']
    Click Element    xpath=//android.widget.TextView[@text='Arts and humanities']

    ${count}   Get Matching Xpath Count   xpath=//*[@text='Art of Asia']
    WHILE    ${count}==0
        Swipe By Percent    90    75    90    25
        ${count}   Get Matching Xpath Count   xpath=//*[@text='Art of Asia']
     END
     Wait Until Page Contains Element    xpath=//*[@text='Art of Asia']
     Click Element    xpath=//*[@text='Art of Asia']

     ${count}   Get Matching Xpath Count   xpath=//*[@text='South Asia']
    WHILE    ${count}==0
        Swipe By Percent    90    75    90    25
        ${count}   Get Matching Xpath Count   xpath=//*[@text='South Asia']
     END
     Wait Until Page Contains Element    xpath=//*[@text='South Asia']
     Click Element    xpath=//*[@text='South Asia']

    ${count}   Get Matching Xpath Count   xpath=//*[@text='The Taj Mahal']
    WHILE    ${count}==0
        Swipe By Percent    90    75    90    25
        ${count}   Get Matching Xpath Count   xpath=//*[@text='The Taj Mahal']
     END
     Wait Until Page Contains Element    xpath=//*[@text='The Taj Mahal']
     Click Element    xpath=//*[@text='The Taj Mahal']

     Wait Until Page Contains Element    xpath=//*[contains(@text,'fifth ruler')]    30s
     Element Should Contain Text   xpath=//*[contains(@text,'fifth ruler')]      Shah Jahan


     ${page_source}  Get Source
     Log To Console    ${page_source}
     Sleep    10s
     [Teardown]   Close Application

