module MailboxHelper
	def mailbox
		@mailbox ||= current_user.mailbox
	end

	def active_page(active_page)
    @active == active_page ? "active" : ""
  end
end
