# typed: strong

module Increase
  class Page
    include Increase::BasePage

    Elem = type_member

    sig { returns(T.nilable(T::Array[Elem])) }
    def data
    end

    sig { params(_: T.nilable(T::Array[Elem])).returns(T.nilable(T::Array[Elem])) }
    def data=(_)
    end

    sig { returns(T.nilable(String)) }
    def next_cursor
    end

    sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
    def next_cursor=(_)
    end
  end
end
