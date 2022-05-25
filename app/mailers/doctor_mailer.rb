class DoctorMailer < ApplicationMailer
    def doctor_welcome_email
        @doctor = params[:doctor]
        mail(to: @doctor.email, subject: "Welcome to the team")
    end
end
