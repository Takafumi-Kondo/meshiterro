class ApplicationController < ActionController::Base
#devise機能使用前(ユーザ登録など)にconfigure_permitted_parametersが実行
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected
#devise_parameter_sanitizer.permitでnameのデータ操作を許可するアクションメソッドが指定されている
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])#ユーザ登録、ユーザ名データ操作が許可
	end
end
