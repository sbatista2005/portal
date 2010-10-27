class SessionsController < ApplicationController
  def new
  end

  def create
      @usuario = Usuario.logon(params[:login],params[:password])
      if @usuario
        session[:usu_id] = @usuario.id
        session[:usu_nome] = @usuario.usu_nome
        redirect_to :controller => "ead", :action => 'login'
      else
        flash[:avisoLogin] = "O login falhou, verifique o nome de usuario e senha informados"
        render :action => "new"
      end
    end
  
    def destroy
      session[:usu_id] = nil
      session[:usu_nome] = nil
      flash[:avisoSair] = "Voce saiu com sucesso!"
      redirect_to :controller => "ead", :action => 'index'
    end
end
