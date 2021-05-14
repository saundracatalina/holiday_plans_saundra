class VacationRequestSerializer
  include FastJsonapi::ObjectSerializer
  attributes :employee_id, :start_date, :end_date, :status, :resolved_by
end
