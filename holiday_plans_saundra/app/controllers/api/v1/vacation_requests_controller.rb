class Api::V1::VacationRequestsController < ApplicationController
  def create
    vacation_request = VacationRequest.create(vacation_request_params)
    render json: VacationRequestSerializer.new(vacation_request), status: 201
  end


  private

  def vacation_request_params
    params.permit(:employee_id, :start_date, :end_date, :status, :resolved_by)
  end
end
