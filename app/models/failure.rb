# frozen_string_literal: true

class Failure < Result
  def initialize(errors)
    super(success: false, errors:)
  end
end
