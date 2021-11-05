class SubmitsController < ApplicationController
    def index
        @quote = Quote.last
    end
end
