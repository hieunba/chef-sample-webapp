# InSpec test
describe package('mysql-server-5.5') do
    it { should be_installed }
end

describe service('mysql-default') do
  it { should be_enabled }
  it { should be_running }
end

describe port 3306 do
  it { should be_listening }
end
