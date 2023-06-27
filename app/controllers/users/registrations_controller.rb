class Users::RegistrationsController < Devise::RegistrationsController

    before_action :sign_up_params, only: [:create]

    before_action :account_update_params, only: [:update]




    def new

        puts "\n\n...Im in your local...\n\n"

        build_resource({})

        resource.build_profile

        respond_with self.resource

    end

    def create
        super
        # @user = User.new(sign_up_params)
       
        # if @user.save
        #   redirect_to root_path
        # else
        #   render new_user_confirmation_path
        # end

    end

    def update

        super

    end

    def edit
        super
    end


    

    private

    def sign_up_params

        devise_parameter_sanitizer.sanitize(:sign_up)

        params.require(:user).permit(:email, :password, :password_confirmation ,:role, :current_password)

        

    end

    def account_update_params

        params.require(:user).permit(:email, :password, :password_confirmation, :role, :current_password)

    end

end