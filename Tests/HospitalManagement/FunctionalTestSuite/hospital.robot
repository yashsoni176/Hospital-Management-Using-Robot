*** Settings ***
Resource  ../../../Resources/keywords.robot

*** Test Cases ***
Login Page test case
    [Documentation]  login page
    [Tags]  Login
    Open Browser  ${url}  chrome
    maximize browser window
    Input text  name:name  ${username}
    sleep  1s
    Input text  name:pass  ${pass}
    sleep  1s
    click button  xpath://html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  3s

Add Patient test case
    [Documentation]   Add
    [Tags]  Patient
    switch window  title:Hospital Management System
    Input text  name:name  ${name}
    sleep  1s
    Input text  name:mobile  ${mobile}
    sleep  1s
    Input text  name:age  ${age}
    sleep  1s
    Input text  name:address  ${address}
    sleep  1s
    Input text  name:DOB  ${DOB}
    sleep  1s
    Input text  name:place  ${place}
    sleep  1s
    Input text  name:pincode  ${pincode}
    sleep  1s
    click button  xpath=//html/body/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  3s

search test case
    [Documentation]  Search
    [Tags]  Patient

    click element  xpath=//html/body/nav/div/div/ul/li[2]/a
    Input text  name:mobile  ${mobile}
    sleep  2s
    click button  xpath=//html/body/div[1]/div/form/table/tbody/tr[2]/td[2]/button
    sleep  3s

update test case
    [Documentation]  Update
    [Tags]  Patient

    click element  xpath=//html/body/nav/div/div/ul/li[5]/a
    Input text  name:mobile  ${mobile}
    sleep  2s
    click button  xpath=//html/body/div/div/form/table/tbody/tr[2]/td[2]/button

    switch window  title:Hospital Management System
    Input text  name:name  ${updname}
    sleep  1s
    Input text  name:mobile  ${mobile}
    sleep  1s
    Input text  name:age  ${updage}
    sleep  1s
    Input text  name:address  ${updaddress}
    sleep  1s
    Input text  name:DOB  ${updDOB}
    sleep  1s
    Input text  name:place  ${updplace}
    sleep  1s
    Input text  name:pincode  ${updpincode}
    sleep  1s
    click button  xpath://html/body/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  3s

delete test case
    [Documentation]  Delete
    [Tags]  Patient

    click element  xpath=//html/body/nav/div/div/ul/li[3]/a
    Input text  name:mobile  ${mobile}
    sleep  2s
    click button  xpath=//html/body/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  3s
    Close Browser
*** Keywords ***


