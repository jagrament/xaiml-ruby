require "spec_helper"
RSpec.describe AIML::Element do
  describe "#FUNCTIONAL TEST" do
    context "Check loading class successfully" do
      it "Arg" do
        expect { AIML::Element::Arg.new }.not_to raise_error
      end
      it "Calc" do
        expect { AIML::Element::Calc.new }.not_to raise_error
      end
      it "Category" do
        expect { AIML::Element::Category.new }.not_to raise_error
      end
      it "Command" do
        expect { AIML::Element::Command.new }.not_to raise_error
      end
      it "Ext" do
        expect { AIML::Element::Ext.new }.not_to raise_error
      end
      it "Get" do
        expect { AIML::Element::Get.new }.not_to raise_error
      end
      it "Li" do
        expect { AIML::Element::Li.new }.not_to raise_error
      end
      it "Loop" do
        expect { AIML::Element::Loop.new }.not_to raise_error
      end
      it "Map" do
        expect { AIML::Element::Map.new }.not_to raise_error
      end
      it "Name" do
        expect { AIML::Element::Name.new }.not_to raise_error
      end
      it "Pattern" do
        expect { AIML::Element::Pattern.new }.not_to raise_error
      end
      it "Predstore" do
        expect { AIML::Element::Predstore.new }.not_to raise_error
      end
      it "Set " do
        expect { AIML::Element::Set.new }.not_to raise_error
      end
      it "Srai" do
        expect { AIML::Element::Srai.new }.not_to raise_error
      end
      it "Sraix" do
        expect { AIML::Element::Sraix.new }.not_to raise_error
      end
      it "Star" do
        expect { AIML::Element::Star.new }.not_to raise_error
      end
      it "Template  " do
        expect { AIML::Element::Template.new }.not_to raise_error
      end
      it "Think     " do
        expect { AIML::Element::Think.new }.not_to raise_error
      end
      it "Value     " do
        expect { AIML::Element::Value.new }.not_to raise_error
      end
    end
  end
end
