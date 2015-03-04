require 'spec_helper'

describe 'pdsh' do
  context 'supported operating systems' do
    ['Debian', 'RedHat'].each do |osfamily|
      describe "pdsh class without any parameters on #{osfamily}" do
        let(:params) {{ }}
        let(:facts) {{
          :osfamily => osfamily,
        }}

        it { should compile.with_all_deps }

        it { should contain_class('pdsh::params') }
        it { should contain_class('pdsh::install').that_comes_before('pdsh::config') }
        it { should contain_class('pdsh::config') }
        it { should contain_class('pdsh::service').that_subscribes_to('pdsh::config') }

        it { should contain_service('pdsh') }
        it { should contain_package('pdsh').with_ensure('present') }
      end
    end
  end

  context 'unsupported operating system' do
    describe 'pdsh class without any parameters on Solaris/Nexenta' do
      let(:facts) {{
        :osfamily        => 'Solaris',
        :operatingsystem => 'Nexenta',
      }}

      it { expect { should contain_package('pdsh') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
