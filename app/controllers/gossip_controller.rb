class GossipController < ApplicationController
    
    def index
        # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
        @gossips = Gossip.all
    end
    
    def show
        @gossip = Gossip.find(params[:id])
    end

    def new
        # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
    end

    def create
        @gossip = Gossip.new(title:params[:title], content:params[:content],user_id: '1')
        if @gossip.save
          flash[:notice] = "GOSSIP SAVE"
          redirect_to root_path
        else 
          flash.now[:alert] = "ERROR TRY AGAIN"
          render new_gossip_path
        end
    end

    def edit
      # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
    end

    def update
      # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
      # pour info, le contenu de ce formulaire sera accessible dans le hash params
      # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
    end

    def destroy
      # Méthode qui récupère le potin concerné et le détruit en base
      # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
    end
  end