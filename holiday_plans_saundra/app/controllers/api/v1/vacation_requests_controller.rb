class Api::V1::VacationRequestsController < ApplicationController
  def index
    employee = Employee.find(params[:employee_id])
    render json: VacationRequestSerializer.new(employee.vacation_requests), status: 200
  end

  def create
    vacation_request = VacationRequest.create(vacation_request_params)
    render json: VacationRequestSerializer.new(vacation_request), status: 201
  end


  private

  def vacation_request_params
    params.permit(:employee_id, :start_date, :end_date, :status, :resolved_by)
  end
end
