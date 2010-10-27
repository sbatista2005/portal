class CreateUsuarios < ActiveRecord::Migration
  def self.up
    create_table :usuarios do |t|
      t.string :usu_nome
      t.string :usu_email
      t.string :usu_login
      t.string :usu_senha
      t.timestamps
    end
  end

  def self.down
    drop_table :usuarios
  end
end
