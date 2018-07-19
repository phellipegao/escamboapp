class Backoffice::AdminsController < BackofficeControle
before_action :set_admin, only: [:edit, :update]
  def index
  	@admins = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def create 
    @admin = Admin.new(params_admin)
    if @admin.save 
      redirect_to backoffice_admins_path, notice: "O Administrador (#{@admin.email}) foi cadastro com sucesso!"
    else
      render :new 
    end
  end

  def edit      
  end

  def update
    if @admin.update(params_admin)
       redirect_to backoffice_admins_path, notice: "O Administrador (#{@admin.email}) foi atualizado com sucesso!"
    else
      render :edit 
    end
  end

  def params_admin
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end

  def set_admin
    @admin = Admin.find(params[:id])
  end

end

