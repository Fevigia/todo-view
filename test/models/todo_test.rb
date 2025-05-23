require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  # Test validations
  test 'should not save todo without title' do
    todo = Todo.new(description: 'Test description', status: 'pending')
    assert_not todo.save, 'Saved the todo without a title'
  end

  test 'should not save todo without description' do
    todo = Todo.new(title: 'Test Todo', status: 'pending')
    assert_not todo.save, 'Saved the todo without a description'
  end

  test 'should not save todo without status' do
    todo = Todo.new(title: 'Test Todo', description: 'Test description')
    assert_not todo.save, 'Saved the todo without a status'
  end

  test 'should save todo with all required fields' do
    todo = Todo.new(title: 'Test Todo', description: 'Test description', status: 'pending')
    assert todo.save, "Couldn't save the todo with all required fields"
  end
end
