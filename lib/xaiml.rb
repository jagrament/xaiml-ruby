require "xaiml/version"
require "xaiml/exceptions"
require "ox"

module XAIML
  require "xaiml/document"
  require "xaiml/element"
  require "xaiml/exceptions"
  require "xaiml/version"

  Ox.default_options = {
    indent: -1,
    mode: :generic,
    effort: :tolerant,
    smart: true,
  }
end
