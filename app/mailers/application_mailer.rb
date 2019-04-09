# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'olivier@next.mvc'
  layout 'mailer'
end
