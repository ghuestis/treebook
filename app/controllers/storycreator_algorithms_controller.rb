class StorycreatorAlgorithmsController < ApplicationController
  # GET /storycreator_algorithms
  # GET /storycreator_algorithms.json
  def index
    @storycreator_algorithms = StorycreatorAlgorithm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @storycreator_algorithms }
    end
  end

  # GET /storycreator_algorithms/1
  # GET /storycreator_algorithms/1.json
  def show
    @storycreator_algorithm = StorycreatorAlgorithm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @storycreator_algorithm }
    end
  end

  # GET /storycreator_algorithms/new
  # GET /storycreator_algorithms/new.json
  def new
    @storycreator_algorithm = StorycreatorAlgorithm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @storycreator_algorithm }
    end
  end

  # GET /storycreator_algorithms/1/edit
  def edit
    @storycreator_algorithm = StorycreatorAlgorithm.find(params[:id])
  end

  # POST /storycreator_algorithms
  # POST /storycreator_algorithms.json
  def create
    @storycreator_algorithm = StorycreatorAlgorithm.new(params[:storycreator_algorithm])

    respond_to do |format|
      if @storycreator_algorithm.save
        format.html { redirect_to @storycreator_algorithm, notice: 'Storycreator algorithm was successfully created.' }
        format.json { render json: @storycreator_algorithm, status: :created, location: @storycreator_algorithm }
      else
        format.html { render action: "new" }
        format.json { render json: @storycreator_algorithm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /storycreator_algorithms/1
  # PUT /storycreator_algorithms/1.json
  def update
    @storycreator_algorithm = StorycreatorAlgorithm.find(params[:id])

    respond_to do |format|
      if @storycreator_algorithm.update_attributes(params[:storycreator_algorithm])
        format.html { redirect_to @storycreator_algorithm, notice: 'Storycreator algorithm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @storycreator_algorithm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storycreator_algorithms/1
  # DELETE /storycreator_algorithms/1.json
  def destroy
    @storycreator_algorithm = StorycreatorAlgorithm.find(params[:id])
    @storycreator_algorithm.destroy

    respond_to do |format|
      format.html { redirect_to storycreator_algorithms_url }
      format.json { head :no_content }
    end
  end

  #USE /storycreator_algorithms/use
  #USE /storycreator_algorithms/use.json
  def use (method_name, file)
    @storycreator_algorithm = StorycreatorAlgorithm.use(method_name, file)
  end
end
