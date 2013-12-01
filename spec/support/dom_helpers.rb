module DomHelpers
  def t(*args)
    I18n.t(*args)
  end

  def tmid(key, *args)
    I18n.t("mongoid.attributes.#{key}", *args)
  end
end
