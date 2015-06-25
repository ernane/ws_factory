class CreateServicos < ActiveRecord::Migration
  def change
    create_table :servicos do |t|
      t.string  :acao,     null: false, limit: 70
      t.text    :descricao
      t.integer :status,   null: false, limit: 2
      t.string  :uri,      null: false, limit: 150

      t.timestamps null: false
    end
  end
end
