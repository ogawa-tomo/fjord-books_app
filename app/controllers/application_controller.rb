# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :switch_locale

  def default_url_options
    { locale: I18n.locale }
  end

  def switch_locale
    I18n.locale = params[:locale] if params[:locale]
  end
end
