# frozen_string_literal: true

class Success < Result
  def initialize(data)
    super(success: true, data:)
  end
end
