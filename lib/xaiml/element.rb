# frozen_string_literal: true

module XAIML
  module Element
    autoload :Base, "xaiml/element/base"
    class Arg       < Base; end
    class Calc      < Base; end
    class Command   < Base; end
    class Get       < Base; end
    class Loop      < Base; end
    class Log       < Base; end
    class Li        < Base; end
    class Matcher   < Base; end
    class Map       < Base; end
    class Name      < Base; end
    class Pattern   < Base; end
    class Predstore < Base; end
    class Set       < Base; end
    class Srai      < Base; end
    class Sraix     < Base; end
    class Star      < Base; end
    class Template  < Base; end
    class That      < Base; end
    class Think     < Base; end
    class Value     < Base; end
    class Ub        < Base; end
    class Ut        < Base; end
    class Utterance < Base; end

    autoload :Category, "xaiml/element/category"
    autoload :Condition, "xaiml/element/condition"
    autoload :ConditionalRandom, "xaiml/element/conditional_random"
    autoload :Ext, "xaiml/element/ext"
    autoload :Topic, "xaiml/element/topic"
  end
end
