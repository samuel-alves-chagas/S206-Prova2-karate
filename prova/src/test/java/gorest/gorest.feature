Feature: Testando API Gorest

Background: Executa antes de cada teste
  * def url_base = "https://gorest.co.in/public/v2/"

Scenario: Busca de todos os usuarios e verifica a tipagem de retorno
  Given url url_base
  And path 'users'
  When method get
  Then status 200
  And print response
  And match each $ contains {gender: "#string", name: "#string", id: "#number", email: "#string", status: "#string"}

Scenario: Busca um usuario e valida seu nome
  Given url url_base
  And path 'users/33'
  When method get
  Then status 200
  And print response
  And match $.name == "Dr. Chitrangada Pandey"

Scenario: Busca um usuario e valida que não está inativo
  Given url url_base
  And path 'users/4181'
  When method get
  Then status 200
  And print response
  And match $.status != "inactive"

Scenario: Busca por usuario de id inválido e valida que este não existe
  Given url url_base
  And path 'users/9999'
  When method get
  Then status 404
  And print response
  And match $.message == "Resource not found"
  
Scenario: Busca um usuario e acessa suas postagens
  Given url url_base
  And path 'users/33/posts'
  When method get
  Then status 200