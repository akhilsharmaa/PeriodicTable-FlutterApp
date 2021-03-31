//Version 2.0.1 +5 completed.

class ElementDescription {
  String getElementDescription(int elementNumber) {
    return elementDescription[elementNumber + 1];
  }

  List elementDescription = [
    /* 0   */ 'No NEED TO SPECIFY ',
    /* 1   */ 'Next time you find out you gained a "little" extra kilos over Christmas, you could blame this element partly for that. About 10 percent of the weight of living organisms is hydrogen – mainly in water, proteins and fats. And you all know how much fats we gain over the holidays.  ',
    /* 2   */ 'Balloons seem to have a thing with the Sun. It flies towards the sun, is as dangerous as it (VERY VERY dangerous for your eardrums) and even LOOKS like it. Maybe it is because element 2 likes it too. (Geddit?) Helium was discovered in the Sun’s atmosphere before it was found on Earth. They both make a very weird couple.  ',
    /* 3   */ 'Some people look tough but aren"t. Lithium is sadly one of them. Although it is a metal, it is soft enough to cut with a knife.  ',
    /* 4   */ 'Although it may not be as well-known as oxygen or hydrogen, Beryllium has a long history, having been known to the ancient Egyptians in beryl and in emeralds.  ',
    /* 5   */ 'Looks like we"re not the only animals with skin problems. Snake often have skin issues that require some cure. Borax is a widely used Boron compound that is used to give slimy serpents some relief from skin issues.  ',
    /* 6   */ 'Carbon is such an all-rounder, it can"t make up its mind on what it wants to be. Elemental carbon can take the form of one of the hardest substances (diamond) or one of the softest (graphite).',
    /* 7   */ 'Chemistry is usually not funny, but Nitrogen will keep you laughing all day! Nitrogen is used as laughing gas at the dentist, to distract your mind from the painful dental procedures and help you relax! At least it’s better than my father’s jokes... ',
    /* 8   */ 'Nature’s Chosen One loves colors. Solid and liquid oxygen usually appear light blue, but it can also appear in red, orange, pink, and black! ',
    /* 9   */ 'This highly explosive element is carbon s arch-nemesis. Fluorine is one of the few elements that can attack diamond. Anybody want to watch Carbonman Vs. Fluorineman? ',
    /* 10   */ 'News flash: Neon, the New Helium? If you always find your helium balloons keep flying away from you, you may want to consider gaseous neon as your new balloon guy. If you fill a balloon with neon, it will rise in the air, but it would do it at a much slower rate than a helium-filled one. The balloon-stealing sky wouldnot be happy though... ',
    /* 11   */ 'Sir Humphry Davy was a chemistry genius for a reason. It takes most chemists years (or decades) to find a new element. After discovering potassium, he discovered sodium within a few days. Talk about smart! ',
    /* 12   */ 'Like carbons diamond, magnesium is almost invincible. What would you do if you saw a magnesium fire? Spray nitrogen or carbon dioxide? Won"t work! Pour water to put it out? That will only make it worse! Magnesium fires are hard to put out, because they can burn through nitrogen carbon dioxide and water.  ',
    /* 13   */ 'Ever wonder why you don"t see the thirteenth element in biology? Because of the number 13"s bad luck! Aluminium has no function in biology.  ',
    /* 14   */ 'Diamond has a side-kick, and it"s called Silicon Carbide(SiC). SiC is nearly as hard as diamond.  ',
    /* 15   */ 'Ah, phosphorus, the element that makes chemistry feel like the hardest spelling test ever. There are two super-villains called White Phosphorus and Black Phosphorus. White phosphorus is the "destroy everything '
        'within reach" type that can cause severe burns if you touch it. Black Phosphorus is the "evil impostor" type that looks like graphite powder and conducts electricity even though it is not a metal. Watch out for the Colorful Phosphorus Brothers!  ',
    /* 16   */ 'Sulfur is taking over the moon! Or rather, one of Jupiter"s moons, Io. It appears yellow due to the large amount of sulfur on its surface. This sulfur comes from its many active volcanoes.  ',
    /* 17   */ 'Ugh. The smelly stuff in the swimming pool. Apparently it"s deadly too! Chlorine gas was used by the Germans in World War I to poison Allied soldiers.  ',
    /* 18   */ 'Amazingly, argon is a lot like humans. It"s a homework slacker, chill-out guy and couch potato who ain"t care about nothing. Literally. The name argon comes from the Greek word "argos" meaning "lazy" or "inactive." (It"s also best friends with aluminium, because it has nothing to do with biology too!)  ',
    /* 19   */ 'Where do you think we can find potassium in our food? Potatoes ? (Because it"s called "potassium")Correct! It can also be found in bananas, avocados, nuts, parsley, and chocolate. (Mmm...)  ',
    /* 20   */ 'Calcium and lime are soulmates. Calcium is named after the Greek name for lime, "calx", which is calcium oxide.  ',

    /* 21   */ 'Looks like you"re not the only one who failed in Geography! Although scandium was discovered by a Swedish chemist who named it after his homeland Scandinavia (Sweden is part of Scandinavia), it is usually found in Norway (home of the vikings that is another part of Scandinavia), and Madagascar (all the way in Africa!). Say hi to the lemurs for me, Scann!  ',
    /* 22   */ 'Like scandium, titanium is another globe-trotter. Or rather, outer-space-trotter! Titanium is found in meteorites, on the Moon, and in some types of stars, but it is also found in the Earth"s crust (though not as a pure element. It is used to make anything from high-end golf clubs and tennis rackets to plated towns at a museum in Spain.  ',
    /* 23   */ 'Always complaining that the names of elements are way to complicated? Well, it could have been a lot worse! Vanadium wasn"t originally supposed to be called vanadium. Proposed names for Element 23 included rionium, panchromium and erythronium. Personally, I"m relieved that vanadium is easier to spell  ',
    /* 24   */ 'Roses are red, while violets are blue. Rubies are red, while chronium is black/gray/blue/violet/orange/green/yellow/purple/other colors/red too! In fact, rubies get their red color from small traces of chromium!  ',
    /* 25   */ 'In the periodic table, we have friends like H2O (water), and enemies like mercury or lead. However, manganese (no, it"s not the language of manga!) is considered a frenemy-- although we need it to survive, such as for liver and kidney functioning, our bodies cannot store it!  ',
    /* 26   */ 'It is common knowledge not to eat things like iron bolts or screws. However, do you know that you"re actually eating it almost every day-- even without you knowing? Food sources of iron, which is good for your body, include red meat, beans, fish, and green leafy vegetables. (Note: these food sources DO NOT include the iron magnets in your science lab!)  ',
    /* 27   */ 'Hey, fantasy lovers! If you hate chemistry (which probably everybody does except for me), then this fact is for you! The name cobalt comes from the German word kobold, meaning "goblin ore." How magical!  ',
    /* 28   */ 'Warning: Bombshell ahead! Why are nickel and copper mortal enemies? Here"s the exclusive scoop! Although the U.S. five cent coin is called the "nickel", it is actually three-quarters made of copper! Only 25% of it is made by nickel, so nickel had stolen the credit and technically it should be called the "copper"! That scoundrel!  ',
    /* 29   */ 'Pure gold is so soft that you can shape it with your hands, which is why most gold jewellery is actually a mixture of gold, silver and copper. In Europe, it was forbidden to alloy gold with metals other than silver and copper up until the 19th century. Even twenty-four carat gold contains copper!  ',
    /* 30   */ 'Zinc is found everywhere in daily life: in every cell of the human body, in the earth, in the food we eat and in products we use (sunblock, automobiles, cosmetics, airplanes, appliances, surgical tools, zinc lozenges).  ',
    /* 31   */ 'Liquid gallium cannot be kept in a glass or metal container because it expands 3.1 percent when it freezes. and Gallium has been used in nuclear bombs to stabilize the crystal structure  ',
    /* 32   */ 'Germanium is metalloid, which means it has properties of both metals and nonmetals. Other metalloids on the periodic table are boron, silicon, arsenic, antimony, tellurium, and polonium, according to the Los Alamos National Laboratory.  ',
    /* 33   */ 'As early as 82 B.C., the Roman dictator Lucius Cornelius Sulla attempted to end a rash of arsenic poisonings by passing the Lex Cornelia, the first known law against poisoning, according to Dartmouth College.  ',
    /* 34   */ 'Selenium gets its name from the Greek word "selene," which means "moon." Selene was the Greek goddess of the moon and Selenium is protective against mercury poisoning.  ',
    /* 35   */ 'Bromine is a halogen, according to Chemicool. Halogen elements (fluorine, chlorine, bromine, iodine and astatine) are never found alone in nature and produce salts when reacting with metals.  ',
    /* 36   */ 'OK, let"s talk Superman. The superhero"s home world was first referenced in 1938. At first, the Superman comics referenced all residents of the destroyed planet of Krypton as possessing super strength; by the 1950s, however, the story shifted. Superman would have been an average Joe on Krypton, but Earth"s lighter gravity and yellow sun gave him his superpowers.  ',
    /* 37   */ 'Rubidium is a silvery-white and very soft metal — and one of the most highly reactive elements on the periodic table. Rubidium has a density about one and a half times that of water and is solid at room temperature, although the metal will melt if it"s just a bit warmer, according to Chemicool.   ',
    /* 38   */ 'The first large-scale application of strontium was in the beet sugar industry just prior to World War I. More than 100,000 tons of strontium hydroxide were used each year in the sugar crystallization process.  ',
    /* 39   */ 'Yttrium (Y) has an atomic number of thirty-nine. This rare-earth element ignites easily in air, and has been found in rocks retrieved from the moon.  ',
    /* 40   */ 'Zirconium doesn’t just exist here on Earth. Scientists also believe that there is some level of zirconium on the sun. Additionally, NASA has found zirconium in some of the lunar rock obtained from the moon. And there is also likely zirconium in many meteorites floating through the solar system.  ',
    /* 41   */ 'Niobium is named for the Greek goddess of tears, Niobe, who was the daughter of king Tantalus, according to the Royal Society of Chemistry, due to the element"s similarities to tantalum (named for the king).  ',
    /* 42   */ '"Big Bertha," the German 43-ton gun used in World War II, contained molybdenum, rather than iron, as an essential component of its steel, because of its much higher melting point.  ',
    /* 43   */ 'Technetium is the only element that is artificially produced. This property gives technetium its name, from the Greek for "artificial."  ',
    /* 44   */ 'The element name comes from the Latin word ‘Ruthenia’. Ruthenia means Russia, which refers to the Ural Mountains of Russia, the original source of the platinum metal group ores  ',
    /* 45   */ 'South African PGM producers extract a mix of metals comprising approximately 60 percent platinum, 30 percent palladium and 10 percent rhodium,   ',
    /* 46   */ 'Palladium"s most incredible ability is that it can absorb up to 900 times its volume of hydrogen, according to the Thomas Jefferson National Accelerator Facility. Because of this ability, palladium is used to store and filter hydrogen.  ',
    /* 47   */ 'Silver is super shiny! Polished silver reflects 95% of the visible light spectrum, which makes it the most reflective metal. Because of that, many mirrors are coated with it. Its reflective properties are also used for objects like telescopes, microscopes and solar panels  ',
    /* 48   */ 'Cadmium makes up 150 parts per billion by weight in the crust of the Earth and is typically found with zinc, which has very similar chemical properties, according to Chemicool.   ',
    /* 49   */ 'Indium metal gives off a high-pitched "scream," when bent. Similar to the "tin cry," this scream sounds more like a crackling sound.  ',
    /* 50   */ 'When tin is bent at room temperature, it makes a high-pitched creaking sound known as the "tin cry," caused by the deformation of tin crystals  ',
    /* 51   */ 'China is typically the top global producer of antimony, extracting between 84% and 88% of the supply. Antimony is ranked first on the British Geological Survey"s Risk List, due to its supply.  ',
    /* 52   */ 'Tellurium is one of the rarest elements on Earth, but is abundant in space. It is found on Earth with nearly the same abundance as platinum.  ',
    /* 53   */ 'We get most of our iodine from milk. Iodine regulates our metabolism. It was used to make the first photographs  ',
    /* 54   */ 'Like helium, you can fill balloons with xenon, but it is very expensive and the balloon becomes very heavy because the gas is so dense. An average balloon can hold around 40 lbs. (18.1 kilograms) of xenon.',
    /* 55   */ 'Cesium is an alkali metal, along with lithium, sodium, potassium, rubidium and francium. Alkali metals are highly reactive, have one electron in their outer shell, and do not occur freely in nature, according to ChemicalElements. These metals are also very malleable, ductile and good heat and electrical conductors.  ',
    /* 56   */ 'The average adult contains about 22 mg of barium because it is present in foods such as carrots, onions, lettuce, beans, and cereal grains.  ',
    /* 57   */ 'As a rare-earth metal, lanthanum is found in rare-earth minerals such as cerite, monazite, allanite and bastnasite. In monazite and bastnasite, lanthanum can be found in percentages up to 25 percent and 38 percent respectively.  ',
    /* 58   */ 'Cerium is a component of mischmetal, used in the manufacture of alloys for cigarette lighters. Cerium is also extensively used in the film and television industry in carbon arc lighting for studio lighting and projector lights.  ',
    /* 59   */ 'Praseodymium occurs naturally in the Earth"s crust at an abundance of 9.5 parts per million. It accounts for about 5% of the lanthanides found in the minerals monazite and bastnasite. Seawater contains 1 part per trillion of Pr. Essentially no praseodymium is found in the Earth"s atmosphere.  ',
    /* 60   */ 'Neodymium colors glass several shades, ranging from pure violet through deep red and warm gray tones. This glass is used in astronomical work to produce sharp absorption bands to calibrate spectral lines.  ',
    /* 61   */ 'All of the isotopes of promethium are radioactive. It is the only radioactive rare earth metal and it is one of only two radioactive elements followed by stable elements on the periodic table. The other element like this is technetium.  ',
    /* 62   */ 'Ingesting the right dose of samarium chloride will allow it to bind with alcohol and prevent you from getting intoxicated.  ',
    /* 63   */ 'Europium is used in the printing of euro banknotes. It glows red under UV light, and forgeries can be detected by the lack of this red glow ',
    /* 64   */ 'The metal has unusual superconductive properties. The resistance and workability of iron and chromium can be improved with as little as 1 percent gadolinium.   ',
    /* 65   */ 'There are not many commercial uses for terbium, sodium terbium borate is used in solid-state devices  ',
    /* 66   */ 'At room temperature, dysprosium is a bright silver metal that slowly oxidizes in air and readily burns. It is soft enough to be cut with a knife. The metal tolerates machining so long as it isn"t overheated (which can lead to sparking and ignition).  ',
    /* 67   */ 'Holmium isotopes are good neutron absorbers and are used in nuclear reactor control rods.',
    /* 68   */ 'Erbium is considered to be moderately toxic .It is one of the rare earth metals  ',
    /* 69   */ 'Thulium is not found free in nature but is found in a number of minerals: mainly monazite, gadolinite, xenotime and euxenite. Commercially, it is isolated by ion exchange and solvent extraction.  ',
    /* 70   */ 'It can be alloyed with stainless steel to improve some of its mechanical properties and used as a doping agent in fiber optic cable.  ',
    /* 71   */ 'Lutetium was the last natural rare earth element that was discovered .Lutetium is never found naturally in pure form.   ',
    /* 72   */ 'Hafnium does not exist in nature on its own, but is combined with zirconium to form minerals.  ',
    /* 73   */ 'More than half of tantalum’s use is for electrolytic capacitors and vacuum furnace parts. The element is also used to make chemical process equipment, nuclear reactors, aircraft and missile parts.  ',
    /* 74   */ 'Highest Melting Point of All Metals. You might be surprised to learn that tungsten has the highest melting point of all metals.  ',
    /* 75   */ 'Rhenium wire is used in flash photography. It is used in hydrogenation of fine chemicals and as an additive to tungsten and molybdenum-based alloys  ',
    /* 76   */ 'Because of its density, osmium is often alloyed with other precious metals to make products such as instrument pivots, phonograph needles, and electrical contacts.When naturally combined with iridium, it is used in fountain pen tips.  ',
    /* 77   */ 'Iridium is the most corrosion-resistant element on the Periodic Table of Elements. It also has the highest density of all the elements. Because it resists corrosion, it is used to set standards in weights and measures  ',
    /* 78   */ 'it was once known as "white gold." It is extremely resistant to tarnishing and corrosion (which makes it known as a "noble metal") and is very soft and malleable, making it easy to shape.  ',
    /* 79   */ 'Gold has been discovered on every continent on Earth. Gold has been mined for over 5,000 years. And its your mom"s one of the favorite element.',
    /* 80   */ 'Mercury looks pretty, in its shiny, fast-moving liquid form, but don"t touch! It can be extremely poisonous to humans.  Greek name, hydrargyrum, which means "liquid silver" — to reflect its shiny surface.',
    /* 81   */ 'Thallium is a toxic metal and should not come into direct contact with skin. It’s also suspected as being carcinogenic.  ',
    /* 82   */ 'Pencils do not — and never did — contain lead. The "lead" in pencils is actually graphite. When large deposits of graphite were first discovered in England in the 1500s, people assumed they had discovered lead, hence the name.  ',
    /* 83   */ 'Bismuth can also be used in nuclear reactors and to make transuranium elements using a process called cold fusion  ',
    /* 84   */ 'The first person to die of polonium poisoning may have been Marie Curie"s daughter Irène Joliot-Curie. In 1946, a polonium capsule exploded on her lab bench which may have been the reason she contracted leukemia and died 10 years later.  ',
    /* 85   */ 'There are only about 25 grams of naturally occurring astatine in Earth"s crust at any given time.  ',
    /* 86   */ 'Breathing radon can increase your risk of developing lung cancer. Radon is the second leading cause of lung cancer, and the leading cause of lung cancer for non-smokers.  ',
    /* 87   */ 'Francium is the second rarest element in the Earth"s crust next to astatine.  ',
    /* 88   */ 'Radium is the heaviest alkaline earth metal, according to Encyclopedia. Radium changes from a silvery white color to black when exposed to air, according to Lenntech due to oxidation  ',
    /* 89   */ 'Actinium’s high activity level makes it valuable in producing neutrons. There has been some work done to use 225Ac in treating cancer patients.  ',
    /* 90   */ 'Thorium is also used to strengthen magnesium, coating tungsten wire in electrical equipment, controlling the grain size of tungsten in electric lamps, high-temperature crucibles, in glasses, in camera and scientific instrument lenses, and is a source of nuclear power.  ',
    /* 91   */ 'In 1959 and 1961, the Great Britain Atomic Energy Authority extracted 125 grams of 99.9 percent protactinium. It was extracted from 60 tons of waste material and cost about \$500,000.   ',
    /* 92   */ 'Uranium has the highest atomic weight (19 kg m) of all naturally occurring elements. Uranium occurs naturally in low concentrations in soil, rock and water, and is commercially extracted from uranium-bearing minerals such as uraninite.  ',
    /* 93   */ 'Neptunium is a radioactive metal in the actinide series. Its name is derived from the planet Neptune. Neptune is the next planet out from the Sun after Uranus, just like neptunium is the next element in the periodic table after uranium.  ',
    /* 94   */ 'It has a half-life of about 82 million years and decays into uranium-240 through alpha decay, according to the Jefferson Lab. Plutonium was named after the planet, Pluto. This is because it came after Uranium, which was named after the planet Uranus, and neptunium, which was named after the planet Neptune.  ',
    /* 95   */ 'According to 1986 article published in Radiochemistry and Nuclear Chemistry by Norman Edelstein and Lester Morss, American researchers, americium is one of 15 actinide metals.  ',
    /* 96   */ 'Currently, curium is used primarily for basic scientific research. Some of its isotopes, however, have proven uses. 242Cm generates about three watts of thermal energy per gram, more than plutonium produces  ',
    /* 97   */ 'Because it is artificially produced and only small amounts exist, berkelium’s primary use is in basic scientific research. It has proven quite useful in that regard.  ',
    /* 98   */ 'Californium can be used in several applications in different industries. Because of its high radioactivity, these applications typically draw on information gathered from the material’s neutron emissions.  ',
    /* 99   */ 'Einsteinium is created in very small amounts from bombarding plutonium with neutrons in a nuclear reactor, according to the Royal Society of Chemistry.  ',
    /* 100   */ 'Since fermium is found only in small quantities and all its isotopes have short half-lives, there is no commercial use for the element. It is, however, used in scientific research that expands the knowledge of the rest of the periodic table.  ',
    /* 101   */ 'Mendelevium is produced by bombarding bismuth targets with argon ions, plutonium or americium targets with carbon or nitrogen ions, or einsteinium with alpha particles. Starting with einsteinium, femtogram samples of element 101 may be produced.  ',
    /* 102   */ 'Because nobelium has only been produced in small quantities, its only use is within scientific research.  ',
    /* 103   */ 'Because it has only been produced in small quantities, its only use is for scientific research.  ',
    /* 104   */ 'Because it has only been produced in small quantities, its only use is for scientific research.  ',
    /* 105   */ 'Because it has only been produced in small quantities, its only use is for scientific research.  ',
    /* 106   */ 'Because it has only been produced in small quantities, its only use is for scientific research.  ',
    /* 107   */ 'Because it has only been produced in small quantities, its only use is for scientific research. ',
    /* 108   */ 'Because it has only been produced in small quantities, its only use is for scientific research.  ',
    /* 109   */ 'Because it has only been produced in small quantities, its only use is for scientific research.  ',
    /* 110   */ 'Because it has only been produced in small quantities, its only use is for scientific research.  ',
    /* 111   */ 'Because it has only been produced in small quantities, its only use is for scientific research.  ',
    /* 112   */ 'Because it has only been produced in small quantities, its only use is for scientific research.  ',
    /* 113   */ 'Because it has only been produced in small quantities, its only use is for scientific research.  ',
    /* 114   */ 'Because it has only been produced in small quantities, its only use is for scientific research.  ',
    /* 115   */ 'Because it has only been produced in small quantities, its only use is for scientific research.  ',
    /* 116   */ 'Because it has only been produced in small quantities, its only use is for scientific research.  ',
    /* 117   */ 'Because it has only been produced in small quantities, its only use is for scientific research.  ',
    /* 118   */ 'Because it has only been produced in small quantities, its only use is for scientific research.  ',
    /* 119   */ 'Because it has only been produced in small quantities, its only use is for scientific research.  ',
  ];
}
