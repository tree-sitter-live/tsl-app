# frozen_string_literal: true

module TreeSitterLive
  class Routes < Hanami::Routes
    resources :grammars do
      resources :versions
    end

    root to: 'grammars.index'

    slice :playground, at: '/playground' do
      root to: 'home.show'
    end
  end
end
