class PagesController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard

  def index
  end

  def dashboard
    @projects = Project.order(id: :desc)
  end

  def create

      @projects = Project.create(name: params[:name], state: params[:state], description: params[:description], start: params[:start], end: params[:end])
  end

end
