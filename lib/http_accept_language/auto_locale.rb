require 'active_support/concern'

module HttpAcceptLanguage
  module AutoLocale
    extend ActiveSupport::Concern

    included do
      if respond_to?(:prepend_before_action)
        prepend_before_action :set_locale
      else
        prepend_before_filter :set_locale
      end
    end

    private

    def set_locale
      I18n.locale = 'ja'
    end
  end
end
