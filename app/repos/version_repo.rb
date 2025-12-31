# frozen_string_literal: true

module TreeSitterLive
  module Repos
    class VersionRepo < TreeSitterLive::DB::Repo
      commands :create, update: :by_pk, delete: :by_pk

      def all = versions.order { created_at.asc }.to_a

      def find_by_grammar(grammar_id)
        versions.where(grammar_id: grammar_id).order { created_at.asc }.to_a
      end
    end
  end
end
