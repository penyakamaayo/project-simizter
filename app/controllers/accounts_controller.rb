class AccountsController < ApplicationController
  require 'open-uri'
  def test
    @data = JSON.parse(
      open("http://localhost:1212/v1/accounts"
      ).read, symbolize_names: true
    )[:data]
  end

  def show
    @id = params[:id]

    @data = JSON.parse(
      open("http://localhost:1212/v1/accounts/#{current_user.id}" 
      ).read, symbolize_names: true
    )[:data]
  end
end