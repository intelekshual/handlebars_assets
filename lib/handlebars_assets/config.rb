module HandlebarsAssets
  module Config
    attr_accessor :template_base_path, :template_extension, :js_namespace

    def configure
      yield self
    end

    def template_extension
      @template_extension ||= 'hbs'
    end

    def js_namespace
      @js_namespace ||= 'HandlebarsTemplates'
    end
  end
end