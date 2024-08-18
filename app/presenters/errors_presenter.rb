# frozen_string_literal: true

class ErrorsPresenter
  def initialize(errors)
    @errors = errors
  end

  def as_json
    errors_list = []

    @errors.each do |active_model_error|
      errors_list.push({
        error_type: active_model_error.type.upcase,
        error_message: active_model_error.message,
        path: ['body', active_model_error.attribute].join('.')
      })
    end

    errors_list.as_json
  end
end
