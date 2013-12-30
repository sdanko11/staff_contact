require 'spec_helper'

describe Contact do
  
  it { should have_valid(:email_address).when('test@test.com', 'test+spam@gmail.com') }
  it { should_not have_valid(:email_address).when('', nil) }

  it { should have_valid(:subject).when('ben', 'steve') }
  it { should_not have_valid(:subject).when('', nil) }


  it { should have_valid(:first_name).when('sdfsdaf', 'steveie') }
  it { should_not have_valid(:first_name).when('', nil) }


  it { should have_valid(:last_name).when('sdfsdaf', 'steveie') }
  it { should_not have_valid(:last_name).when('', nil) }


  it { should have_valid(:description).when('cool site guys', 'this site helps me learn alot') }
  it { should_not have_valid(:description).when('', nil) }

end