require 'rails_helper'

describe 'manager requests' do
  describe 'employee vacation requests info' do
    it 'manager can see a speccific employees vacation requests info' do
      manager = Manager.create!(name: "I'm a Manager!")
      employee_1 = Employee.create!(name: "Saundra", manager_id: manager.id)
      employee_2 = Employee.create!(name: "Bob", manager_id: manager.id)
      vac_req_1 = VacationRequest.create!(employee_id: employee_1.id, start_date: DateTime.now, end_date: DateTime.now + 3)
      vac_req_2 = VacationRequest.create!(employee_id: employee_1.id, start_date: DateTime.now + 10, end_date: DateTime.now + 14)
      vac_req_3 = VacationRequest.create!(employee_id: employee_2.id, start_date: DateTime.now + 30, end_date: DateTime.now + 40)

      get "/api/v1/managers/#{manager.id}/employees/#{employee_1.id}/vacation_requests"

      json = JSON.parse(response.body, symbolize_names: true)
      employee_info = json[:data]

      expect(response.status).to eq(200)
      expect(response).to be_successful
      expect(employee_info.length).to eq(2)
    end
  end
end
