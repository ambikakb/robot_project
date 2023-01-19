*** Settings ***
Library  OperatingSystem
*** Test Cases ***
TC1
    Create Directory    Akb
    Remove Directory    Akb
    Create Directory    path=C:\\Users\\40032111\\OneDrive - LTTS\\Desktop\\robot_project\\demo123
    
TC2 
    Log To Console    C:\\Users\\40032111\\OneDrive - LTTS\\Desktop\\robot_project\\demo123
    Log To Console    ${CURDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${EXECDIR}
    Log To Console    hi${SPACE}${SPACE}WORLD
    Log To Console    ${SUITE_NAME}
    Log To Console    ${TEST_NAME}