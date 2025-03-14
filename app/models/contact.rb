class Contact < ApplicationRecord

    #Validations
    validates_presence_of :kind
    # validates_presence_of :address
    # validates_presence_of :phones

    #Associations
    belongs_to :kind #, optional: true
    has_many :phones
    has_one :address

    #Kaminari
    paginates_per 5

    accepts_nested_attributes_for :phones, allow_destroy: true
    accepts_nested_attributes_for :address, update_only: true

    def as_json(options={})
        h = super(options)
        h[:birthdate] = (
            I18n.l(self.birthdate) unless self.birthdate.blank?
            )
        h
    end

    # def birthdate_br
    #     I18n.l(self.birthdate) unless Contact.birthdate.blank?
    # end

    # def to_br
    #     {
    #         name: self.name,
    #         email: self.email,
    #         birthdate: (I18n.l(self.birthdate) unless self.birthdate.blank?)
    #     }
    # end
    
    # def author
    #     "Guilherme Melo"
    # end

    # def kind_description
    #     self.kind.description
    # end

    # def as_json(options={})
    #     super(
    #         root: true,
    #         methods: [:kind_description, :author],
    #         include: {
    #         kind: { only: :description },
    #         phones: { only: :number },   # ou o que você quiser exibir de phones
    #         address: { only: [:street, :city] } # ou os atributos desejados de address
    #         }
    #     )
    # end
end
