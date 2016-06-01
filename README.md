For the most detailed experience, please follow along with [this screencast](https://vimeo.com/169016772) and reference the [end product](https://github.com/arjunvenkat/charkick_tutorial_end) as needed

### Setup

1) clone down and setup as you would normally:

    bundle install
    rake db:migrate
    rake db:seed

2) Add this gem to your gemfile:

    gem "chartkick"

3) Create a new file in the app/assets/javascripts folder called `highcharts.js` and copy in the [full highcharts codebase](https://code.highcharts.com/highcharts.js)

4) In `application.js` addLabel

    //= require highcharts
    //= require chartkick


### Notes from the screencast

View code to create the original pie chart of exercise log data:

    <%= pie_chart ExerciseLog.group(:category).count %>

View code to create the final column chart of exercise log data:

    <%= column_chart ExerciseLog.group(:category).average(:duration), ytitle: "Avg Minutes" %>

View code to create the time series chart of exercise duration data grouped by dateFormats

    <%= line_chart ExerciseLog.group("date(exercise_logs.created_at)").sum(:duration) %>

View code to create manually entered pie chart data:

    <%= pie_chart({:running => 32, :swimming => 54, :biking => 72}, ytitle: "Avg Minutes") %>
