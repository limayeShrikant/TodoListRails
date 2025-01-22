module ApplicationHelper

  def display_date(date_time)
    date_time.to_date.strftime('%d-%m-%y') rescue '-'
  end
end
