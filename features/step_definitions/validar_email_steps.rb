Dado('que tenha um email disponivel') do
  @email = MASSA_APIREST['email']
  @rated  = MASSA_APIREST['rated']
end

Quando('fizer um GET no serviço agenda_scheduling') do
  @retorno = validar_email.get_validar_email(@email)
end

Então('sistema retorna Status Code {string}') do |code|
  expect(@retorno.code.to_s).to eq code
end