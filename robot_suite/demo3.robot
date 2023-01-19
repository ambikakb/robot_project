*** Settings ***
Library    Collections
*** Variables ***
${BROWSER}   Chrome
@{COLORS}  red  green yellow
${MOBILE_NUM}   9258749654
&{MY_DETAILS}    Name=akb   role=ae   mobile=589664788
*** Test Cases ***
TC1
    ${my_name}   Set Variable  akb
    Log To Console    ${my_name}
    
TC2
    Log To Console    ${COLORS}
    ${item_count}   Get Length    ${COLORS}
    Log To Console    ${item_count}
    
TC3
    @{fruit}  Create List   apple  orange  mango
    Log To Console    ${fruit}[1]
    Append To List   ${fruit}   graps
    Remove Values From List    ${fruit}   apple
    Insert Into List    ${fruit}    1    pineapple
    ${total_itemin_list}   Get Length    ${fruit}
    Log To Console    ${total_itemin_list}
    Log To Console    ${fruit}
    

TC4
    @{fruit}  Create List   apple  orange  mango  pineapple

    FOR    ${i}    IN    @{fruit}
        Log To Console   ${i}

    END

TC5
    @{fruit}  Create List   apple  orange  mango  pineapple ytft
    ${lenth}  Get Length    ${fruit}
    FOR    ${i}    IN RANGE    0    ${lenth}
        #Log To Console  ${i}
        Log To Console    ${fruit}[${i}]

    END

TC6
    Log To Console    ${MY_DETAILS}


TC7
    &{emp_dic}  Create Dictionary   emp_id=101  emp_name=jack   role=qa
    Log To Console    ${emp_dic}[emp_id]
    Log Dictionary    ${EMP}