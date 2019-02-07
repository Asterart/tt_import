class CandidatesController < ApplicationController

  def index
    @candidates = Candidate.paginate(page: params[:page], per_page: 12)
  end

  def new
    @candidate = Candidate.new
  end

  def create
    helpers.import_candidates(params[:candidate][:file])
    redirect_to candidates_url
  end

  def destroy
    @candidate = Candidate.find(params[:email]).destroy
    redirect_to candidates_url
  end

  private

  def candidate_params
    params.require(:candidate).permit(:name, :email, :phone)
  end

end
