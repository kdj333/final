class RatingsController < ApplicationController

  def create

    Rating.create("tip_id" => params["tip_id"], "user_id" => cookies["user_id"], "rating" => params["rating"])
    redirect_to "/videos/#{params["video_id"]}", :notice => "Thanks for your swing tip rating!"

  end


end
