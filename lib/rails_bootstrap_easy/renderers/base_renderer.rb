module RailsBootstrapEasy::Renderers
  class BaseRenderer 
    attr_reader :html

    def initialize(html)
      @html = html
    end

    def render
      raise NotImplementedError.new("Hey! Renderer should implement method :render! It's simple, isn't?")
    end

    def method_missing (*args, &block)
      @html.send(*args, &block)
    end
  end
end