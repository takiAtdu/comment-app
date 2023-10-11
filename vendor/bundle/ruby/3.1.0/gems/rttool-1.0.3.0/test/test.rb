#!/usr/bin/env ruby
require 'pathname'
require 'test/unit'
class TestRTtool < Test::Unit::TestCase
=begin eev
= How to make test files
 (eecd2)
cd ..; rt2 -r rt/rt2html-lib examples/test1.rt > examples/test1.html
cd ..; rt2 -r rt/rt2html-lib examples/test2.rt > examples/test2.html
cd ..; rt2 -r rt/rt2html-lib examples/escape.rt > examples/escape.html
cd ..; rd2  --with-part=RT:rt examples/rttest.rd > examples/rttest.html
=end
  def rt2html(name)
    Dir.chdir(Pathname.new(__FILE__).dirname.parent) do 
      @html = "examples/#{name}.html"
      @rt = "examples/#{name}.rt"
      assert_equal File.read(@html), `ruby -Itest -Ilib bin/rt/rt2 -r rt/rt2html-lib #{@rt}`
    end
  end

  def test__test1
    # (find-filez "test1.rt test1.html" "../examples/")
    rt2html "test1"
  end

  def test__test2
    # (find-filez "test2.rt test2.html" "../examples/")
    rt2html "test2"
  end

  def test__escape
    # (find-filez "escape.rt escape.html" "../examples/")
    rt2html "escape"
  end

end


class TestRDRT2 < Test::Unit::TestCase
  def rdrt2(name)
    ENV['RUBYLIB'] = "../lib"
    @html = "examples/#{name}.html"
    @rd = "examples/#{name}.rd"
    Dir.chdir(Pathname.new(__FILE__).dirname.parent) do 
      assert_equal File.read(@html), `ruby -Ilib bin/rt/rdrt2 #{@rd}`
    end
  end

  def test_rttest
    # (find-filez "rttest.rd rttest.html" "../examples/")
    rdrt2 "rttest"
  end
  
  
end
