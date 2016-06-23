module HTML
  class Pipeline
    module RedDotRubyConf
      class NohtmlMarkdownFilter < MarkdownFilter
        def call
          while @text.index(unique = "#{SecureRandom.hex}"); end

          @text.gsub!("<", "#{unique} ")

          super.gsub(Regexp.new("#{unique}\\s?"), "&lt;")
        end
      end
    end
  end
end
