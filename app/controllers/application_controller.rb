class ApplicationController < ActionController::API

  # NotAuthorized = Class.new(StandardError)
  #
  # rescue_from ApplicationController::NotAuthorized do |exception|
  #   render_error_page(status: 403, text: 'Forbidden')
  # end
  #
  # def firebase_verification(token)
  #   url = "https://www.googleapis.com/identitytoolkit/v3/relyingparty/getAccountInfo?key=#{ENV['FIREBASE_WEB_API_KEY']}"
  #   firebase_verification_call = HTTParty.post(url,
  #                                              headers: { 'Content-Type' => 'application/json' },
  #                                              body: { 'idToken' => token }.to_json )
  #   if firebase_verification_call.response.code == "200"
  #     firebase_infos = firebase_verification_call.parsed_response
  #   else
  #     raise ApplicationController::NotAuthorized
  #   end
  # end
  #
  # private
  #
  # def render_error_page(status:, text:)
  #   respond_to do |format|
  #     format.json { render json: {errors: [message: "#{status} #{text}"]}, status: status }
  #     format.any  { head status }
  #   end
  # end

end
