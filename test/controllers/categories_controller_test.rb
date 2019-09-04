require "test_helper"

describe CategoriesController do
  let(:category) { categories :one }

  it "gets index" do
    get categories_url
    value(response).must_be :success?
  end

  it "gets new" do
    get new_category_url
    value(response).must_be :success?
  end

  it "creates category" do
    expect {
      post categories_url, params: { category: { description: category.description, title: category.title } }
    }.must_change "Category.count"

    must_redirect_to category_path(Category.last)
  end

  it "shows category" do
    get category_url(category)
    value(response).must_be :success?
  end

  it "gets edit" do
    get edit_category_url(category)
    value(response).must_be :success?
  end

  it "updates category" do
    patch category_url(category), params: { category: { description: category.description, title: category.title } }
    must_redirect_to category_path(category)
  end

  it "destroys category" do
    expect {
      delete category_url(category)
    }.must_change "Category.count", -1

    must_redirect_to categories_path
  end
end
