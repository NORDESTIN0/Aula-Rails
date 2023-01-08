module ApplicationHelper
    def locale
        I18n.locale == :en ? "United States": "Brazilian Portuguese"
    end
end
