module AIML
  module Element
    autoload :Base, "aiml/element/base"
    class Arg       < Base; end
    class Calc      < Base; end
    class Command   < Base; end
    class Get       < Base; end
    class Loop      < Base; end
    class Li        < Base; end
    class Map       < Base; end
    class Name      < Base; end
    class Pattern   < Base; end
    class Predstore < Base; end
    class Set       < Base; end
    class Srai      < Base; end
    class Sraix     < Base; end
    class Star      < Base; end
    class Template  < Base; end
    class Think     < Base; end
    class Value     < Base; end

    autoload :Category, "aiml/element/category"
    autoload :Condition, "aiml/element/condition"
    autoload :ConditionalRandom, "aiml/element/conditional_random"
    autoload :Ext, "aiml/element/ext"
    autoload :Topic, "aiml/element/topic"
  end
end
