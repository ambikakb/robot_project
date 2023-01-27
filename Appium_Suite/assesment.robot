*** Settings ***
Library   AppiumLibrary
*** Test Cases ***
TC5
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=Infinix
    ...     appPackage=com.mobile.simplilearn
    ...     appActivity=com.mobile.newArch.module.monetization_new_flow.PaidBookFreeActivity
    ...     noReset=true
    Set Appium Timeout   30s
    Run Keyword And Ignore Error      Wait Until Page Contains Element       xpath=//android.widget.TextView[@text='Dismiss']
    Run Keyword And Ignore Error    Click Element    xpath=//android.widget.TextView[@text='Dismiss']
    Wait Until Page Contains Element  xpath=//android.widget.TextView[@text='Home']
    Click Element  xpath=//android.widget.TextView[@text='Home']

    ${page_source}  Get Source
     Log To Console    ${page_source}
     Sleep    10s
     [Teardown]   Close Application