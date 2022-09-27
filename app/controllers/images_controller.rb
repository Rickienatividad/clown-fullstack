class ImagesController < ApplicationController
  def create
    clown_image = Clown_Image.new(
      url: params["url"],
      clown_id: params["clown_id"],
    )
    clown_image.save
    render template: "images/new"
  end

  def show
    clown_image = Clown_Image.find_by(id: params["id"])
    render template: "images/show"
  end
end
