require 'rails_helper'

describe 'employee requests' do
  describe 'employee vacation requests info' do
    it 'can retrieve how many vac days left an employee has to start' do
      manager = Manager.create!(name: "I'm a Manager!")
      employee = Employee.create!(name: "Saundra", manager_id: manager.id)
      id = employee.id

      get "/api/v1/employees/#{employee.id}"

      json = JSON.parse(response.body, symbolize_names: true)
      employee_info = json[:data]

      expect(response.status).to eq(200)
      expect(response).to be_successful

      expect(employee_info).to have_key(:id)
      expect(employee_info[:id]).to be_a(String)
      expect(employee_info[:id]).to eq("#{id}")
      expect(employee_info).to have_key(:type)
      expect(employee_info[:type]).to be_a(String)
      expect(employee_info[:type]).to eq("employee")
      expect(employee_info[:attributes]).to have_key(:name)
      expect(employee_info[:attributes][:name]).to be_a(String)
      expect(employee_info[:attributes]).to have_key(:manager_id)
      expect(employee_info[:attributes][:manager_id]).to be_an(Numeric)
      expect(employee_info[:attributes]).to have_key(:vac_days_left)
      expect(employee_info[:attributes][:vac_days_left]).to be_a(Numeric)
    end
  end
  describe 'employee creating vacation request' do
    it 'allows an employee to sumbit a request for vacation' do
      manager = Manager.create!(name: "I'm a Manager!")
      employee = Employee.create!(name: "Saundra", manager_id: manager.id)
      vacation_request_params = {employee_id: "employee.id", start_date: DateTime.now + 10, end_date: DateTime.now + 14}
      request_headers = {"CONTENT_TYPE" => 'application/json'}

      expect(employee.vacation_requests.count).to eq(0)

      post "/api/v1/employees/#{employee.id}/vacation_requests", headers: request_headers, params: JSON.generate(vacation_request_params)

      json = JSON.parse(response.body, symbolize_names: true)
      employee_info = json[:data]

      expect(response).to be_successful
      expect(response.status).to eq(201)
      expect(employee.vacation_requests.count).to eq(1)
      expect(employee_info[:attributes][:employee_id]).to eq(employee.id)
      expect(employee_info[:attributes][:status]).to eq("pending")
      expect(employee_info[:attributes][:resolved_by]).to eq(nil)
    end
  end
end
