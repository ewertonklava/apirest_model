#language:pt
#utf-8
@api
@oauth
Funcionalidade: Token de Acesso
   Como uma aplicação de serviço
   Eu quero gerar um token para validar acesso as APIs

  @gerar_token
  Cenário: Efetuar login gerando um Token OAuth
    Dado existir "dados para gerar token" ativação
    Quando fizer um POST no serviço RequestOauth
    Então sistema retorna um access_token
    