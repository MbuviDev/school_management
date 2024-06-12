class UnitsController < ApplicationController
  def new
    @student = Student.find(params[:student_id])
    @unit = student.units.new
  end

  def create
    @student = Student.find(params[:student_id])
    @unit = @student.units.new(unit_paarams)
    if @unit.save
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def edit
    @student = Student.find(params[student_id])
    @unit = student.units.find(params[:id])
  end

  def update
    @student = Student.find(params[student_id])
    @unit = student.units.find(params[:id])
    if @unit.update(unit_params)
      redirect_to student_path(@student)
    else
      render :edit
    end
  end

  def destroy
    @student = Student.find(params[:student_id])
    @unit = @student.units.find(params[:id])
    @unit.destroy
    redirect_to student_path(@student)
  end

  private

  def unit_params
    params.require(:unit).permit(:name, :grade)
  end
end
