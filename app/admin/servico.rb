ActiveAdmin.register Servico do
config.comments = false
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :acao, :descricao, :status, :uri, parametros_attributes: [:id, :chave, :_destroy]

form do |f|
  f.inputs "Detalhe" do
    f.input :acao
    f.input :descricao
    f.input :status
    f.input :uri
    f.has_many :parametros, allow_destroy: true do |ff|
      ff.input :chave
    end
    f.submit
  end  
end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
