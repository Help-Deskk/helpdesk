# frozen_string_literal: true

module Technician
  class List < Actor
    input  :scope, type: Enumerable
    output :technicians, type: Enumerable

    def call
      self.technicians = scope.order(created_at: :desc)
    end
  end
end
