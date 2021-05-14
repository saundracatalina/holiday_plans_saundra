class Api::V1::EmployeesController < ApplicationController
  def show
    employee = Employee.find(params[:id])
    render json: EmployeeSerializer.new(employee), status: 200
  end
end
