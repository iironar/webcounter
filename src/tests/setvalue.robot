*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser and Reset counter to zero
Suite Teardown  Close Browser

*** Test Cases ***
when counter has some value, the value should be changed to the set value
    Go To  ${HOME_URL}
    Input Text  value  100
    Click Button  Aseta
    Page Should Contain  nappia painettu 100 kertaa