require 'curation_concerns'

class User < ActiveRecord::Base
  # Connects this user object to Hydra behaviors.
  include Hydra::User
  # Connects this user object to Curation Concerns behaviors.
  include CurationConcerns::User



  if Blacklight::Utils.needs_attr_accessible?
    attr_accessible :username, :password, :password_confirmation
  end
  # Connects this user object to Blacklights Bookmarks.
  include Blacklight::User
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :ldap_authenticatable, :trackable

  # Method added by Blacklight; Blacklight uses #to_s on your
  # user class to get a user-displayable login/identifier for
  # the account.

  def to_s
    username
  end

  # TODO : temporarily adding this for impersonate2 but this should be
  # based on roles and saner
  def admin?
    true
  end

  def user_key
    username
  end

  # update this method to return the string you would like used for the user name stored in fedora objects.
  def display_name
    Devise::LDAP::Adapter.get_ldap_param(username, "tuftsEduDisplayNameLF")[0]
  end
end
