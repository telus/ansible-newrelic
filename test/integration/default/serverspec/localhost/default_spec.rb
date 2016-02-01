require 'spec_helper'

describe 'ansible-newrelic::default' do

  describe package('newrelic-sysmond') do
    it { should be_installed.by('apt') }
  end

  describe package('newrelic-php5') do
    it { should be_installed.by('apt') }
  end

  describe service('newrelic-sysmond') do
    it { should be_installed }
    it { should be_enabled }
  end

end
