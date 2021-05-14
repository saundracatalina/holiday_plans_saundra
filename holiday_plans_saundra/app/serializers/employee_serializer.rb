class EmployeeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :manager_id, :vac_days_left
end
