class NotificationMailer < ApplicationMailer
    default from: "no-reply@nomnom.com"
    @place = comment.place
    @place_owner = @place.user
    def comment_added(comment)
        mail(to: @place_owner.email,
            subject: "A comment has been added to #{@place.name}")
    end
end
