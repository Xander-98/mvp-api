class OtakusController < ApplicationController
  def create
    otaku = Otaku.create(
      anime_id: params[:anime_id],
      user_id: params[:user_id],
    )
    render json: otaku.as_json
  end
end
