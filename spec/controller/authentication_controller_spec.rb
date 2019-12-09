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
                #print('USERS:', users_before)
                post :signup, :user => {:first_name => 'f', :last_name => 'g', :email => 'h', :created_at => '', :updated_at => '', :password => 'j'}
                #print('USERS2:', User.count)
                expect(User.count).not_to eq(users_before)

            end
            
            it 'should reroute to signin' do
			    post :create, :user => {:user => :first_name }
			    expect(response).to redirect_to root_path
                #expect(response).to redirect_to proposals_path
		    end
		end
    end
end
