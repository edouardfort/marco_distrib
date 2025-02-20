class UsersRoomsController < ApplicationController
  before_action :set_users_room, only: %i[ show edit update destroy ]

  # GET /users_rooms or /users_rooms.json
  def index
    @users_rooms = UsersRoom.all
  end

  # GET /users_rooms/1 or /users_rooms/1.json
  def show
  end

  # GET /users_rooms/new
  def new
    @users_room = UsersRoom.new
  end

  # GET /users_rooms/1/edit
  def edit
  end

  # POST /users_rooms or /users_rooms.json
  def create
    @users_room = UsersRoom.new(users_room_params)

    respond_to do |format|
      if @users_room.save
        format.html { redirect_to @users_room, notice: "Users room was successfully created." }
        format.json { render :show, status: :created, location: @users_room }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @users_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_rooms/1 or /users_rooms/1.json
  def update
    respond_to do |format|
      if @users_room.update(users_room_params)
        format.html { redirect_to @users_room, notice: "Users room was successfully updated." }
        format.json { render :show, status: :ok, location: @users_room }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @users_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_rooms/1 or /users_rooms/1.json
  def destroy
    @users_room.destroy!

    respond_to do |format|
      format.html { redirect_to users_rooms_path, status: :see_other, notice: "Users room was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_room
      @users_room = UsersRoom.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def users_room_params
      params.expect(users_room: [ :user_id_id, :room_number_id ])
    end
end
