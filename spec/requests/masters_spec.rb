require 'rails_helper'

RSpec.describe "/masters", type: :request do
  let(:valid_attributes) do
    {
      name: "John",
      surname: "Johnson",
      about_me: "A true professional"
    }
  end

  let(:invalid_attributes) do
    {
      name: "",
      surname: "Very very Very very Very very Very very Very very Very very Very very Very very long surname",
      about_me: "A true professional"
    }
  end

  describe "GET /index" do
    it "renders a successful response" do
      Master.create! valid_attributes
      get masters_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      master = Master.create! valid_attributes
      get master_url(master)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_master_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      master = Master.create! valid_attributes
      get edit_master_url(master)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Master" do
        expect {
          post masters_url, params: { master: valid_attributes }
        }.to change(Master, :count).by(1)
      end

      it "redirects to the created master" do
        post masters_url, params: { master: valid_attributes }
        expect(response).to redirect_to(master_url(Master.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Master" do
        expect {
          post masters_url, params: { master: invalid_attributes }
        }.to change(Master, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post masters_url, params: { master: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) do
        {
          name: "Thomas",
          surname: "Thomson",
          about_me: "Not a true professional"
        }
      end

      it "updates the requested master" do
        master = Master.create! valid_attributes
        patch master_url(master), params: { master: new_attributes }
        master.reload
        expect(master.name).to eq(new_attributes[:name])
        expect(master.surname).to eq(new_attributes[:surname])
        expect(master.about_me).to eq(new_attributes[:about_me])
      end

      it "redirects to the master" do
        master = Master.create! valid_attributes
        patch master_url(master), params: { master: new_attributes }
        master.reload
        expect(response).to redirect_to(master_url(master))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        master = Master.create! valid_attributes
        patch master_url(master), params: { master: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested master" do
      master = Master.create! valid_attributes
      expect {
        delete master_url(master)
      }.to change(Master, :count).by(-1)
    end

    it "redirects to the masters list" do
      master = Master.create! valid_attributes
      delete master_url(master)
      expect(response).to redirect_to(masters_url)
    end
  end
end
