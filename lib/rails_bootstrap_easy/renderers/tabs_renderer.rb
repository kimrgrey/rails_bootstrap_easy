module RailsBootstrapEasy::Renderers
  class TabsRenderer < RailsBootstrapEasy::Renderers::BaseRenderer
    def initialize(html, id, &block)
      super(html)
      @id = id
      @block = block
      @tabs = []
    end

    def render
      @block.call TabsBuilder.new(self)
      render_tabs
    end

    def tab(name, title, active, &block)
      @tabs << Tab.new(name, title, active, block)
    end

    private

    attr_reader :tabs

    def render_tabs      
    end
  end

  class TabsBuilder
    def initialize(renderer)
      @renderer = renderer
    end

    def tab(name, title, active, &block)
      @renderer.tab(name, title, active, block)
    end
  end

  Tab = Struct.new(:name, :title, :active, :block)
end