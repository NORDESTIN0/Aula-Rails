class WelcomeController < ApplicationController
    def index
        cookies[:curso] = "Teste cookies etc etc"
    end
end