class TechniciansController < ApplicationController
  def index
    authorized_scope = policy_scope(
      User,
      policy_scope_class: TechnicianPolicy::Scope
    )
    technicians = Technician::List.result(
      scope: authorized_scope
    ).technicians

    authorize technicians, policy_class: TechnicianPolicy

    render json: technicians, status: :ok
  end
end
