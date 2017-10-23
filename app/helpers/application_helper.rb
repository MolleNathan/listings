module ApplicationHelper

  def action_contact
    if current_user
      "showContactModal"
    else
      "redirectLogin"
    end
  end

  def flash_class(level)
    case level
        when :notice then "alert alert-info"
        when :success then "alert alert-success"
        when :error then "alert alert-error"
        when :alert then "alert alert-error"
    end
end

end
