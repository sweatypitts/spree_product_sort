Product.class_eval do
  has_many :product_taxons
  has_many :taxons, :through=>:product_taxons

  #default_scope :include=>:product_taxons, :order=>"product_taxons.position"
  scope :ordered, {:include=>:product_taxons, :order=>"product_taxons.position"}

  scope :available, lambda { |*args| 
    where(["products.available_on <= ?", args.first || Time.zone.now]).
      includes(:product_taxons).
      order('product_taxons.taxon_id, product_taxons.position') #group positions by taxon so that home page (0) works
  }
  
  #new products break main index.
  after_create :create_product_taxon
  def create_product_taxon
    # new product added, create initial product_taxon assignment so that products on the main page can also be sorted.
    ProductTaxon.create(:product_id=>self.id, :taxon_id=>0)
  end

  def in_taxon?(taxon)
    case taxon
      when String
        self.taxons.map{|t| [t.name.downcase,t.permalink.downcase]}.flatten.include?(taxon.strip.downcase)
      when Integer
        self.taxons.map{|t| t.id}.include?(taxon)
      when Taxon
        self.taxons.include?(taxon)
      else
        false
    end
  end

end
