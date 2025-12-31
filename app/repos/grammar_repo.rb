# frozen_string_literal: true

module TreeSitterLive
  module Repos
    class GrammarRepo < TreeSitterLive::DB::Repo
      commands :create, update: :by_pk, delete: :by_pk

      def all = grammars.order { created_at.asc }.to_a
      def find(id) = grammars.combine(:versions).by_pk(id).one
    end
  end
end
