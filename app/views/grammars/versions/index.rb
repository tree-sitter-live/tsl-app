# frozen_string_literal: true

module TreeSitterLive
  module Views
    module Grammars
      module Versions
        class Index < TreeSitterLive::View
          include Deps[grammar_repo: 'repos.grammar_repo', version_repo: 'repos.version_repo']

          expose :grammar do |grammar_id:|
            grammar_repo.find(grammar_id)
          end

          expose :versions do |grammar|
            grammar.versions
          end
        end
      end
    end
  end
end
