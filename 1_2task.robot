*** Variables ***
@{TEST_LIST}    0      350     -32     100

*** Test Cases ***
Check formula
    FOR  ${item}        IN          @{TEST_LIST}
         ${farengate}=  Evaluate     9/5*${item}+32
         Log    ${farengate}
    END
