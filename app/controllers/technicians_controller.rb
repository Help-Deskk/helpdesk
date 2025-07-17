class TechniciansController < ApplicationController
  def index
    technicians = User.technician
    authorize technicians, policy_class: TechnicianPolicy
    render json: technicians, status: :ok
  end
end
