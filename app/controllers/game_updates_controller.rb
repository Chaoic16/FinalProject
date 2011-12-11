class GameUpdatesController < ApplicationController
  # GET /game_updates
  # GET /game_updates.json
  def index
    @game_updates = GameUpdate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @game_updates }
    end
  end

  # GET /game_updates/1
  # GET /game_updates/1.json
  def show
    @game_update = GameUpdate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @game_update }
    end
  end

  # GET /game_updates/new
  # GET /game_updates/new.json
  def new
    @game_update = GameUpdate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @game_update }
    end
  end

  # GET /game_updates/1/edit
  def edit
    @game_update = GameUpdate.find(params[:id])
  end

  # POST /game_updates
  # POST /game_updates.json
  def create
    @game_update = GameUpdate.new(params[:game_update])

    respond_to do |format|
      if @game_update.save
        format.html { redirect_to @game_update, notice: 'Game update was successfully created.' }
        format.json { render json: @game_update, status: :created, location: @game_update }
      else
        format.html { render action: "new" }
        format.json { render json: @game_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /game_updates/1
  # PUT /game_updates/1.json
  def update
    @game_update = GameUpdate.find(params[:id])

    respond_to do |format|
      if @game_update.update_attributes(params[:game_update])
        format.html { redirect_to @game_update, notice: 'Game update was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @game_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_updates/1
  # DELETE /game_updates/1.json
  def destroy
    @game_update = GameUpdate.find(params[:id])
    @game_update.destroy

    respond_to do |format|
      format.html { redirect_to game_updates_url }
      format.json { head :ok }
    end
  end
end
