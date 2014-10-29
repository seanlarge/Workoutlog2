class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    "/athletes/#{resource.id}/edit"
  end

  def photo_content_type

  end

end
