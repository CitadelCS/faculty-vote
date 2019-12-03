class ProposalsController < ApplicationController
  def index 
    sort = params[:sort] || session[:sort]
    case sort
    
    when 'date'
      ordering,@date_header = {:date => :asc}, 'hilite'
    end
    
    @proposals = Proposal.order(ordering)
  end
  
  def new
  end
  
  def remove
  end
  
  def create
    @proposal = Proposal.create!(:name => params[:name]["Proposal Name"], :created_at => "#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}", :updated_at => "#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}")
    redirect_to proposals_path
  end
  
  def destroy
    @proposal = Proposal.find(params[:id])
    @proposal.destroy
    redirect_to proposals_path
  end
  
  def show
  end
  
  def closed
  end
  
  def edit
    @proposal = Proposal.find(params[:id])
    if (params[:state] == '1')
      @proposal.increment!(:number_yes)
      redirect_to proposals_path
    end
    if (params[:state] == '2')
      @proposal.increment!(:number_no)
      redirect_to proposals_path
    end
    if (params[:state] == '3')
      @proposal.increment!(:number_abstain)
      redirect_to proposals_path
    end
  end
  
  def update
  end
end