class Speaker
  def self.all
    speakers.values.map { |speaker| OpenStruct.new(speaker) }
  end

  def self.find(identifier)
    OpenStruct.new speakers.fetch(identifier)
  end

  def self.find_by_identifiers(*identifiers)
    identifiers.map { |identifier| self.find(identifier) }
  end

  def self.speakers
    {
      matz:
        {
          :id       => :matz,
          :name     => "Yukihiro (Matz) Matsumoto",
          :avatar   => "speakers/matz.png",
          :tagline  => "Creator of Ruby, Heroku",
          :twitter  => "https://twitter.com/yukihiro_matz",
          :github   => "https://github.com/matz",
          :topic    => "Keynote"
        },
      tenderlove:
        {
          :id       => :tenderlove,
          :name     => "Aaron Patterson",
          :avatar   => "speakers/tenderlove.png",
          :tagline  => "Ruby & Rails Core, GitHub",
          :twitter  => "https://twitter.com/tenderlove",
          :github   => "https://github.com/tenderlove",
          :topic    => "Keynote"
        },
      hone02:
        {
          :id       => :hone02,
          :name     => "Terence Lee",
          :avatar   => "speakers/hone02.jpg",
          :tagline  => "Ruby Core, Heroku",
          :twitter  => "https://twitter.com/chancancode",
          :github   => "https://github.com/chancancode",
          :topic    => "Keynote"
        },
      chancancode:
        {
          :id       => :chancancode,
          :name     => "Godfrey Chan",
          :avatar   => "speakers/chancancode.png",
          :tagline  => "Rails Core, Tilde",
          :twitter  => "https://twitter.com/chancancode",
          :github   => "https://github.com/chancancode",
          :topic    => "Keynote"
        },
      kerrizor:
        {
          :id       => :kerrizor,
          :name     => "Kerri Miller",
          :avatar   => "speakers/kerrizor.png",
          :tagline  => "Engineer, GitHub",
          :twitter  => "https://twitter.com/kerrizor",
          :github   => "https://github.com/kerrizor",
          :topic    => "Keynote"
        },
    }
  end
end
