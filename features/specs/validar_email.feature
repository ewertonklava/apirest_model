#language:pt
#utf-8
@api
@email
Funcionalidade: Validar email
   Como uma aplicação de serviço
   Eu quero validar os tipos de emails

  @validar_email
  Cenário: Validar email
    Dado que tenha um email disponivel
    Quando fizer um GET no serviço agenda_scheduling
    Então sistema retorna Status Code "200"
