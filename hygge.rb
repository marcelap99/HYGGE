require 'sinatra'
require 'sendgrid-ruby'
include SendGrid


get "/" do
  erb :home
# puts "THE PARAMS ARE = #{params}"
end

get "/ourstory" do
  erb :ourstory
end

get "/shop" do
  erb :shop
end

get "/sale" do
  erb :sale
end

get "/campaign" do
  erb :campaign
end

get "/contact" do
  erb :form_display
end


post "/form_response" do
  from = SendGrid::Email.new(email: params[:from])
  to = SendGrid::Email.new(email:'leilamafoud@gmail.com')
  subject = params[:subject]
  content = SendGrid::Content.new(type: 'text/plain', value: params[:content])
  mail = SendGrid::Mail.new(from, subject, to, content)
  sg = SendGrid::API.new(api_key: ENV["SENDGRID_API_KEY"])
  response = sg.client.mail._('send').post(request_body: mail.to_json)
  puts response.status_code
  puts response.body

  # erb :form_display
  #looks like a refresh
  redirect "/"

end
