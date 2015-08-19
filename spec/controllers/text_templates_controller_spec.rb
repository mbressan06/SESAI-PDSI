require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe TextTemplatesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # TextTemplate. As you add validations to TextTemplate, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TextTemplatesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all text_templates as @text_templates" do
      text_template = TextTemplate.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:text_templates)).to eq([text_template])
    end
  end

  describe "GET #edit" do
    it "assigns the requested text_template as @text_template" do
      text_template = TextTemplate.create! valid_attributes
      get :edit, {:id => text_template.to_param}, valid_session
      expect(assigns(:text_template)).to eq(text_template)
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested text_template" do
        text_template = TextTemplate.create! valid_attributes
        put :update, {:id => text_template.to_param, :text_template => new_attributes}, valid_session
        text_template.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested text_template as @text_template" do
        text_template = TextTemplate.create! valid_attributes
        put :update, {:id => text_template.to_param, :text_template => valid_attributes}, valid_session
        expect(assigns(:text_template)).to eq(text_template)
      end

      it "redirects to the text_template" do
        text_template = TextTemplate.create! valid_attributes
        put :update, {:id => text_template.to_param, :text_template => valid_attributes}, valid_session
        expect(response).to redirect_to(text_template)
      end
    end

    context "with invalid params" do
      it "assigns the text_template as @text_template" do
        text_template = TextTemplate.create! valid_attributes
        put :update, {:id => text_template.to_param, :text_template => invalid_attributes}, valid_session
        expect(assigns(:text_template)).to eq(text_template)
      end

      it "re-renders the 'edit' template" do
        text_template = TextTemplate.create! valid_attributes
        put :update, {:id => text_template.to_param, :text_template => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end
end
