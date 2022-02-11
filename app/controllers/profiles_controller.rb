class ProfilesController < ApplicationController
  def update
    @profile = Profile.find(params[:id])
    if @profile.update(current_template: params[:current_template])
      flash[:success] = "Invoice Template set to #{params[:current_template_name]}"
      redirect_to new_invoice_path
    end
  end

  private

  def profiles_params
    params.require(:profile).permit(:id, :current_template, :current_template_name)
  end
end
