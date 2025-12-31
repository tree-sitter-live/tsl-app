# frozen_string_literal: true

module TreeSitterLive
  module Relations
    class Versions < TreeSitterLive::DB::Relation
      schema :versions, infer: true do
        associations do
          belongs_to :grammar
        end
      end
    end
  end
end
