# frozen_string_literal: true

module TreeSitterLive
  module Views
    module Grammars
      class New < TreeSitterLive::View
        expose :errors, default: Dry::Core::EMPTY_HASH
      end
    end
  end
end
