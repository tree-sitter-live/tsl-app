# frozen_string_literal: true

module TreeSitterLive
  module Views
    module Grammars
      module Versions
        class New < TreeSitterLive::View
          include Deps[grammar_repo: 'repos.grammar_repo']

          expose :grammar do |grammar_id:|
            grammar_repo.find(grammar_id)
          end

          expose :errors, default: Dry::Core::EMPTY_HASH
        end
      end
    end
  end
end
