require 'rt/rt2html-lib'
require 'test/unit'

include RT
module Utils
  def uncomment(str)
    rep = "\001"
    #if str =~ /\A<!--\s+.+?\s+-->\n(.+)<!--\s+.+?\s+-->\n\n\Z/p# POSIX
    if str.gsub(/\n/, rep) =~ /\A<!--\s+.+?\s+-->#{rep}(.+)<!--\s+.+?\s+-->#{rep}#{rep}\Z/
      #$1
      $1.gsub(/#{rep}/, "\n")
    else
      assert_fail("not RTBlock format")
    end
  end
end

class RT2HTMLVisitorTest < Test::Unit::TestCase
  def setup
    @x = RT2HTMLVisitor::new
    @x.visit(RTParser::parse(<<-END))
    caption = Test Table

         , Human, == , Dog , ==
     ||  , M  , F ,M,F

      x  , 1.0 , 2.0, 1.1, 1.2
      y  , 0.4 , 0.5, 0.3, 0.1
    END
  end
  include Utils

  def test_setup
    lines =
      %Q[<table border="1">\n] +
      %Q[<caption>Test Table</caption>\n]
    assert_equal(lines, uncomment(@x.setup))
  end

  def test_teardown
    assert_equal(%Q[</table>\n], uncomment(@x.teardown))
  end

  def test_visit_Header
    lines =
      %Q[<thead>\n] +
      %Q[<tr><th rowspan="2"></th><th colspan="2">Human</th><th colspan="2">Dog</th></tr>\n] +
      %Q[<tr><th>M</th><th>F</th><th>M</th><th>F</th></tr>\n] +
      %Q[</thead>\n]
    assert_equal(lines, uncomment(@x.visit_Header))
  end

  def test_visit_Body
    lines =
      %Q[<tbody>\n] +
      %Q[<tr><td align="left">x</td><td align="right">1.0</td><td align="right">2.0</td><td align="right">1.1</td><td align="right">1.2</td></tr>\n] +
      %Q[<tr><td align="left">y</td><td align="right">0.4</td><td align="right">0.5</td><td align="right">0.3</td><td align="right">0.1</td></tr>\n] +
      %Q[</tbody>\n]
    assert_equal(lines, uncomment(@x.visit_Body))
  end

  def test0
    assert_equal(RT::RTCell, RT::RTCell::new("a").class)
  end

end

class RT2HTMLXSSTest < Test::Unit::TestCase
  def setup
    @x = RT2HTMLVisitor::new
    @x.visit(RTParser::parse(<<-END))
    caption = <b>XSS Test</b>

    <b>Test</b>, ==

    <b>1.0</b> , <b>a</b>
    END
  end
  include Utils

  def test_setup
    lines =
      %Q[<table border="1">\n] +
      %Q[<caption>&lt;b&gt;XSS Test&lt;/b&gt;</caption>\n]
    assert_equal(lines, uncomment(@x.setup))
  end

  def test_visit_Header
    lines =
      %Q[<thead>\n] +
      %Q[<tr><th colspan="2">&lt;b&gt;Test&lt;/b&gt;</th></tr>\n] +
      %Q[</thead>\n]
    assert_equal(lines, uncomment(@x.visit_Header))
  end

  def test_visit_Body
    lines =
      %Q[<tbody>\n] +
      %Q[<tr><td align="left">&lt;b&gt;1.0&lt;/b&gt;</td><td align="left">&lt;b&gt;a&lt;/b&gt;</td></tr>\n] +
      %Q[</tbody>\n]
    assert_equal(lines, uncomment(@x.visit_Body))
  end
end

