require 'spec_helper'

describe 'pdsh' do
  context 'supported operating systems' do
    on_supported_os.each do |os, facts|
      context "on #{os}" do
        let(:facts) do
          facts
        end

        context "pdsh class without any parameters on #{osfamily}" do
          let(:params) {{ }}

          it { is_expected.to compile.with_all_deps }

          it { is_expected.to contain_class('pdsh::params') }
          it { is_expected.to contain_class('pdsh::install').that_comes_before('pdsh::config') }
          it { is_expected.to contain_class('pdsh::config') }
          it { is_expected.to contain_class('pdsh::service').that_subscribes_to('pdsh::config') }

          it { is_expected.to contain_service('pdsh') }
          it { is_expected.to contain_package('pdsh').with_ensure('present') }
        end
      end
    end
  end

  context 'unsupported operating system' do
    describe 'pdsh class without any parameters on Solaris/Nexenta' do
      let(:facts) {{
        :osfamily        => 'Solaris',
        :operatingsystem => 'Nexenta',
      }}

      it { expect { is_expected.to contain_package('pdsh') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end

