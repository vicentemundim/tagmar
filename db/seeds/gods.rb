God.find_or_initialize_by(slug: 'sevides'  ).tap { |god| god.update_attributes(name: "Sevides",   description: "Agriculture, fertility") }
God.find_or_initialize_by(slug: 'quiris'   ).tap { |god| god.update_attributes(name: "Quiris",    description: "Plantation") }
God.find_or_initialize_by(slug: 'liris'    ).tap { |god| god.update_attributes(name: "Liris",     description: "Harvest") }
God.find_or_initialize_by(slug: 'ganis'    ).tap { |god| god.update_attributes(name: "Ganis",     description: "Water, sea") }
God.find_or_initialize_by(slug: 'blator'   ).tap { |god| god.update_attributes(name: "Blator",    description: "War, conflict") }
God.find_or_initialize_by(slug: 'crisagom' ).tap { |god| god.update_attributes(name: "Crisagom",  description: "Honor, strategy, bravery") }
God.find_or_initialize_by(slug: 'crezir'   ).tap { |god| god.update_attributes(name: "Crezir",    description: "Fury, killing, fight") }
God.find_or_initialize_by(slug: 'maira_mon').tap { |god| god.update_attributes(name: "Maira mon", description: "Nature in its mineral aspect") }
God.find_or_initialize_by(slug: 'maira_vet').tap { |god| god.update_attributes(name: "Maira vet", description: "Nature in its vegetal aspect") }
God.find_or_initialize_by(slug: 'maira_nil').tap { |god| god.update_attributes(name: "Maira nil", description: "Nature in its animal aspect") }
God.find_or_initialize_by(slug: 'selimon'  ).tap { |god| god.update_attributes(name: "Selimon",   description: "Peace and Love") }
God.find_or_initialize_by(slug: 'lena'     ).tap { |god| god.update_attributes(name: "Lena",      description: "Erotic pleasure and satisfaction at work") }
God.find_or_initialize_by(slug: 'plandis'  ).tap { |god| god.update_attributes(name: "Plandis",   description: "Infatuation") }
God.find_or_initialize_by(slug: 'cambu'    ).tap { |god| god.update_attributes(name: "Cambu",     description: "Diplomacy, commerce, interrelationships") }
God.find_or_initialize_by(slug: 'cruine'   ).tap { |god| god.update_attributes(name: "Cruine",    description: "Death, soul protector, reincarnation") }
God.find_or_initialize_by(slug: 'palier'   ).tap { |god| god.update_attributes(name: "Palier",    description: "Knowledge, magic") }
God.find_or_initialize_by(slug: 'parom'    ).tap { |god| god.update_attributes(name: "Parom",     description: "Craftsman") }
