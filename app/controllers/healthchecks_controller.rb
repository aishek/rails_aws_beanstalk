class HealthchecksController < ApplicationController
  def show
    ActiveRecord::Base.connection.execute 'SELECT 1;'

    render plain: 'ok'
  end
end
