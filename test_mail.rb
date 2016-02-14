require 'mail'

Mail.defaults do
  delivery_method(:smtp, {
    address: "smtp.mailgun.org",
    domain: "smtp.mailgun.org",
    port: 587,
    user_name: "<default SMTP login>",
    password: "<default password>",
  })
end

mail = Mail.new do
  from     "crap@crap.com"
  to       "hi.ogawa.zz@gmail.com"
  subject  "hey, this is amazing"
  body     "blaaaaaaaaaa, blaaaaaaaaaaaaa"
end

mail.deliver
