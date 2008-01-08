require File.dirname(__FILE__) + '/../test_helper'

class JavascriptTest < LingoTest
	def test_comments
		lb = [Ohcount::LanguageBreakdown.new("javascript", "", "//comment", 0)]
		assert_equal lb, Ohcount::parse(" //comment", "javascript")
	end

	def test_comprehensive
		verify_parse("js1.js")
	end

	def test_comp2
		verify_parse("js2.js")
	end
end
