class ScavengerHuntsController < ApplicationController
  # GET /scavenger_hunts
  # GET /scavenger_hunts.json
  def index
    @scavenger_hunts = ScavengerHunt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scavenger_hunts }
    end
  end

  # GET /scavenger_hunts/1
  # GET /scavenger_hunts/1.json
  def show
    @scavenger_hunt = ScavengerHunt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scavenger_hunt }
    end
  end

  # GET /scavenger_hunts/new
  # GET /scavenger_hunts/new.json
  def new
    @scavenger_hunt = ScavengerHunt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scavenger_hunt }
    end
  end

  # GET /scavenger_hunts/1/edit
  def edit
    @scavenger_hunt = ScavengerHunt.find(params[:id])
  end

  # POST /scavenger_hunts
  # POST /scavenger_hunts.json
  def create
    @scavenger_hunt = ScavengerHunt.new(params[:scavenger_hunt])

    respond_to do |format|
      if @scavenger_hunt.save
        format.html { redirect_to @scavenger_hunt, notice: 'Scavenger hunt was successfully created.' }
        format.json { render json: @scavenger_hunt, status: :created, location: @scavenger_hunt }
      else
        format.html { render action: "new" }
        format.json { render json: @scavenger_hunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scavenger_hunts/1
  # PUT /scavenger_hunts/1.json
  def update
    @scavenger_hunt = ScavengerHunt.find(params[:id])

    respond_to do |format|
      if @scavenger_hunt.update_attributes(params[:scavenger_hunt])
        format.html { redirect_to @scavenger_hunt, notice: 'Scavenger hunt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scavenger_hunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scavenger_hunts/1
  # DELETE /scavenger_hunts/1.json
  def destroy
    @scavenger_hunt = ScavengerHunt.find(params[:id])
    @scavenger_hunt.destroy

    respond_to do |format|
      format.html { redirect_to scavenger_hunts_url }
      format.json { head :no_content }
    end
  end
end
