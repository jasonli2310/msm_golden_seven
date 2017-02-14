class DirectorsController < ApplicationController
  def index
    @directors = Director.all
    render("directors/index.html.erb")
  end


  def new_form
    render("directors/new_form.html.erb")
  end

  def show
    @id = params["id"].to_i

    @link = Director.find(@id)

    @name = @link[:name]

    @bio= @link[:bio]
    @dob = @link[:dob]
    @image_url = @link[:image_url]
    render("directors/show.html.erb")

  end

  def destroy
    id = params["id"].to_i

    link = Director.find(id)
    link.delete

    redirect_to("directors/index.html.erb")
  end

def create_row
  @newname= params["name"]
    @newimage = params["image_url"]
    @newdob = params["dob"]
    @newbio = params["bio"]

    a = Director.new
    a.name = @newname
    a.bio = @newbio
    a.dob = @newdob
    a.image_url= @newimage
    a.save

    redirect_to("directors/index.html.erb")
end

  def edit_form

    @id = params["id"].to_i
    @link = Director.find(@id)

    @name = @link[:name]

    @bio= @link[:bio]
    @dob = @link[:dob]
    @image_url = @link[:image_url]

    render("directors/edit_form.html.erb")

  end

  def update_row

@id = params["id"].to_i
    @newname= params["name"]
      @newimage = params["image_url"]
      @newdob = params["dob"]
      @newbio = params["bio"]

      a = Director.find(@id)
      a.name = @newname
      a.bio = @newbio
      a.dob = @newdob
      a.image_url= @newimage
      a.save

      redirect_to("directors/index.html.erb")

  end
end
