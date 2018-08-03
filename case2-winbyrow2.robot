*** Settings ***
Library    Selenium2Library

*** Variables ***
${URL}     http://localhost:8888/handsomevolk/index.jsp
${Browser}    chrome

*** Test Cases ***
Player2(O) ชนะในแนวนอน Row:2
    เปิดเว็บไซต์
    Player1 คลิกตำแหน่ง แถว 3 คอลัมน์ 3
    Player2 คลิกตำแหน่ง แถว 2 คอลัมน์ 3
    Player1 คลิกตำแหน่ง แถว 1 คอลัมน์ 3
    Player2 คลิกตำแหน่ง แถว 2 คอลัมน์ 1
    Player1 คลิกตำแหน่ง แถว 1 คอลัมน์ 1
    Player2 คลิกตำแหน่ง แถว 2 คอลัมน์ 2
    รออัพเดทคะแนนให้ Player2

*** Keywords ***
เปิดเว็บไซต์
    Open Browser    ${URL}    ${Browser}
Player1 คลิกตำแหน่ง แถว 3 คอลัมน์ 3
    Click Element    id=R3_C3
    Wait Until Element Contains    id=R3_C3    x

Player2 คลิกตำแหน่ง แถว 2 คอลัมน์ 3
    Click Element    id=R2_C3
    Wait Until Element Contains    id=R2_C3    o

Player1 คลิกตำแหน่ง แถว 1 คอลัมน์ 3
    Click Element    id=R1_C3
    Wait Until Element Contains    id=R1_C3    x

Player2 คลิกตำแหน่ง แถว 2 คอลัมน์ 1
    Click Element    id=R2_C1
    Wait Until Element Contains    id=R2_C1    o

Player1 คลิกตำแหน่ง แถว 1 คอลัมน์ 1
    Click Element    id=R1_C1
    Wait Until Element Contains    id=R1_C1    x

Player2 คลิกตำแหน่ง แถว 2 คอลัมน์ 2
    Click Element    id=R2_C2
    Wait Until Element Contains    id=R2_C2    o

รออัพเดทคะแนนให้ Player2
    Wait Until Element Contains    id=player2Score    1
ปิดเว็บไซต์
    Close Browser