# frozen_string_literal: true

class Result
  attr_reader :success, :data, :errors

  def initialize(success: true, data: nil, errors: {})
    @success = success
    @data = data
    @errors = errors
  end

  def success?
    @success
  end

  def failure?
    !success?
  end
end
