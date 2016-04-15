module ApplicationHelper
   def status(updated_at)
    difference = (Time.now - updated_at).seconds
    if(difference < 1.week)
      'less-one-week'
    elsif( difference > 1.week && difference < 2.week)
      'one-week'
    elsif(difference > 2.week && difference < 3.week)
      'two-week'
    elsif(difference > 3.week && difference < 1.month)
      'three-week'
    else
      'a-month'
    end
   end
end
