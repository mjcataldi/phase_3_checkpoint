class AttendancesController < ApplicationController

  def index
  end

  def show
  end

  def edit
  end

  def new
  end

  def create
    @attendance = Attendance.new(attendance_params)

    # what to do here?
    respond_to do |format|
      if @attendance.save
        format.html { redirect_to @attendance, notice: 'The attendance record was successfully created.' }
        format.json { render :show, status: :created, location: @attendance }
      else
        format.html { render :new }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
  end

  private
  def attendance_params
    params.require(:attendance).permit(:attendee, :concert)
  end

  def set_attendance
    @attendance = Attendance.find(params[:id])
  end

end
