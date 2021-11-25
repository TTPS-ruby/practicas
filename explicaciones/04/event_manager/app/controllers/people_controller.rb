class PeopleController < ApplicationController
  load_and_authorize_resource :event
  load_and_authorize_resource :person, through: :event

  # GET /people
  def index
    @people = @event.people.eager_load(event: :event_type)
  end

  # GET /people/1
  def show; end

  # GET /people/new
  def new
  end

  # GET /people/1/edit
  def edit; end

  # POST /people
  def create
    @person = @event.people.new(person_params)

    if @person.save
      redirect_to @person, notice: 'Person was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /people/1
  def update
    if @person.update(person_params)
      redirect_to @person, notice: 'Person was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /people/1
  def destroy
    @person.destroy
    redirect_to people_url, notice: 'Person was successfully destroyed.'
  end

  private

  # Only allow a list of trusted parameters through.
  def person_params
    params.require(:person).permit(:first_name, :last_name, :confirmed)
  end
end
