require 'test_helper'

describe Page do

  it "returns an array of pages using the correct locale" do
    out = Page.footer(:en)
    assert_equal 1, out.length
    assert_equal 'titre anglais', out.first.name
  end

  it "returns an array of pages using the correct locale" do
    out = Page.footer(:fr)
    assert_equal 1, out.length
    assert_equal 'titre français', out.first.name
  end
end
