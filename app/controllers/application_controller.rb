class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
    add_breadcrumb "admin", :rails_admin_path, if: :admin_controller?
    add_breadcrumb "home", :root_path

    protected

    def admin_controller?
      self.class.name =~ /^RailsAdmin(::|Controller)/
    end

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:avatar, :pseudonym, :email, :password)}
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:avatar, :pseudonym, :email, :password, :current_password)}
    end
end
