module MailboxHelper

private
	def mailbox
		@mailbox ||= current_user.mailbox
	end
end
