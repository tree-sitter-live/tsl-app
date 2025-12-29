# frozen_string_literal: true

module TreeSitterLive
  module Repos
    class GrammarRepo < TreeSitterLive::DB::Repo
      commands :create, delete: :by_pk

      def all = grammars.order { created_at.asc }.to_a
    end
  end
end
