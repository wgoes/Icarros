Dado("que o usuário está na home do site.") do
  @busca = BuscaPage.new
  @busca.acessar_url("https://www.icarros.com.br/principal/index.jsp")
end

Quando("efetuar uma busca por um carro usado de mesmo modelo e marca") do
  @busca.usados.click
  @busca.marca.click
  @busca.selecionar_marca("Chevrolet")
  @busca.selecionar_modelo("Agile")
  @busca.buscar
end

Então("os resultados devem ser exibidos.") do
  expect(@busca.resultado_busca).to have_content "(14 ofertas)"
end

Então("o valor do primeiro carro da listagem deve ser verificado") do
  form_anuncios = find("#anunciosForm")
  listagem_carros = form_anuncios.all("ul li")
  puts listagem_carros[0].text
  expect(listagem_carros[0].text).to have_content "R$ 26.900,00"
  expect(listagem_carros[0].text).to have_content "Agile LT 1.4 8V (Flex)"
end

Então("o valor do segundo carro da listagem deve ser verificado") do
  form_anuncios = find("#anunciosForm")
  listagem_carros = form_anuncios.all("ul li")
  puts listagem_carros[7].text
  expect(listagem_carros[7].text).to have_content "R$ 28.900,00"
  expect(listagem_carros[7].text).to have_content "Agile LTZ 1.4 8V (Flex)"
end
