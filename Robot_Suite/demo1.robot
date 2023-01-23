*** Settings ***
Library  DateTime


*** Test Cases ***
TC1
    Log To Console  message=Ambika
    Log To Console    hello
    
TC2 
    ${my_name}  Set Variable  Akb
    Log To Console    ${my_name}

TC3
    ${date1}  Get Current Date
    Log To Console    ${date1}
    
TC4
    ${radius}  Set Variable  10
    ${area}  Evaluate    3.147*${radius}*${radius}
    Log To Console   Evaluate