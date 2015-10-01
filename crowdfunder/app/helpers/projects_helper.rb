module ProjectsHelper
  def amountRemaining
    @project.goal - @project.pledges.sum(:amount)
  end

  def time_remaining
    if (@project.end_date.to_i < Time.now.to_i)
      '0'
    else
      ((@project.end_date.to_i - Time.now.to_i)/86400)
    end

  end


# Length of campaign: <%= ((@project.end_date.to_i - Time.now.to_i)/86400)  %> <br>
# Days remaining: <%= distance_of_time_in_words_to_now(@project.end_date) %>


  # if the current date is between the start and end date, then
  # days_remaining = end_date - current_date
  # else if the current date is before the start date, then replace "days remaining"
  # with " This project has yet to start"
  # else if the end date is before the current date, replace "days remaining"
  # with "This funding period is over".
end
