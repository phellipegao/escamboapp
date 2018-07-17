class BackofficeControle < ApplicationController
  before_action :authenticate_admin!
  layout "backoffice"
end