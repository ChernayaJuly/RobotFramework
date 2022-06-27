*** Variables ***
${LIST}    ${1,2,3,5,1,0,-1,10}

*** Test Cases ***
Search max and min element
    ${max_number}=  Evaluate    max(${LIST})
    ${min_number}=  Evaluate    min(${LIST})
    Print Log With Arguments    Наибольшее число:  ${max_number}
    Print Log With Arguments    Наименьшее число:  ${min_number}

Search uniq elements
    ${uniq_element}=  Evaluate  set(${LIST})
    Print Log With Arguments    Уникальные числа:  ${uniq_element}

Sum of elements
    ${sum}=  Evaluate   sum(${LIST})
    Print Log With Arguments    Сумма элементов:  ${sum}

*** Keywords ***
Print Log With Arguments
    [Arguments]    ${message1}  ${message2}
    Log    ${message1}${message2}