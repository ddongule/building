module ApplicationHelper
    def bootstrap_class_for(flash_type)
        case flash_type
        when "success"
            "alert-warning"   # Green
        when "error"
            "alert-danger"    # Red
        when "alert"
            "alert-warning"   # Yellow
        when "notice"
            "alert-danger"      # Blue
        else
            flash_type.to_s
        end
    end

    def user_roles(user)
        user.roles.map(&:name).join(',').titleize
    end
end