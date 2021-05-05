# TODO: Write documentation for `Cornerstone`

require "dotenv"
require "jwt"
require "./cornerstone/*"

module Cornerstone
  Dotenv.load

  payload = { "foo" => "bar" }

  token = Helpers.encode_payload(payload)

  puts token

  payload = Helpers.verify_token(token)

  puts payload
end
