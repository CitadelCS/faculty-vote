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
#   -#  This file is app/views/proposals/open_proposals.html.haml
# %h1  Open Proposals

# %table#movies
#   %thead
#     %tr
#       %th Name 
#       %th Yes
#       %th No
#       %th Abstain
#       %th More
#   %tbody
#     - @proposals.each do |proposal|
#       %tr
#         %td= proposal.name 
#         %td= proposal.yes
#         %td= proposal.no
#         %td= proposal.abstain
#         %td= link_to "More about #{proposal.title}", proposal_path(proposal)

# = link_to 'Add new proposal', new_movie_proposal
end