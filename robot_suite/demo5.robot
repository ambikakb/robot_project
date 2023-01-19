*** Settings ***
Library    Collections
Library    OperatingSystem
Library  String

*** Test Cases ***
TC1
    ${files}  List Files In Directory   C:\\Users\\40032111\\AppData\\Local\\Temp
    #Log To Console    ${files}
    Log List    ${files}
    Log To Console    ${files}[0]

TC3
    Remove File  C:\\User\\40032111\\AppData\\Local\\Temp\\dem
    File Should Not Exist    C:\\User\\40032111\\AppData\\Local\\Temp\\dem

TC4
    File Should Exist    C:\\User\\40032111\\AppData\\Local\\Temp

TC5
    ${Name}  Set Variable  robot framework session
    Log To Console    ${Name}
    ${str1}  Convert To Upper Case   ${Name}
    Log To Console    ${str1}
    ${str2}   Remove String   robot framework    work
    Log To Console    ${str2}

TC6
    ${num1}  Set Variable  $200,100
    ${num2}  Set Variable  $200
    ${num3}  Remove String   ${num1}   $  ,
    ${num4}  Remove String    ${num2}  $
    ${num5}   Evaluate    ${num3}+${num4}

    Log To Console    ${num3}