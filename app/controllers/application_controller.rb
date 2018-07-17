class ApplicationController < ActionController::Base
# Layout per resource_name

 layout :layout_by_resource

  protected

	def layout_by_resource
	  if devise_controller? && resource_name == :admin
	    "backoffice_devise"
	  else
	    "application"
	  end
	end

end
