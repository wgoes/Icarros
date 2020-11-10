class BuscaPage
  include Capybara::DSL

  def acessar_url(url)
    visit url
  end

  def usados
    find("#anunciosNovos")
  end

  def marca
    find("button[title=Marca]")
  end

  def buscar
    click_button "Buscar"
  end

  def selecionar_marca(marca)
    campos_busca = all(".bs-searchbox")
    campos_busca[0].find("input[aria-label=Search]").send_keys marca
    campos_busca[0].find("input[aria-label=Search]").send_keys :enter
  end

  def selecionar_modelo(modelo)
    campos_busca = all(".bs-searchbox")
    campos_busca[0].find("input[aria-label=Search]").send_keys modelo
    campos_busca[0].find("input[aria-label=Search]").send_keys :enter
  end

  def resultado_busca
    find(".sticky_conteudo")
  end
end
