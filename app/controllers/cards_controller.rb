class CardsController < AclController
  before_filter :get_deck
  
  # GET /cards
  # GET /cards.xml
  def index
    @card = @deck.cards.find(:first, :order => 'RAND()')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cards }
    end
  end

  # GET /cards/1
  # GET /cards/1.xml
  def show
    @card = Card.find(params[:id])
    respond_to do |format|
      format.html do
        if request.xhr?
          render :update do |page|
            page.replace_html 'see_answer_div', ''
            page.replace_html 'answer_div', :partial => 'show'
            page['answer_div'].visual_effect :appear, :duration => 1
          end
        end
      end # show.html.erb
      format.xml  { render :xml => @card }
    end
  end

  # GET /cards/new
  # GET /cards/new.xml
  def new
    @card = @deck.cards.new
    @decks = Deck.all(:order => 'title')

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @card }
    end
  end

  # GET /cards/1/edit
  def edit
    @card = Card.find(params[:id])
    @decks = Deck.all(:order => 'title')
  end

  # POST /cards
  # POST /cards.xml
  def create
    @card = Card.new(params[:card])

    respond_to do |format|
      if @card.save
        flash[:notice] = 'Card was successfully created.'
        format.html { redirect_to(deck_card_path(@deck, @card)) }
        format.xml  { render :xml => @card, :status => :created, :location => @card }
      else
        @decks = Deck.all(:order => 'title')
        format.html { render :action => "new" }
        format.xml  { render :xml => @card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cards/1
  # PUT /cards/1.xml
  def update
    @card = Card.find(params[:id])
    respond_to do |format|
      if @card.update_attributes(params[:card])
        flash[:notice] = 'Card was successfully updated.'
        format.html { redirect_to(deck_card_url(@deck, @card)) }
        format.xml  { head :ok }
      else
        @decks = Deck.find(:all, :order => 'title')
        format.html { render :action => "edit" }
        format.xml  { render :xml => @card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cards/1
  # DELETE /cards/1.xml
  def destroy
    @card = Card.find(params[:id])
    @card.destroy

    respond_to do |format|
      format.html { redirect_to(deck_cards_url(@deck)) }
      format.xml  { head :ok }
    end
  end
  
  private
  
  def get_deck
    @deck = Deck.find(params[:deck_id])
  end
end
