class ProposalsController < ApplicationController
  def new_params
    params.requires(:proposal).permit(:name)
  end
  def index 
    sort = params[:sort] || session[:sort]
    case sort
    
    when 'date'
      ordering,@date_header = {:date => :asc}, 'hilite'
    end
    
    @proposals = Proposal.order(ordering)
  end

  def show
  end
  
  def new
    # default: render 'new' template
  end
  
  def create
    @proposal = Proposal.create!({:name => params[:name]["Proposal Name"], :created_at => "#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}", :updated_at => "#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}"})
    redirect_to proposals_path
  end
  
  def edit
    @proposal = Proposal.find params[:id]
  end

  def update
    @proposal = Proposal.find params[:id]
    @proposal.update_attributes!(proposal_params)
    redirect_to proposals_path(@proposal)
  end

  def destroy
    @proposal = Proposal.find(params[:id])
    @proposal.destroy
    redirect_to proposals_path
  end
end