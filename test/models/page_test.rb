require 'test_helper'

describe Page do

    it "return an array of pages using the correct local" do
      out = Page.footer(:en)
      assert_equal 1, out.length
      assert_equal 'My title', out.first.title
    end
end
