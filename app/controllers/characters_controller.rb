class CharactersController < ApplicationController
  # GET /characters
  # GET /characters.xml
  def index
    @characters = Character.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @characters }
    end
  end

  # GET /characters/1
  # GET /characters/1.xml
  def show
    @character = Character.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @character }
    end
  end

  # GET /characters/new
  # GET /characters/new.xml
  def new
    @character = Character.new
		@races = Race.order("name").map {|u| [u.name, u.id]}
		@character.race = Race.find_by_id 1
		@character.strength = 10
		@character.dexterity = 10
		@character.constitution = 10
		@character.intelegence = 10
		@character.wisdom = 10
		@character.charisma = 10
		
		@character.save

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @character }
    end
  end

  # GET /characters/1/edit
  def edit
    @character = Character.find(params[:id])
  end

  # POST /characters
  # POST /characters.xml
  def create
    @character = Character.new(params[:character])

    respond_to do |format|
      if @character.save
        flash[:notice] = 'Character was successfully created.'
        format.html { redirect_to(@character) }
        format.xml  { render :xml => @character, :status => :created, :location => @character }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @character.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /characters/1
  # PUT /characters/1.xml
  def update
    @character = Character.find(params[:id])

    respond_to do |format|
      if @character.update_attributes(params[:character])
        flash[:notice] = 'Character was successfully updated.'
        format.html { redirect_to(@character) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @character.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.xml
  def destroy
    @character = Character.find(params[:id])
    @character.destroy

    respond_to do |format|
      format.html { redirect_to(characters_url) }
      format.xml  { head :ok }
    end
  end

  def stat_inc
    @character = Character.find(params[:id])
    stat = @character.send(params[:stat])
    stat = stat + 1 if stat < 18
    @character.write_attribute(params[:stat], stat)
    @character.save
    render :partial  => params[:stat]
  end
  
  def stat_dec
    @character = Character.find(params[:id])
    stat = @character.send(params[:stat])
    stat = stat - 1 if stat > 7
    @character.write_attribute(params[:stat], stat)
    @character.save
    render :partial  => params[:stat]
  end
  
  def update_points
    @character = Character.find_by_id(params[:id])
    render :text => @character.total_points
  end
  
  def update_race
    @character = Character.find_by_id(params[:id])
    @character.race = Race.find_by_id(params[:race_id])
    @character.save
    render :partial => 'table'
  end
	
end
