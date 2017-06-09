# Generated via
#  `rails generate curation_concerns:work Work`
require 'rails_helper'

describe User do
  subject(:user) { described_class.new }

  describe '#admin?' do
    it 'marks all users as admin' do
      expect(user).to be_admin
    end
  end

  describe '#display_name' do
    it 'raises an error for LDAP undefined' do
      expect { user.display_name }.to raise_error Errno::ENOENT
    end

    it 'does something when LDAP is configured'
  end

  describe '#password' do
    let(:password) { 'moominpapa' }

    it 'defaults to nil' do
      expect(user.password).to be_nil
    end

    it 'is set by #password=' do
      expect { user.password = password }
        .to change { user.password }
        .to eq password
    end
  end

  describe '#to_s' do
    it 'aliases username' do
      expect(user.to_s).to eq user.username
    end
  end

  describe '#user_key' do
    it 'aliases username' do
      expect(user.user_key).to eq user.username
    end
  end

  describe '#username' do
    let(:username) { 'moominpapa' }

    it 'defaults to empty string' do
      expect(user.username).to eq ""
    end

    it 'does what it does' do
      expect { user.username = username }
        .to change { user.username }
        .to eq username
    end
  end
end
