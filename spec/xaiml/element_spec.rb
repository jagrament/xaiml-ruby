require "spec_helper"
RSpec.describe XAIML::Element do
  describe "#FUNCTIONAL TEST" do
    context "Check loading class successfully" do
      it "Arg" do
        expect { XAIML::Element::Arg.new }.not_to raise_error
      end
      it "Calc" do
        expect { XAIML::Element::Calc.new }.not_to raise_error
      end
      it "Category" do
        expect { XAIML::Element::Category.new }.not_to raise_error
      end
      it "Command" do
        expect { XAIML::Element::Command.new }.not_to raise_error
      end
      it "Ext" do
        expect { XAIML::Element::Ext.new }.not_to raise_error
      end
      it "Get" do
        expect { XAIML::Element::Get.new }.not_to raise_error
      end
      it "Li" do
        expect { XAIML::Element::Li.new }.not_to raise_error
      end
      it "Loop" do
        expect { XAIML::Element::Loop.new }.not_to raise_error
      end
      it "Map" do
        expect { XAIML::Element::Map.new }.not_to raise_error
      end
      it "Name" do
        expect { XAIML::Element::Name.new }.not_to raise_error
      end
      it "Pattern" do
        expect { XAIML::Element::Pattern.new }.not_to raise_error
      end
      it "Predstore" do
        expect { XAIML::Element::Predstore.new }.not_to raise_error
      end
      it "Set " do
        expect { XAIML::Element::Set.new }.not_to raise_error
      end
      it "Srai" do
        expect { XAIML::Element::Srai.new }.not_to raise_error
      end
      it "Sraix" do
        expect { XAIML::Element::Sraix.new }.not_to raise_error
      end
      it "Star" do
        expect { XAIML::Element::Star.new }.not_to raise_error
      end
      it "Template  " do
        expect { XAIML::Element::Template.new }.not_to raise_error
      end
      it "Think     " do
        expect { XAIML::Element::Think.new }.not_to raise_error
      end
      it "Value     " do
        expect { XAIML::Element::Value.new }.not_to raise_error
      end
    end
  end
end