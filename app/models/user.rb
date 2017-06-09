class User < ActiveRecord::Base
  include Hyrax::User

  # Connects this user object to Role behaviors.
  include Hydra::RoleManagement::UserRoles

  attr_accessor :password


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

  ##
  # @see #username
  def to_s
    username
  end

  ##
  # @todo temporarily adding this for impersonate2 but this should be
  #   based on roles and saner
  def admin?
    true
  end

  ##
  # @see #username
  def user_key
    username
  end

  ##
  # @note Update this method to return the string you would like used for the
  #   user name stored in fedora objects.
  #
  # @todo Remove hard-coded dependency on Devise::LDAP::Adapter, allow
  #   LDAP-connectionless display names in the test envioronment.
  def display_name
    name_attr = Devise::LDAP::Adapter.get_ldap_param(username, "tuftsEduDisplayNameLF")
    if name_attr.nil?
      'test name'
    else
      name_attr[0]
    end
  end
end
