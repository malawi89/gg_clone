# Preview all emails at http://localhost:3000/rails/mailers/area_mailer
class AreaMailerPreview < ActionMailer::Preview
  def weekly

    AreaMailer.weekly
  end
end
