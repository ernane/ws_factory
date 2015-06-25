class ServicosController < ApplicationController
  def index
    @servicos = Servico.all
  end
end
