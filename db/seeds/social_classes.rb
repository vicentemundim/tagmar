SocialClass.find_or_initialize_by(slug: "former_slave"      ).tap { |social_class| social_class.update_attributes(name: "Former Slave",       coins: 4   + (4  * 10) + (0 * 100)) }
SocialClass.find_or_initialize_by(slug: "former_servant"    ).tap { |social_class| social_class.update_attributes(name: "Former Servant",     coins: 15  + (8  * 10) + (0 * 100)) }
SocialClass.find_or_initialize_by(slug: "free_man"          ).tap { |social_class| social_class.update_attributes(name: "Free man",           coins: 20  + (13 * 10) + (0 * 100)) }
SocialClass.find_or_initialize_by(slug: "small_trader"      ).tap { |social_class| social_class.update_attributes(name: "Small Trader",       coins: 30  + (17 * 10) + (0 * 100)) }
SocialClass.find_or_initialize_by(slug: "craftsman"         ).tap { |social_class| social_class.update_attributes(name: "Craftsman",          coins: 40  + (21 * 10) + (1 * 100)) }
SocialClass.find_or_initialize_by(slug: "experienced_trader").tap { |social_class| social_class.update_attributes(name: "Experienced Trader", coins: 50  + (35 * 10) + (1 * 100)) }
SocialClass.find_or_initialize_by(slug: "low_nobility"      ).tap { |social_class| social_class.update_attributes(name: "Low Nobility",       coins: 60  + (40 * 10) + (2 * 100)) }
SocialClass.find_or_initialize_by(slug: "high_nobility"     ).tap { |social_class| social_class.update_attributes(name: "High Nobility",      coins: 100 + (50 * 10) + (2 * 100)) }
