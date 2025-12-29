# frozen_string_literal: true

module TreeSitterLive
  module Views
    module Grammars
      class Index < TreeSitterLive::View
        include Deps['repos.grammar_repo']

        expose :grammars do
          grammar_repo.all
        end
      end
    end
  end
end
