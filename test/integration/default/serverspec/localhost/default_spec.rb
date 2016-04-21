require 'spec_helper'

describe 'ansible-newrelic::default' do

  describe package('newrelic-sysmod') do
    it { should be_installed.by('apt') }
  end

   describe service('newrelic') do
    it { should be_enabled }
    it { should be_running }
  end

end
