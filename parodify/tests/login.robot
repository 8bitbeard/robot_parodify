***Settings***
Documentation   Testes da página login

Resource    ../resources/base.robot

# O Test Teardown vai executar no final de TODOS os cenários do arquivo -> Conhecido como "Gancho, Hook"
Test Teardown   Take Screenshot

***Test Cases***
Login com sucesso
  [tags]      smoke
  Open Login Page
  Login With                     papito@parodify.com                pwd123
  Logout Link Should Be Visible

Senha incorreta
  Open Login Page
  Login With                     papito@parodify.com                abc123
  Alert Should Be                Opps! Dados de acesso incorretos!

Email não existe
  Open Login Page
  Login With                     404@gmail.com                      abc123
  Alert Should Be                Opps! Dados de acesso incorretos!

Email não informado
  Open Login Page
  Login With                     ${EMPTY}                           pwd123
  Alert Should Be                Opps! Dados de acesso incorretos!

Senha não informada
  Open Login Page
  Login With                     papito@parodify.com                ${EMPTY}
  Alert Should Be                Opps! Dados de acesso incorretos!