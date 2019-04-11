# frozen_string_literal: true

module ApplicationHelper
  def flash_class(level)
    case level
    when 'notice' then "alert alert-info alert-dismissible fade show"
    when 'success' then "alert alert-success alert-dismissible fade show"
    when 'warning' then "alert alert-warning alert-dismissible fade show"
    when 'alert' then "alert alert-error alert-dismissible fade show"
    end
  end
end
