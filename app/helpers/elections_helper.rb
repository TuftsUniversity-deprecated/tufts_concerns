module ElectionsHelper
  def show_elections_link(id)
    return "http://elections.lib.tufts.edu/catalog/" + id
  end
end
