# Before do |_scenario|
#   home.load
#   await(home.Active_directory, 20)
#   home.Active_directory.click
#   while (home.ipt_user.value).eql?('')
#     await(home.ipt_user, 20)
#     await(home.ipt_password, 20)
#     home.ipt_user.set('USETES05')
#     home.ipt_password.set('Senhates05!1')
#   end
#   home.btn_Entrar.click
#   home.refresh
#   await(administracao.btn_administracao, 50)
#   administracao.btn_administracao.hover
#   administracao.btn_AlterarAcesso.click
#   await(administracao.combo_concessionaria, 10)
# end

# After do |scenario|
#   @scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')

#   if scenario.failed?
#     tirar_foto(@scenario_name.downcase!, 'Falhou')
#   else
#     tirar_foto(@scenario_name.downcase!, 'Passou')
#   end
# end
