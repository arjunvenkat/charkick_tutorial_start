class ExerciseLogsController < ApplicationController
  def index
    @exercise_logs = ExerciseLog.all
  end

  def show
    @exercise_log = ExerciseLog.find(params[:id])
  end

  def new
    @exercise_log = ExerciseLog.new
  end

  def create
    @exercise_log = ExerciseLog.new
    @exercise_log.category = params[:category]
    @exercise_log.duration = params[:duration]

    if @exercise_log.save
      redirect_to "/exercise_logs", :notice => "Exercise log created successfully."
    else
      render 'new'
    end
  end

  def edit
    @exercise_log = ExerciseLog.find(params[:id])
  end

  def update
    @exercise_log = ExerciseLog.find(params[:id])

    @exercise_log.category = params[:category]
    @exercise_log.duration = params[:duration]

    if @exercise_log.save
      redirect_to "/exercise_logs", :notice => "Exercise log updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @exercise_log = ExerciseLog.find(params[:id])

    @exercise_log.destroy

    redirect_to "/exercise_logs", :notice => "Exercise log deleted."
  end
end
