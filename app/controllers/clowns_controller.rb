class ClownsController < ApplicationController
  def index
    @clowns = Clown.all
    render template: "clowns/index"
  end

  def create
    @clown = Clown.new(
      name: params["name"],
      rate: params["rate"],
    )
    @clown.save
    render template: "clowns/show"
  end

  def show
    @clown = Clown.find_by(id: params["id"])
    render template: "clowns/show"
  end
end
