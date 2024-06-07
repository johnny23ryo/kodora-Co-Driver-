class SpotsController < ApplicationController
  protect_from_forgery with: :null_session

  def index; end

  def restaurants
    handle_request('restaurants')
  end

  def rest_areas
    handle_request('rest_areas')
  end

  def tourist_spot
    handle_request('tourist_spot')
  end

  private

  def handle_request(spot_type)
    if request.post?
      render json: { place: fetch_recommended_place(params[:address], spot_type) }
    else
      render spot_type
    end
  end

  def fetch_recommended_place(address, spot_type)
    response = HTTParty.post(
      "https://api.openai.com/v1/chat/completions",
      headers: {
        "Content-Type" => "application/json",
        "Authorization" => "Bearer #{ENV['OPENAI_API_KEY']}"
      },
      body: {
        model: "gpt-4",
        messages: [
          { role: "system", content: "You are a helpful assistant that provides information in Japanese." },
          { role: "user", content: "住所「#{address}」の近くにあるおすすめの#{spot_type}の名前を1つ、50字以内で教えてください。" }
        ],
        max_tokens: 100
      }.to_json
    )

    if response.success?
      recommendation = JSON.parse(response.body).dig("choices", 0, "message", "content")&.strip
      { name: recommendation || "Recommendation is nil" }
    else
      { error: "OpenAI API request failed with code #{response.code}" }
    end
  rescue => e
    Rails.logger.error("Error fetching recommendation: #{e.message}")
    { error: "Unable to fetch recommendation" }
  end
end
