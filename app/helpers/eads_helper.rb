module EadsHelper
  def collection_has_online_content(unitid)
    solr_connection = ActiveFedora.solr.conn
    fq = 'source_tesim:' + unitid

    response = solr_connection.get 'select', params: { fq: fq, rows: '1' }
    collection_length = response['response']['docs'].length

    if collection_length > 0
      true
    else
      false
    end
  end

  def show_collection_link(id)
    # This can't be right any more...
    "/catalog/" + id
  end

  def show_finding_aid_link(id)
    "/finding_aids/" + id
  end

  def physdesc_split(ead)
    result = ""
    physdescs = ead.find_by_terms(:physdesc)

    unless physdescs.nil?
      physdescs.each do |physdesc|
        physdesc.children.each do |child|
          # <physdesc>'s text is a child;  also process text of any <extent> or other child elements
          child_text = child.text.strip
          next if child_text.empty?
          child_text.split(";").each do |child_text_part| # also split on semi-colons
            child_text_part_text = child_text_part.strip
            unless child_text_part_text.empty?
              result << (result.empty? ? "" : "<br>") + child_text_part_text
            end
          end
        end
      end
    end

    result
  end

  def abstract(ead)
    result = ""
    abstract = ead.find_by_terms(:abstract)

    if abstract.nil? || abstract.empty?
      bioghistps = ead.find_by_terms(:bioghistp)
      result = bioghistps.first.text unless bioghistps.nil? || bioghistps.empty?
    else
      result = abstract.first.text
    end

    result
  end

  def eadid(ead)
    result = ""
    url = ""
    eadid = ead.find_by_terms_and_value(:eadid)
    unless eadid.nil? || eadid.empty?
      first_eadid = eadid.first
      result = first_eadid.text
      url_attr = first_eadid.attribute("url")
      url = url_attr.text unless url_attr.nil?
    end

    return result, url
  end

  def unitid(ead)
    result = ""
    unitid = ead.find_by_terms_and_value(:unitid)

    unless unitid.nil?
      result = unitid.text
    end

    return result
  end

end
