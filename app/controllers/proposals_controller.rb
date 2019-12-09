class ProposalsController < ApplicationController
  def index 
    if (session[:user_id] == '0')
      redirect_to '/'
    end
    sort = params[:sort] || session[:sort]
    case sort
    
    when 'date'
      ordering,@date_header = {:date => :asc}, 'hilite'
    end
    
    @proposals = Proposal.order(ordering)
    @proposals = Proposal.where(:status => 0)
    
  end

  def show
    if (session[:user_id] == '0')
      redirect_to '/'
    end
    @proposals = Proposal.where(:status => 1)
  end
  
  def new
    if (session[:user_id] == '0')
      redirect_to '/'
    end
    # default: render 'new' template
  end
  
  
  def remove
    if (session[:user_id] == '0')
      redirect_to '/'
    end
  end
  
  def create
    if (session[:user_id] == '0')
      redirect_to '/'
    end
    @proposal = Proposal.create!(:name => params[:name]["Proposal Name"], :status => '0', :created_at => "#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}", :updated_at => "#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}")
    system("curl https://faculty-vote-email-service.herokuapp.com/")
    redirect_to proposals_path
  end
  
  def destroy
    if (session[:user_id] == '0')
      redirect_to '/'
    end
    @proposal = Proposal.find(params[:id])
    @proposal.destroy
    redirect_to proposals_path
  end
  
  def show
    if (session[:user_id] == '0')
      redirect_to '/'
    end
  end
  
  def closed
    if (session[:user_id] == '0')
      redirect_to '/'
    end
  end
  
  def edit
    if (session[:user_id] == '0')
      redirect_to '/'
    end
    
    if (params[:state] == '1')
      @decision = 'yes'
    end
    if (params[:state] == '2')
      @decision = 'no'
    end
    if (params[:state] == '3')
      @decision = 'abstain'
    end
    
    if (Vote.exists?(user_id: params[:user_id], proposal_id: params[:id]))
      redirect_to proposals_path
    else
      @vote = Vote.create!({:user_id => params["user_id"], :proposal_id => params["id"], :vote_type => @decision, :created_at => "#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}", :updated_at => "#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}"})
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
    
    
    
  end
  
  def update
    if (session[:user_id] == '0')
      redirect_to '/'
    end
  end
end