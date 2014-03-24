require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  describe user do
    
    context 'should validate presence of' do
      describe 'email' do
        it { should validate_presence_of :email }
      end
      describe 'password' do
        it { should validate_presence_of :password }
      end
      describe 'twitter' do
        it { should validate_presence_of :twitter }
      end
    end

  end

end
