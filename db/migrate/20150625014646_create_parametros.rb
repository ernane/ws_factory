class CreateParametros < ActiveRecord::Migration
  def change
    create_table :parametros do |t|
      t.string :chave, null: false, limit: 150
      t.references :servico, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
