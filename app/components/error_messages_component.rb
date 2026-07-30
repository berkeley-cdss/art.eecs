# Renders the validation errors for a record above a form.
class ErrorMessagesComponent < ApplicationComponent
  attr_reader :record

  def initialize(record:)
    @record = record
  end

  def render?
    record.errors.any?
  end
end
