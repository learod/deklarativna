require 'test/unit'
require 'deklarativna_core'

class DeklarativnaCoreTest < Test::Unit::TestCase
  include Deklarativna

  def test_nesting_renderable
    renderable = NestingRenderable.new { |instance|
                   instance.tag_name = "html"
                 }
    assert_equal "<html></html>", renderable.to_s
    renderable = NestingRenderable.new { |instance|
                   instance.tag_name = "html"
                   instance.content = Proc.new {
                     NestingRenderable.new { |instance|
                       instance.tag_name = "body"
                     }
                   }
                 }
    assert_equal "<html><body></body></html>", renderable.to_s
  end

  def test_comment_renderable
    renderable = CommentRenderable.new { |instance|
                   instance.content = Proc.new {
                     "some whacky comment"
                   }
                 }
    assert_equal "<!--some whacky comment-->", renderable.to_s
  end

  def test_single_tag_renderable
    renderable = SingleTagRenderable.new { |instance|
      instance.tag_name = "br"
    }
    assert_equal "<br />", renderable.to_s
    renderable = SingleTagRenderable.new { |instance|
      instance.tag_name = "link"
    }
    assert_equal "<link />", renderable.to_s
  end

  def test_attributes_display_correctly
    renderable = SingleTagRenderable.new { |instance|
      instance.tag_name = "link"
      instance.attributes = {"rel"=>"stylesheet/css",
                             "src"=>"/style.css"}
    }
    assert_equal "<link rel=\"stylesheet/css\" src=\"/style.css\" />", renderable.to_s

    renderable = SingleTagRenderable.new { |instance|
      instance.tag_name = "link"
      instance.attributes = {"rel"=>"stylesheet/css",
                             "src"=>"/style2.css"}
    }
    assert_equal "<link rel=\"stylesheet/css\" src=\"/style2.css\" />", renderable.to_s

    renderable = NestingRenderable.new { |instance|
      instance.tag_name = "script"
      instance.attributes = {"type"=>"text/javascript"}
    }
    assert_equal "<script type=\"text/javascript\"></script>", renderable.to_s

    renderable = NestingRenderable.new { |instance|
      instance.tag_name = "body"
      instance.attributes = {"class"=>"some-class"}
      instance.content = Proc.new {
        NestingRenderable.new { |instance|
          instance.tag_name = "h1"
          instance.content = Proc.new { "Hi!" }
        }
      }
    }
    assert_equal "<body class=\"some-class\"><h1>Hi!</h1></body>", renderable.to_s

    renderable = CommentRenderable.new { |instance|
      instance.content = Proc.new { "Hi!" }
      instance.attributes = {"nothing"=>"will happen"}
    }
    assert_equal "<!--Hi!-->", renderable.to_s
  end
end
