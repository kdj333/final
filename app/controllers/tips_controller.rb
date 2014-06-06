class TipsController < ApplicationController

def create
    Tip.create("video_id" => params["video_id"], "user_id" => cookies["user_id"], "content" => params["content"])
    redirect_to "/videos/#{params["video_id"]}", :notice => "Thanks for your swing tip!"

  end


end
