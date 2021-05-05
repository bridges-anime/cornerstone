require "jwt"

module Cornerstone
  class Helpers
    def self.verify_token(token, secret_key = ENV.fetch("SECRET_KEY"))
      JWT.decode(token, secret_key, JWT::Algorithm::HS256)
    end

    def self.encode_payload(payload, secret_key = ENV.fetch("SECRET_KEY"))
      JWT.encode(payload, secret_key, JWT::Algorithm::HS256)
    end
  end
end
