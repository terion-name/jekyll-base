require 'jekyll_asset_pipeline'

module JekyllAssetPipeline
    class SassConverter < JekyllAssetPipeline::Converter
        require 'sass'
        require 'compass'

        Compass.configuration.sass_dir = 'src/_assets/css'

        Compass.sass_engine_options[:load_paths].each do |path|
          Sass.load_paths << path
        end

        def self.filetype
          '.sass'
        end

        def convert
          return Sass::Engine.new(@content, syntax: :sass).render
        end
    end

    class CoffeeScriptConverter < JekyllAssetPipeline::Converter
        require 'coffee-script'

        def self.filetype
        '.coffee'
        end

        def convert
        return CoffeeScript.compile(@content, {bare: true})
        end
    end

    class CssCompressor < JekyllAssetPipeline::Compressor
        require 'yui/compressor'

        def self.filetype
          '.css'
        end

        def compress
          return YUI::CssCompressor.new.compress(@content)
        end
    end

    class JavaScriptCompressor < JekyllAssetPipeline::Compressor
        require 'yui/compressor'

        def self.filetype
          '.js'
        end

        def compress
          return YUI::JavaScriptCompressor.new(munge: true).compress(@content)
        end
    end
end