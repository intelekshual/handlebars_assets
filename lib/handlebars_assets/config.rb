module HandlebarsAssets
  module Config
    attr_accessor :template_base_path, :template_extension

    def configure
      yield self
    end

    def template_extension
      @template_extension ||= 'hbs'
    end
  end
end