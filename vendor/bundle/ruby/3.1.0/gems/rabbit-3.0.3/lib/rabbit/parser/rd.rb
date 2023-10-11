require "rd/rdfmt"

require "rabbit/parser/base"

module Rabbit
  module Parser
    class RD < Base
    end
  end
end

require "rabbit/parser/rd/rd2rabbit-lib"

module Rabbit
  module Parser
    class RD
      push_loader(self)
      class << self
        def format_name
          "RD"
        end

        def match?(source)
          extension = source.extension
          if extension.nil?
            head = source.read[0, 500]
            if head.respond_to?(:force_encoding)
              head.force_encoding("ASCII-8BIT")
            end
            /^=(?:\s+\S|[^=])/ === head
          else
            /\A(?:rd|rab|rbt)\z/i =~ extension
          end
        end
      end

      def parse
        source = @source.read.gsub(/\r\n/, "\n")
        source = "=begin\n#{source}\n=end\n"
        tree = ::RD::RDTree.new(source)
        visitor = RD2RabbitVisitor.new(@canvas, @progress)
        visitor.visit(tree)
      rescue Racc::ParseError
        message = format_parse_error_message($!.message, source)
        raise ParseError.new, message, $@
      end

      private
      def format_parse_error_message(message, source)
        if /line (\d+):/.match(message)
          numbered_source = add_number(source, $1.to_i)
        else
          numbered_source = add_number(source)
        end
        "#{message}\n--\n#{numbered_source}"
      end

      SNIPPET_SIZE = 10
      def add_number(source, around=nil)
        i = 1
        puts source
        lines = source.lines.to_a[0..-2]
        if around
          i = [1, around - SNIPPET_SIZE].max
          lines = lines[i, 2 * SNIPPET_SIZE]
        end
        format = "%#{Math.log10(lines.size).truncate + 1}d %s"

        lines.collect do |line|
          i += 1
          format % [i, line]
        end.join
      end
    end
  end
end
