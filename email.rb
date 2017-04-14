# require 'sendgrid-ruby'
# include SendGrid
#
# from = Email.new(email: params[:from])
# subject = 'Hello World from the SendGrid Ruby Library!'
# to = Email.new(email: 'leilamafoud@gmail.com')
# content = Content.new(type: 'text/plain', value: 'Hello, Email!')
# mail = Mail.new(from, subject, to, content)
# sg = SendGrid::API.new(api_key:"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")
# response = sg.client.mail._('send').post(request_body: mail.to_json)
# puts response.status_code
# puts response.body
# puts response.headers
