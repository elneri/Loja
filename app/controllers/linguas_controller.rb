class LinguasController < ApplicationController

  def index
    session[:lingua] = params[:lang]
    redirect_to :back   # prestar atenção para caso de POST ou PUT. Testar antes - implementar
  end

end