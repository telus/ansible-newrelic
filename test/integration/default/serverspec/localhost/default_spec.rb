require 'spec_helper'

describe 'ansible-newrelic::default' do

  describe package('newrelic-sysmond') do
    it { should be_installed.by('apt') }
  end

   describe service('newrelic-sysmond') do
    it { should be_enabled }
    it { should be_running }
  end

  describe service('php5-fpm') do
    it { should be_enabled }
    it { should be_running }
  end

end
