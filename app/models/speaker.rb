class Speaker
  TWITTER_URL = "https://twitter.com/"
  GITHUB_URL = "https://github.com/"
  KEYNOTE_SPEAKERS = [:matz, :tenderlove, :hone02, :chancancode, :kerrizor]

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
          :twitter  => "yukihiro_matz",
          :github   => "matz",
          :topic    => "Keynote"
        },
      tenderlove:
        {
          :id       => :tenderlove,
          :name     => "Aaron Patterson",
          :avatar   => "speakers/tenderlove.png",
          :tagline  => "Ruby & Rails Core, GitHub",
          :twitter  => "tenderlove",
          :github   => "tenderlove",
          :topic    => "Keynote"
        },
      hone02:
        {
          :id       => :hone02,
          :name     => "Terence Lee",
          :avatar   => "speakers/hone02.png",
          :tagline  => "Ruby Core, Heroku",
          :twitter  => "chancancode",
          :github   => "chancancode",
          :topic    => "Keynote"
        },
      chancancode:
        {
          :id       => :chancancode,
          :name     => "Godfrey Chan",
          :avatar   => "speakers/chancancode.png",
          :tagline  => "Rails Core, Tilde",
          :twitter  => "chancancode",
          :github   => "chancancode",
          :topic    => "Keynote"
        },
      kerrizor:
        {
          :id       => :kerrizor,
          :name     => "Kerri Miller",
          :avatar   => "speakers/kerrizor.png",
          :tagline  => "Engineer, GitHub",
          :twitter  => "kerrizor",
          :github   => "kerrizor",
          :topic    => "Keynote"
        },
      timriley:
        {
          id: :timriley,
          name: "Tim Riley",
          avatar: "speakers/timriley.png",
          tagline: "Partner, Icelab",
          twitter: "timriley",
          github: "timriley",
          bio: "Tim is a partner at Australian design agency Icelab, and a core developer of dry-rb. He’s excited about advancing the state of web development in Ruby.",
          topic: "Next Generation Ruby Web Apps with dry-rb, ROM, and Roda",
          description: "If you’ve ever yearned for more than the Rails way, come along and learn how a small set of tools and techniques can bring joy to your Ruby web app development, from the smallest beginnings through to the most complex of codebases. Discover how concepts like functional programming, immutability, strict typing, dependency injection and object composition can actually be easy and natural in Ruby (yes, really!), and how they will make your web app a pleasure to build, test and extend."
        },
      yasuko_ohba:
        {
          id: :yasuko_ohba,
          name: "Yasuko Ohba",
          avatar: "speakers/yasuko_ohba.png",
          tagline: "President, Everyleaf Corporation",
          twitter: "nay3",
          github: "nay",
          bio: "A Ruby / Rails programmer in Tokyo, Japan. President of Everyleaf Corporation, which provides software development service mostly with Rails for clients since 2007. I have written 2 books on Ruby in Japan. A mother of a 3 year old girl.",
          topic: "Our Fight Against Super Bad Patterns in Legacy Rails Apps",
          description: 'In 2014-2015 my team migrated a series of applications from Rails 2.3.5 to 4.2.1, and Ruby 1.8 to 2.1. Our goal was to add large features, while substantially refactoring the whole system. It was a big challenge!This talk will cover the timeline of the project and talk about all the things a team performing a large migration of Ruby and Rails will need to do. Secondly, you will learn about some "super bad" Rails code patterns we encountered and how we refactored them. Real life experience distilled!',
        },
      kir:
        {
          id: :kir,
          name: "Kir Shatrov",
          avatar: "speakers/kir.png",
          tagline: "Production Engineer, Shopify",
          twitter: "kirshatrov",
          github: "kirs",
          bio: "Kir Shatrov is a Production Engineer at Shopify, a current maintainer of Capistrano and a Rails contributor. He coaches <a href='http://railsgirls.com/helsinki'>RailsGirls</a> and hosts the <a href='http://rubynoname.ru'>RubyNoName Podcast</a>.",
          topic: "Building a ChatOps framework",
          description: "At Shopify, we run a massive ChatOps deployment that ties out Internal tools together. We’re developing a platform for the useful scripts written by developers around the company to be discoverable. The platform makes it simple for any employee to automate workflow by writing a script. I will talk about the history of ChatOps and its culture at Shopify, about the reasons behind creating our own chat framework, building the DSL and grammar rules parser, scaling ChatOps and providing the better chat experience than other frameworks have."
        },
      konstantin:
        {
          id: :rkh,
          name: "Konstantin Hasse",
          avatar: "speakers/rkh.png",
          tagline: "Co-Founder and CTO, Travis CI",
          twitter: "konstantinhaase",
          github: "rkh",
          bio: "Co-Founder and CTO at Travis CI, former opera star",
          topic: "How We Replaced Salary Negotiations with a Sinatra App",
          description: "Let's talk about salaries, diversity, career development, getting compensated in gold and silver, paying taxes in livestock and Ruby code.\nFor the last year, we at Travis CI have been working on a new salary system to determine how much we pay whom, when employees get raises and a whole range of other things. After lots of back and forth, we ended up with a Sinatra application to solve salary questions.\nExpect to explore the topic from many different angles and levels. We'll look at decisions, realisations and implications, as well as interesting parts of the implementation."
        },
      sameer:
        {
          id: :sameer,
          name: "Sameer Deshmukh",
          avatar: "speakers/sameer.png",
          tagline: "Undergraduate, University of Pune, India",
          twitter: "v0dro",
          github: "v0dro",
          bio: "Sameer is an undergraduate student at University of Pune, India. He is a contributor to the Ruby Science Foundation, where he helps build scientific computation tools in Ruby. He is currently maintaining daru, a library for data analysis and manipulation in Ruby. He enjoys spending spare time with friends, books and his bass guitar.",
          topic: "Scientific Computing in Ruby",
          description: "Most Scientific Computing was restricted to languages like FORTRAN and Python, until now. The Ruby Science Foundation (SciRuby) aims to change that by creating tools for Scientific Computation in Ruby by leveraging Ruby’s elegance to reduce the inherent complexity that comes with Scientific Computing.\nIn this talk you will be introduced to several gems developed by SciRuby for Scientific Computing. You will get a glimpse into powerful libraries like nmatrix, nyaplot and daru, that can be used for performing super fast computations and beautiful visualizations, all the while keeping code sane, simple and readable."
        },
      vipul:
        {
          id: :vipul,
          name: "Vipul Amler",
          avatar: "speakers/vipul.png",
          tagline: "Director, BigBinary LLC",
          twitter: "vipulnsward",
          github: "vipulnsward",
          bio: "Vipul is Director at <a href='https://www.bigbinary.com/'>BigBinary LLC</a>. He is part of Rails Team, and helps triaging issues. His spare time is spent exploring and contributing to many Open Source ruby projects, when not dabbling with React JS.\nHe has recently authored <a href='https://www.bigbinary.com/building-modern-web-applications-with-reactjs'>ReactJS by Example</a>, that does a deep walk-through of using ReactJS.\nVipul loves Ruby's vibrant community and helps in building PuneRb, is the founder of and runs RubyIndia Community.\nHe also organizes <a href='http://www.deccanrubyconf.org/'>DeccanRubyConf</a> in Pune.",
          topic: "Speeding Up Your Front-End: 2016 Version",
          description: "Rails 5 and Sprockets 3/4, have made amazing strides in terms of performance, and dev-experience.\nSprockets adds various resolution fixes to speed it up by more that 12x, allows to use ES6/ES2015, adopts good approaches from npm, and adds experimental features like Subresource Integrity.\nOn Rails too, there are many improvements for speeding up front-end resources- Custom HTTP headers for static assets, Fragment caching improvements, ETag improvements, http_cache_forever and more.\nIn this talk, we will see how to harness many of these to speed up page loads/cache and Google Pagespeed."
        },
      prathamesh:
        {
          id: :prathamesh,
          name: "Prathamesh Sonpatki",
          avatar: "speakers/prathamesh.png",
          tagline: "Director, BigBinary LLC",
          twitter: "_cha1tanya",
          github: "prathamesh-sonpatki",
          bio: "Prathamesh is Director at BigBinary. He builds web apps using Rails and React.js!. He is interested in open source and contribute to many Ruby and Rails related projects. He likes Emacs operating system a lot and can be found constantly tweaking his .emacs.d",
          topic: "Secrets of Testing Rails 5 Apps",
          description: "Testing Rails 5 apps has become better experience out of the box. Rails has also become smarter by introducing the test runner. Now we can't complain that about not able to run a single test or not getting coloured output. A lot of effort gone into making tests especially integration tests run faster.\nCome and join me as we will commence the journey to uncover the secrets of testing Rails 5 apps."
        },
      sayanee:
        {
          id: :sayanee,
          name: "Sayanee Basu",
          avatar: "speakers/sayanee.png",
          tagline: "Technology Consultant, Ricoh Singapore",
          twitter: "sayanee_",
          github: "sayanee",
          bio: "<a href='https://sayan.ee'>Sayanee</a> is an engineer with a focus on electronics and web technologies. She curates the developer and design community of Singapore through <a href='https://webuild.sg/'>We Build SG</a> and creates screencasts on developer tools with <a href='http://build-podcast.com/'>Build Podcast</a>. At other times, she enjoys a good workout, reading her eBooks and slowly drinking some tea.",
          topic: "Sense and Sensibility",
          description: "As the era of tiny low-powered connected sensors beckons, how can Ruby and Rails developers come to play a pivotal role? In this talk, we will explore the backend functionalities and features that a connected sensor will talk to and make sense of the data collected. Through the open source Rails-based framework ThingSpeak, we will explore the 3 key features such a platform requires and give practical hardware demos and code snippets. Audience participation is all welcome! So hey, let's explore and make sense together!"
        },
      joy:
        {
          id: :joy,
          name: "Kristine Joy Paas",
          avatar: "speakers/joy.png",
          tagline: "Web Developer, Quipper",
          twitter: "kjcpaas",
          github: "kjcpaas",
          bio: "Joy is a cat-loving Rubyist and 'student of life' based in Manila. She is currently works as a web develop at Quipper, an EdTech company. When not into coding, she engages in other enjoyable activities where she can learn new things. Recently, she into watching anime and reading manga to improve her Japanese language skills.",
          topic: "Let's Play Ruby Golf",
          description: "Professional coding means writing clear, readable, maintainable code.\n'Golf' in programming means implementing something with as short as possible code.\nGolf code is everything that a professional code shouldn't be. However, there are so many things that we can only discover by playing Ruby golf.\nIn this talk, I will share the Ruby secrets I discovered from Ruby golf, and also the extreme ingenuity that comes into play when trying to write the shortest code to solve a problem."
        },
      jason:
        {
          id: :jason,
          name: "Jason Yeo",
          avatar: "speakers/jason.png",
          tagline: "Software Engineer, SourceClear",
          twitter: "jasonyeojs",
          github: "jsyeo",
          bio: "Jason Yeo flips bits and smashes stacks at <a href='https://www.srcclr.com'>SourceClear</a>. Some of his interests include participating in pointless discussions about type systems, writing interpreters for languages that has no real world application, bashing languages that has real world applications and embedding Easter Eggs in talk descriptions.😝",
          topic: "Slaying the Dragon",
          description: "Learning to write a programming language is considered a rite of passage for some programmers. And, it is also the most rewarding exercise as you will learn a whole lot about programming languages in general. Many might think it's a daunting task but I will show you otherwise by showing how to implement a simple language in Ruby and compile it to Rubinius bytecode. Be warned, only the brave and true will survive. Don't you worry though, no prior knowledge of parsing, lexing and programming language theory required. And of course, don't forget to have fun."
        },
      grzegorz:
        {
          id: :grzegorz,
          name: "Grzegorz Witek",
          avatar: "speakers/grzegorz.png",
          tagline: "Lead Software Engineer, Kaligo",
          twitter: "arnvald",
          github: "arnvald",
          bio: "I boost economy by making bugs here and there, so that others always have something to fix and they can keep their jobs. Constantly afraid of stack overflows, I work as an empty-stack developer.",
          topic: "Your API is Too Slow!",
          description: "While premature optimization might be the root of all evil, at some point, whether you want it or not, you must look at your beautiful (and of course fully tested) code, and make it a bit less pretty, but much, much faster. API performance optimization does not need to be scary, though. To start you just need some benchmarking tools and a few optimization techniques. In my talk I'm going to present example problems and solutions that will make speeding up API much easier."
        },
      yuki:
        {
          id: :yuki,
          lightning: true,
          name: "Yuki Nishijima",
          avatar: "speakers/yuki.png",
          tagline: "Software Engineer, Pivotal",
          twitter: "yuki24",
          github: "yuki24",
          bio: "Yuki was raised in Tokyo and has worked for Pivotal Labs in New York since 2013. He moved back to Tokyo in August 2015 as one of the founding members of Pivotal Labs Tokyo. He is a Ruby committer, the creator of the did_you_mean gem, a maintainer of the kaminari gem, and a frequent contributor to many open source projects including Rails.",
          topic: "20 Tools and Techniques that Make You More Creative",
          description: "Have you ever been frustrated because you needed to do many things to get a small task done? Here are tools and techniques that can make you more creative! In this talk, I'll share with you  ways to speed you up, from Ruby and Rails features, command line tools, shell scripting, browser extensions, keyboard shortcuts, to Mac apps.\nYou are a beginner? Or have more than a decade of experience? No problem! You'll learn at least one technique you don't know yet that you can start using right away!"
        },
      jo:
        {
          id: :jo,
          lightning: true,
          name: "Jo Cranford",
          avatar: "speakers/jo.png",
          tagline: "Lead Developer, Culture Amp",
          twitter: "jocranford",
          github: "jocranford",
          bio: "Jo is lead developer at Culture Amp, the world’s leading culture analytics platform. Before her current role, Jo worked at the likes of Lonely Planet, Atlasssian, ThoughtWorks and Expedia, in roles such as Product Planner, Senior Business Analyst, Development Manager and Chief Technical Officer. She was also a CTO of an Australian startup accepted into Telstra’s Muru-D program.",
          topic: "Where Did Everybody Go?",
          description: "In our current market, almost of half of our employers are hiring for experienced developers. Many people move jobs every couple of years, leaving teams in an ongoing state of forming or storming, unable to find their rhythm.\nCompany culture is a major influence on people deciding to stay in their jobs. This talk uses data gathered from over 100,000 responses to engagement and exit surveys from fast growing, successful tech companies to analyse why people leave, and how we can encourage our team members to stay (hint: it's not pay!)"
        },
      giovanni:
        {
          id: :giovanni,
          lightning: true,
          name: "Giovanni Sakti",
          avatar: "speakers/giovanni.png",
          tagline: "CEO and Software Developer, Starqle",
          twitter: "giosakti",
          github: "giosakti",
          bio: "Gio is software developer from Jakarta, Indonesia whom currently works for two startups; Starqle and Virkea that mostly do enterprise software developments. He also co-organizes local Ruby and Javascript developers community. When not coding, he loves doing sports, such as watching live football and tennis on TV, playing football games on PC and obviously reading fans banter on twitter.",
          topic: "Flexible Authorization : Storing and Managing Rules in DB",
          description: "Many excellent authorization system already exist as gems, however most of them left the implementation detail of storing authorization rules in database up for grabs. Storing them in database is important because it enables end user to configure it by themselves rather than depending on the developers to manage them.\nLearn how you can effectively store and manage authorization rules on database, effectively utilize policy-based authorization system such as Pundit for this purpose and learn about database design that can handle authorization better."
        },
      hiroshi:
        {
          id: :hiroshi,
          lightning: true,
          name: "SHIBATA Hiroshi",
          avatar: "speakers/hiroshi.png",
          tagline: "Chief Engineer, GMO Pepabo, Inc.",
          twitter: "hsbt",
          github: "hsbt",
          bio: "Ruby core team, Chief engineer at GMO Pepabo, Inc.",
          topic: "How to Begin Developing Ruby Core",
          description: "When you need to contribute a new library or framework, you might try to write test and invoke the test suite with “rake test” or “rake spec”.\nCRuby also has a test suite like many libraries and frameworks, written in Ruby. But, It's different from typical ruby libraries. Therefore many Rubyists don't know how to run the CRuby test suite.\nIn this talk, I explain the details of the CRuby test suite and contribution protips for CRuby's development for beginners."
        },
      jack:
        {
          id: :jack,
          lightning: true,
          name: "Jack Chen Songyong",
          avatar: "speakers/jack.png",
          tagline: "Technical Director, Skymatters Limited",
          twitter: "aquajach",
          github: "aquajach",
          bio: "Jack works at Skymatters Limited as the technical director. He is keen to open-source projects and gave talks at tech conferences (esp. Codeaholics HK). He also believes running a marathon and coding a project have so many in common.",
          topic: "Grow from Small Simple Steps Forward",
          description: "Many great developers love to contribute to open source code base. But you don't have to be very experienced before doing so. This short talk is to take one of my pull requests to a Ruby gem library as an example, from the incentive, the conversations between maintainers and me, to what I learnt."
        },
      ankita:
        {
          id: :ankita,
          lightning: true,
          name: "Ankita Gupta",
          avatar: "speakers/ankita.png",
          tagline: "Full-Stack Software Engineer, Honestbee",
          twitter: nil,
          github: nil,
          bio: "Ankita is working as a full-stack software engineer at honestbee. In her free time, she works on her non-profit project Jugnuu, a low-cost, mobile-based English language solution for children.",
          topic: "Speeding Up Your Test Suite",
          description: "We often hear about Test Driven Development (TDD), and RSpec is a great aid in doing so. However what could be one of the biggest disadvantages of writing tests? The answer is slow tests. Yes, its true that if there were no tests then there would not be a slow test suite. But that's not the point. Tests are a developer's friend, and in this talk I will talk more about how to use FactoryGirl appropriately to speed up your RSpecs."
        },
      steven:
        {
          id: :steven,
          lightning: true,
          name: "Steven Yap",
          avatar: "speakers/steven.png",
          tagline: "Founder, Futureworkz",
          twitter: "stevenyap",
          github: "stevenyap",
          bio: "Steven Yap is a full-stack coder, agile coach and development consultant. He balances his life with Buddhism teachings and seeks enlightenment through coding and the work he is involved in. He founded and runs Futureworkz, a Singapore Agile agency since 2005. Steven Yap hosts the monthly Ruby Meetup in Ho Chi Minh, Vietnam - Saigon.rb.",
          topic: "Building Real-Time App with React/Redux/Rails/RethinkDB",
          description: "Building real-time app is painful for the frontend, painful for the backend and even painful for the database. We will share how we build a real-time CRM app using React, Redux, Rails and RethinkDB (we call it the R4 framework) that is easy to reason and easy to build. Put fun back into real-time app development!"
        },
      kenji:
        {
          id: :kenji,
          lightning: true,
          name: "Kenji Mori",
          avatar: "speakers/kenji.png",
          tagline: "Software Developer, M3 Inc",
          twitter: "zyunnosuke",
          github: "morizyun",
          bio: "I am Japanese software developer and a passionate Rubyist since 2012 / Ruby 1.9.3. I write a blog which is fairly well-known in the Japanese Ruby community: http://morizyun.github.io/ Recently I sometimes present at local events in Japan, a few of my presentations include: https://speakerdeck.com/morizyun I work at M3, Inc. a Japan-based global company focused on improving medicine in Japan and worldwide, developing services for doctors.",
          topic: "Learning Through Blogging: Ruby Blogging Benefits",
          description: "Sharing one's own knowledge is very important. I have been writing a blog which is fairly well-known in the Japanese Ruby community, and received many benefits in doing so. Blog-writing supports the accumulation of my own knowledge. Giving presentations provides many opportunities. Sharing ideas with our coworkers provides positive motivation to learn. I would like to talk about my positive experience!"
        },
    }
  end
end
