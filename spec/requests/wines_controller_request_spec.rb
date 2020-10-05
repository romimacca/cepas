require 'rails_helper'

RSpec.describe "Wines", type: :request do
    # Login admin para hacer test
    before :each do
        @user = User.create(email: "mail@me.cl", password: "123123", password_confirmation: "123123", admin: true)
        login_as(@user)
    end

    context 'GET index' do
        # Asegurar que la vista index está mostrando vinos
        it "assigns @wines" do
            wine = Wine.create(name: "wine 1", score: 2, created_at: DateTime.now, updated_at: DateTime.now)
           
            get wines_path
            expect(assigns(:wines)).to eq([wine]) 
            
        end

        # La vista index renderizan el template correcto
        it "renders the index template" do
            get wines_path
            expect(response).to render_template :index
        end
    end
    describe "GET show" do
        
        # La vista show renderizan el template correcto
        it "renders the show template" do
            wine = Wine.create(name: "wine", score: 2, created_at: DateTime.now, updated_at: DateTime.now)
            get wine_path(wine.id)
            expect(response).to render_template :show
        end
    end


end
