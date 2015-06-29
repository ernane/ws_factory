class Servico < ActiveRecord::Base
  has_many :parametros
  accepts_nested_attributes_for :parametros, allow_destroy: true
end
