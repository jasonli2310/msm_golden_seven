class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render("actors/index.html.erb")
  end


  def new_form
    render("actors/new_form.html.erb")
  end

  def show
    @id = params["id"].to_i

    @link = Actor.find(@id)

    @name = @link[:name]

    @bio= @link[:bio]
    @dob = @link[:dob]
    @image_url = @link[:image_url]
    render("actors/show.html.erb")

  end

  def destroy
    @linkid = params[:id].to_i

    link = Actor.find(@linkid)
    link.delete

    redirect_to("actors/index.html.erb")
  end

def create_row
  @newname= params["name"]
    @newimage = params["image_url"]
    @newdob = params["dob"]
    @newbio = params["bio"]

    a = Actor.new
    a.name = @newname
    a.bio = @newbio
    a.dob = @newdob
    a.image_url= @newimage
    a.save

    redirect_to("actors/index.html.erb")
end

  def edit_form

    @id = params["id"].to_i
    @link = Actor.find(@id)

    @name = @link[:name]

    @bio= @link[:bio]
    @dob = @link[:dob]
    @image_url = @link[:image_url]

    render("actors/edit_form.html.erb")

  end

  def update_row

@id = params["id"].to_i
    @newname= params["name"]
      @newimage = params["image_url"]
      @newdob = params["dob"]
      @newbio = params["bio"]

      a = Actor.find(@id)
      a.name = @newname
      a.bio = @newbio
      a.dob = @newdob
      a.image_url= @newimage
      a.save

      redirect_to("actors/index.html.erb")

  end
end
