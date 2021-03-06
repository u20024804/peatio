class MemberMailer < ActionMailer::Base
  include Resque::Mailer

  default from: "noreply@peatio.com"

  def notify_signin(member_id)
    member = Member.find member_id
    mail to: member.email
  end
end
