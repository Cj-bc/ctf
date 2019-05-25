Rails 5.2.1で作られたサイトです｡

https://katsudon.quals.beginners.seccon.jp

クーポンコードを復号するコードは以下の通りですが､まだ実装されてないようです｡

フラグは以下にあります｡ https://katsudon.quals.beginners.seccon.jp/flag

# app/controllers/coupon_controller.rb
class CouponController < ApplicationController
def index
end

def show
  serial_code = params[:serial_code]
  @coupon_id = Rails.application.message_verifier(:coupon).verify(serial_code)
  end
end


---
# https://katsudon.quals.beginners.seccon.jp/flag

BAhJIiVjdGY0YntLMzNQX1kwVVJfNTNDUjM3X0szWV9CNDUzfQY6BkVU--0def7fcd357f759fe8da819edd081a3a73b6052a
