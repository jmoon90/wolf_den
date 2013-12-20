require 'spec_helper'

describe Comment do
  it { should belong_to :post }

  it { should have_valid(:post).when(Post.new) }
  it { should_not have_valid(:post).when(nil) }

  it { should have_valid(:body).when('Hello friend. I disagree with you') }
  it { should_not have_valid(:body).when(nil, '') }

  it { should have_valid(:email).when('jmoon@aol.com', 'asdaa@gmail.com') }
  it { should_not have_valid(:email).when(nil, '', 'asdasd', 'asd@sa') }
end
