class RegistrationsController < ApplicationController

  before_filter :define_personal_info, :only => [:personal_edit, :personal_update]


  def index
    
  end

  def personal_edit
  end
  
  def personal_update
    @personal_info.update_attributes params[:personal_info]
    if @personal_info.save
      redirect_to root_path, :notice => 'personal_data_updated'
    else
      render :action => 'personal_edit'
    end
  end
  
  private
    def define_personal_info
      @personal_info = current_user.personal_info
    end

end
