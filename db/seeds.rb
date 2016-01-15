ActiveRecord::Base.transaction do

  puts "Creating Groups..."

  hx_group = Group.create!({
    level: 'group',
    name: 'Holiday Extras Group',
    parent_id: 0
  })

  hx = Group.create!({
    level: 'group',
    name: 'Holiday Extras',
    parent: hx_group
  })

  Group.create!({
    level: 'group',
    name: 'Short Breaks',
    parent: hx_group
  })

  web_team = Group.create!({
    level: 'team',
    name: 'Web Team',
    parent: hx
  })

  heha = Group.create!({
    level: 'pod',
    name: 'HEHA!',
    parent: web_team
  })

  custx = Group.create!({
    level: 'pod',
    name: 'Customer Experience',
    parent: web_team
  })

  app = Group.create!({
    level: 'pod',
    name: 'App Platform',
    parent: web_team
  })

  puts "Creating Positions..."

  tester = Position.create!({
    title: "Tester",
    description: "Description Lorem Tester. ipsum dolor sit amet, consectetur adipiscing elit. Cras varius vehicula urna, sit amet tristique massa sollicitudin non. Nullam ut vestibulum nisi."
  })

  ip = Position.create!({
    title: "Industrial Placement",
    description: "Description for Industrial Placement. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras varius vehicula urna, sit amet tristique massa sollicitudin non. Nullam ut vestibulum nisi."
  })

  dev = Position.create!({
    title: "Developer",
    description: "Description Lorem Developer. ipsum dolor sit amet, consectetur adipiscing elit. Cras varius vehicula urna, sit amet tristique massa sollicitudin non. Nullam ut vestibulum nisi."
  })

  se = Position.create!({
    title: "Software Engineer",
    description: "Description for Software Engineer. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras varius vehicula urna, sit amet tristique massa sollicitudin non. Nullam ut vestibulum nisi."
  })

  sa = Position.create!({
    title: "Software Architect",
    description: "Description for Software Architect. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras varius vehicula urna, sit amet tristique massa sollicitudin non. Nullam ut vestibulum nisi."
  })

  ad = Position.create!({
    title: "Associate Director",
    description: "Description for Associate Director. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras varius vehicula urna, sit amet tristique massa sollicitudin non. Nullam ut vestibulum nisi."
  })

  adci = Position.create!({
    title: "Associate Customer Innovation Director",
    description: "Description for Associate Customer Innovation Director. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras varius vehicula urna, sit amet tristique massa sollicitudin non. Nullam ut vestibulum nisi."
  })

  po = Position.create!({
    title: "Product Owner",
    description: "Description for Product Owner. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras varius vehicula urna, sit amet tristique massa sollicitudin non. Nullam ut vestibulum nisi."
  })

  sm = Position.create!({
    title: "Scrum Master",
    description: "Description for Scrum Master. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras varius vehicula urna, sit amet tristique massa sollicitudin non. Nullam ut vestibulum nisi."
  })

  po = Position.create!({
    title: "Product Owner",
    description: "Description for Product Owner. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras varius vehicula urna, sit amet tristique massa sollicitudin non. Nullam ut vestibulum nisi."
  })

  ceo = Position.create!({
    title: "CEO",
    description: "The big cheese. Ipsum dolor sit amet, consectetur adipiscing elit. Cras varius vehicula urna, sit amet tristique massa sollicitudin non. Nullam ut vestibulum nisi."
  })

  specialist = Position.create!({
    title: "Specialist",
    description: "Specialist description. Ipsum dolor sit amet, consectetur adipiscing elit. Cras varius vehicula urna, sit amet tristique massa sollicitudin non. Nullam ut vestibulum nisi."
  })

  manager = Position.create!({
    title: "Manager",
    description: "Manager description. Ipsum dolor sit amet, consectetur adipiscing elit. Cras varius vehicula urna, sit amet tristique massa sollicitudin non. Nullam ut vestibulum nisi."
  })

  puts "Creating People..."

  spence = Person.create!({
    full_name: "Matthew Spence",
    call_me: "Spence",
    email: "matthew.spence@holidayextras.com",
    slack: "msaspence",
    twitter: "msaspence",
    github: "msaspence",
    linked_in: "msaspence"
  })

  jack = Person.create!({
    full_name: "Jack Crawford",
    call_me: "Jack"
  })

  joe = Person.create!({
    full_name: "Joe Warren",
    call_me: "Joe"
  })

  anna = Person.create!({
    full_name: "Anna Divers",
    call_me: "Anna"
  })

  obee = Person.create!({
    full_name: "Matt Obee",
    call_me: "Obee"
  })

  ob = Person.create!({
    full_name: "Ollie Buck",
    call_me: "OB"
  })

  simon = Person.create!({
    full_name: "Simon Aglony",
    call_me: "Si"
  })

  vicky = Person.create!({
    full_name: "Vicky Feaver",
    call_me: "Vicky"
  })

  liz = Person.create!({
    full_name: "Liz Pope",
    call_me: "Liz"
  })

  matt = Person.create!({
    full_name: "Matthew Pack",
    call_me: "Matt"
  })

  puts "Creating Roles..."

  Role.create!({
    person: spence,
    group: heha,
    position: se
  })

  Role.create!({
    person: jack,
    group: heha,
    position: se
  })

  Role.create!({
    person: joe,
    group: heha,
    position: dev
  })

  Role.create!({
    person: anna,
    group: heha,
    position: po
  })

  Role.create!({
    person: anna,
    group: heha,
    position: ad
  })

  Role.create!({
    person: anna,
    group: hx,
    position: adci
  })

  Role.create!({
    person: obee,
    group: heha,
    position: tester,
    share: 0.5
  })

  Role.create!({
    person: obee,
    group: custx,
    position: tester,
    share: 0.5
  })

  Role.create!({
    person: ob,
    group: heha,
    position: sa,
    share: 0.5
  })

  Role.create!({
    person: ob,
    group: app,
    position: sa,
    share: 0.5
  })

  Role.create!({
    person: simon,
    group: heha,
    position: specialist
  })

  Role.create!({
    person: vicky,
    group: heha,
    position: sm
  })

  Role.create!({
    person: liz,
    group: web_team,
    position: manager
  })

  Role.create!({
    person: matt,
    group: hx,
    position: ceo
  })

end
