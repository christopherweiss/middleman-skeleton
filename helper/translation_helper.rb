# ---------------------------
# Translation Helper
# ---------------------------
module TranslationHelper
  class << self
    def registered(app)
      app.helpers Translation
    end
    alias :included :registered
  end

  module Translation
    def t(*args)
      I18n.t(*args)
    end
  end
end

::Middleman::Extensions.register(:translation_helper, TranslationHelper) 