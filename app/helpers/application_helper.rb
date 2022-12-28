module ApplicationHelper
    def locale(locale)
        I18n.locale == :en ? "United States":"Brazilian Portuguese"
    end
end
