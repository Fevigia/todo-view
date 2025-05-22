module ApplicationHelper
  def time_based_greeting
    current_hour = Time.current.hour

    case current_hour
    when 5..11
      'Good morning!'
    when 12..16
      'Good afternoon!'
    when 17..20
      'Good evening!'
    else
      'Good night!'
    end
  end
end
