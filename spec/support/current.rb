class Current
  include FactoryGirl::Syntax::Methods

  class << self
    def reload!
      @instance = new
    end

    def instance
      @instance ||= new
    end

    def method_missing(name, *args)
      instance.respond_to?(name) ? instance.send(name, *args) : super
    end
  end

  FACTORIES = [
    :user, :character
  ]

  FACTORIES.each do |type|
    class_eval <<-EOF
      def #{type}
        @#{type} ||= create :#{type}
      end
    EOF
  end
end

RSpec.configure do |config|
  config.before :each do
    Current.reload!
  end
end
