# Chef InSpec test for recipe apache::default

# The Chef InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

describe package('telnet') do
  it { should be_installed }
end

describe package('httpd') do
  it { should be_installed }
end
