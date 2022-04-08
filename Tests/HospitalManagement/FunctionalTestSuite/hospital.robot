*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://127.0.0.1:5000/
${user_parameter}  admin
${pass_parameter}  12345
${name_parameter}  xyz
${mobile_parameter}  7350965600
${age_parameter}  21
${address_parameter}  Pune
${dob_parameter}  17-06-2000
${place_parameter}  Pune
${pin_parameter}  411038

*** Test Cases ***
Login Page test case
    [Documentation]  login page
    [Tags]  Login
    Open Browser  ${url}  chrome
    maximize browser window
    Input text  name:name  ${user_parameter}
    sleep  1s
    Input text  name:pass  ${pass_parameter}
    sleep  1s
    click button  xpath://html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  3s

Add Patient test case
    [Documentation]   Add
    [Tags]  Patient
    switch window  title:Hospital Management System
    Input text  name:name  ${name_parameter}
    sleep  1s
    Input text  name:mobile  ${mobile_parameter}
    sleep  1s
    Input text  name:age  ${age_parameter}
    sleep  1s
    Input text  name:address  ${address_parameter}
    sleep  1s
    Input text  name:DOB  ${dob_parameter}
    sleep  1s
    Input text  name:place  ${place_parameter}
    sleep  1s
    Input text  name:pincode  ${pin_parameter}
    sleep  1s
    click button  xpath=//html/body/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  3s

search test case
    [Documentation]  Search
    [Tags]  Patient

    click element  xpath=//html/body/nav/div/div/ul/li[2]/a
    Input text  name:mobile  ${mobile_parameter}
    sleep  2s
    click button  xpath=//html/body/div[1]/div/form/table/tbody/tr[2]/td[2]/button
    sleep  3s

update test case
    [Documentation]  Update
    [Tags]  Patient

    click element  xpath=//html/body/nav/div/div/ul/li[5]/a
    Input text  name:mobile  ${mobile_parameter}
    sleep  2s
    click button  xpath=//html/body/div/div/form/table/tbody/tr[2]/td[2]/button

    switch window  title:Hospital Management System
    Input text  name:name  ${name_parameter}
    sleep  1s
    Input text  name:mobile  ${mobile_parameter}
    sleep  1s
    Input text  name:age  ${age_parameter}
    sleep  1s
    Input text  name:address  ${address_parameter}
    sleep  1s
    Input text  name:DOB  ${dob_parameter}
    sleep  1s
    Input text  name:place  ${place_parameter}
    sleep  1s
    Input text  name:pincode  ${pin_parameter}
    sleep  1s
    click button  xpath://html/body/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  3s

delete test case
    [Documentation]  Delete
    [Tags]  Patient

    click element  xpath=//html/body/nav/div/div/ul/li[3]/a
    Input text  name:mobile  ${mobile_parameter}
    sleep  2s
    click button  xpath=//html/body/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  3s
    Close Browser
*** Keywords ***


