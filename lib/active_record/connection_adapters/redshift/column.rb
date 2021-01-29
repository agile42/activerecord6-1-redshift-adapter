module ActiveRecord
  module ConnectionAdapters
    class RedshiftColumn < Column #:nodoc:
      delegate :oid, :fmod, to: :sql_type_metadata

      def initialize(name, default, sql_type_metadata = nil, null = true, default_function = nil, collation: nil, comment: nil, **)
        super name, default, sql_type_metadata, null, default_function
      end

      def array?(**)
        false
      end
    end
  end
end
