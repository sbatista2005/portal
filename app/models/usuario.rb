class Usuario < ActiveRecord::Base
  
validates_presence_of :usu_nome
validates_presence_of :usu_email
validates_presence_of :usu_login
validates_presence_of :usu_senha

validates_uniqueness_of :usu_login

  
  def self.logon(login,senha)
    usuario = Usuario.first :conditions => ["usu_login = ? and usu_senha = ?",login,senha]
    usuario
  end
  
end
