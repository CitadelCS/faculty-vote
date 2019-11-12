require 'rails_helper'

describe AuthenticationController, type: 'controller' do
    context 'signup' do
        describe 'user can be created' do
            it 'responds to the signup_route' do
                get :signup
			    expect(response).to render_template :signup
            end
            
            it 'should add new user to db' do
                users_before = User.count
                post :signup, :user => {:user => :first_name }
                expect(User.count).not_to eq(users_before)
            end
            
            it 'should go to proposals route' do
			    post :create, :user => {:user => :first_name }
                expect(response).to redirect_to proposals_path
		    end
		end
    end
end
