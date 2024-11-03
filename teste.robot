*** Settings ***
Library    Browser    

*** Test Cases ***
Verificar Titulo Da Pagina
    [Documentation]    Visita uma página e verifica o título
    New Browser    browser=chromium    headless=False
    New Page    https://walkdog.vercel.app
    Get Title    equal    Walkdog by Papito
    Get Text    css=h1     equal    Cuidado e diversão em cada passo
    Get Text    css=.content main p     equal    Quer gerar uma renda extra passeando com pets? Faça parte da nossa comunidade de dog walkers.
    Click    css=a[href="/signup"]
    Get Url    equal    https://walkdog.vercel.app/signup
    Close Browser