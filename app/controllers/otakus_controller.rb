class OtakusController < ApplicationController
  def new
    otaku = Otaku.create(
      anime_id: params[:anime_id],
      user_id: current_user.id,
    )
    render json: otaku.as_json
  end

  def show_favorites
    if params[:user_id].blank?
    else
      user = params[:user_id]
      otaku = Otaku.where(user_id: user)
      render json: otaku.as_json
    end
  end

  def all_anime
    animes = HTTP.get("https://api.jikan.moe/v4/top/anime?filter=%22bypopularity%22&limit=10")
    anime_data = animes.parse(:json)
    render json: anime_data.as_json
  end

  def search_anime
    if params[:search].blank?
    else
      query = params[:search]
      anime_search = HTTP.get("https://api.jikan.moe/v4/anime?q=#{query}&order_by=title&sort=asc")
      anime_search_data = anime_search.parse(:json)
      render json: anime_search_data.as_json
    end
  end
end
