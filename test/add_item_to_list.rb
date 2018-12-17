require 'test_helper'

class ListTest < ActiveSupport::TestCase
  test 'items added to list' do
    list = List.create(title: "test list", description: "new list")
    list.list_items.create(description: "new item")
    assert_not_nil list.list_items.first
  end
end
