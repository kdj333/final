class VideosController < ApplicationController

  def create
      Video.create("title" => params["title"],
                   "video_url" => params["url"])

      redirect_to "/videos"
    end

  def destroy
    video = Video.find_by("id" => params["id"])
    video.delete
    redirect_to "/videos"
  end

  def update
    video = Video.find_by("id" => params["id"])
    video.update("title" => params["title"], "video_url" => params["url"])
    redirect_to "/videos"
  end


end
