import 'package:periodic_table/Backend/ElementDetailConstructor.dart';

class ListOfElements{

  void main(){
    getElementSymbol(2);
  }

String  getElementSymbol(int elementNumber) {
    return elementList[elementNumber+1].elementNameSymbol;
    // return elementList[elementNumber].elementNameSymbol;
}

String  getElementFullName(int elementNumber) {
    return elementList[elementNumber+1].elementFullName;
    // return elementList[elementNumber].elementFullName;
}

int  getElementNumber(int elementNumber) {
    return elementList[elementNumber+1].elementNumber;
    // return elementList[elementNumber].elementNumber;
}


  String  getElementElectronNumber(int elementNumber) {
    return elementList[elementNumber+1].imageLink;
    // return elementList[elementNumber].imageLink;
  }

  String  getElementImageLink(int elementNumber) {
    return elementList[elementNumber+1].imageLink;
    // return elementList[elementNumber].imageLink;
  }

  List elementList = [

    ElementDetailConstructor(0, "?", "Welcome",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9CWS313Sxa5SiT4_ODJIihYrlGQPwGYEsQA&usqp=CAU"),
    ElementDetailConstructor(1, "H", "Hydrogen",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9CWS313Sxa5SiT4_ODJIihYrlGQPwGYEsQA&usqp=CAU"),
    ElementDetailConstructor(2, "He", "Helium",
        "https://science4fun.info/wp-content/uploads/2019/02/glowing-helium-gas.jpg"),
    ElementDetailConstructor(3, "Li", "Lithium",
        "https://newscenter.lbl.gov/wp-content/uploads/sites/2/2019/05/iStock-898893998.jpg"),
    ElementDetailConstructor(4, "Be", "Beryllium",
        "https://www.chemicalbook.com/NewsImg/2020-02-06/20202617414959100.jpg"),
    ElementDetailConstructor(5, "B", "Boron",
        "https://upload.wikimedia.org/wikipedia/commons/1/19/Boron_R105.jpg"),
    ElementDetailConstructor(6, "C", "Carbon",
        "https://www.resorbent.eu/images/produkty/nauhlicovadla/grafit.jpg"),
    ElementDetailConstructor(7, "N", "Nitrogen",
        "https://4.imimg.com/data4/DL/IG/MY-3137311/liquid-nitrogen-gas-500x500.jpg"),
    ElementDetailConstructor(8, "O", "Oxygen",""
        "https://images-of-elements.com/oxygen-2.jpg"),
    ElementDetailConstructor(9, "F", "Fluorine",""
        "https://upload.wikimedia.org/wikipedia/commons/2/2d/Nitrogen-glow.jpg"),
    ElementDetailConstructor(10, "Ne", "Neon",
        "https://upload.wikimedia.org/wikipedia/commons/f/f8/Neon-glow.jpg"),
    ElementDetailConstructor(11, "Na", "Sodium",
        "https://lh3.googleusercontent.com/proxy/4RiEyBIfGBm9o3ozZ-ar2mrKwlxf-iyEKwVw31UuYuBX3YyjsyT6dja2jj_xlu0EhdD2k679uWF8flHFgFzHUgs9kbzgzRGj4auZHp3Vv8o"),
    ElementDetailConstructor(12, "Mg", "Magnesium",
        "https://chemicool.com/elements/images/300-magnesium-metal.jpg"),
    ElementDetailConstructor(13, "Al", "Aluminum","https://upload.wikimedia.org/wikipedia/commons/5/5d/Aluminium-4.jpg"),
    ElementDetailConstructor(14, "Si", "Silicon","https://cdn.mos.cms.futurecdn.net/4FvnXe9VBTHj6nJag6tNKL-1200-80.jpg"),
    ElementDetailConstructor(15, "P", "Phosphorus",""
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/White_phosphorus_glowing_e17.png/200px-White_phosphorus_glowing_e17.png"),
    ElementDetailConstructor(16, "S", "Sulfur","https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Sulfur-sample.jpg/220px-Sulfur-sample.jpg"),
    ElementDetailConstructor(17, "Cl", "Chlorine","https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Chlorine_ampoule.jpg/220px-Chlorine_ampoule.jpg"),
    ElementDetailConstructor(18, "Ar", "Argon",
        "https://www.chemicool.com/elements/images/300-argon-discharge.jpg"),
    ElementDetailConstructor(19, "K", "Potassium","https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Potassium-2.jpg/220px-Potassium-2.jpg"),
    ElementDetailConstructor(20, "Ca",
        "Calcium","https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Calcium_unter_Argon_Schutzgasatmosph%C3%A4re.jpg/220px-Calcium_unter_Argon_Schutzgasatmosph%C3%A4re.jpg"),


    ElementDetailConstructor(21, "Sc", "Scandium",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Scandium_sublimed_dendritic_and_1cm3_cube.jpg/220px-Scandium_sublimed_dendritic_and_1cm3_cube.jpg"),
    ElementDetailConstructor(22, "Ti",
        "Titanium","https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Titan-crystal_bar.JPG/220px-Titan-crystal_bar.JPG"),
    ElementDetailConstructor(23, "V", "Vanadium","https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Vanadium_etched.jpg/220px-Vanadium_etched.jpg"),
    ElementDetailConstructor(24, "Cr", "Chromium","https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Chromium_crystals_and_1cm3_cube.jpg/220px-Chromium_crystals_and_1cm3_cube.jpg"),
    ElementDetailConstructor(25, "Mn", "Manganese","https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Mangan_1-crop.jpg/200px-Mangan_1-crop.jpg"),
    ElementDetailConstructor(26, "Fe", "Iron","https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Iron_electrolytic_and_1cm3_cube.jpg/220px-Iron_electrolytic_and_1cm3_cube.jpg"),
    ElementDetailConstructor(27, "Co", "Cobalt ",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Cobalt%28II%29-chloride-hexahydrate-sample.jpg/220px-Cobalt%28II%29-chloride-hexahydrate-sample.jpg"),
    ElementDetailConstructor(28, "Ni", "Nickel",""
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Nickel_chunk.jpg/190px-Nickel_chunk.jpg"),
    ElementDetailConstructor(29, "Cu", "Copper",""
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/NatCopper.jpg/220px-NatCopper.jpg"),
    ElementDetailConstructor(30, "Zn", "Zinc",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Zinc_fragment_sublimed_and_1cm3_cube.jpg/220px-Zinc_fragment_sublimed_and_1cm3_cube.jpg"),
    ElementDetailConstructor(31, "Ga", "Gallium","https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Gallium_crystals.jpg/220px-Gallium_crystals.jpg"),
    ElementDetailConstructor(32, "Ge", "Germanium"
        ,"https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Polycrystalline-germanium.jpg/220px-Polycrystalline-germanium.jpg"),
    ElementDetailConstructor(33, "As", "Arsenic","https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Arsen_1a.jpg/220px-Arsen_1a.jpg"),
    ElementDetailConstructor(34, "Se", "Selenium","https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/SeBlackRed.jpg/220px-SeBlackRed.jpg"),
    ElementDetailConstructor(35, "Br", "Bromine",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Bromine_vial_in_acrylic_cube.jpg/220px-Bromine_vial_in_acrylic_cube.jpg"),
    ElementDetailConstructor(36, "Kr", "Krypton",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/KrTube.jpg/220px-KrTube.jpg"),
    ElementDetailConstructor(37, "Rb", "Rubidium",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Rb5.JPG/220px-Rb5.JPG"),
    ElementDetailConstructor(38, "Sr", "Strontium",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Strontium_destilled_crystals.jpg/220px-Strontium_destilled_crystals.jpg"),
    ElementDetailConstructor(39, "Y",
        "Yttrium","https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Yttrium_sublimed_dendritic_and_1cm3_cube.jpg/220px-Yttrium_sublimed_dendritic_and_1cm3_cube.jpg"),
    ElementDetailConstructor(40, "Zr", "Zirconium",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Zirconium_crystal_bar_and_1cm3_cube.jpg/220px-Zirconium_crystal_bar_and_1cm3_cube.jpg"),


    ElementDetailConstructor(41, "Nb",
        "Niobium","https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Niobium_crystals_and_1cm3_cube.jpg/220px-Niobium_crystals_and_1cm3_cube.jpg"),
    ElementDetailConstructor(42, "Mo", "Molybdenum",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Molybdenum_crystaline_fragment_and_1cm3_cube.jpg/220px-Molybdenum_crystaline_fragment_and_1cm3_cube.jpg"),
    ElementDetailConstructor(43, "Tc", "Technetium","https://upload.wikimedia.org/wikipedia/en/thumb/8/89/Technetium.jpg/220px-Technetium.jpg"),
    ElementDetailConstructor(44, "Ru", "Ruthenium","https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Ruthenium_a_half_bar.jpg/220px-Ruthenium_a_half_bar.jpg"),
    ElementDetailConstructor(45, "Rh", "Rhodium","https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Rhodium_powder_pressed_melted.jpg/220px-Rhodium_powder_pressed_melted.jpg"),
    ElementDetailConstructor(46, "Pd", "Palladium","https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Palladium_%2846_Pd%29.jpg/220px-Palladium_%2846_Pd%29.jpg"),
    ElementDetailConstructor(47, "Ag", "Silver", "https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Silver_crystal.jpg/220px-Silver_crystal.jpg"),
    ElementDetailConstructor(48, "Cd", "Cadmium","https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Cadmium-crystal_bar.jpg/220px-Cadmium-crystal_bar.jpg"),
    ElementDetailConstructor(49, "In", "Indium","https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Indium.jpg/220px-Indium.jpg"),
    ElementDetailConstructor(50, "Sn", "Tin","https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Sn-Alpha-Beta.jpg/220px-Sn-Alpha-Beta.jpg"),
    ElementDetailConstructor(51, "Sb", "Antimony","https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Antimony-4.jpg/220px-Antimony-4.jpg"),
    ElementDetailConstructor(52, "Te", "Tellurium","https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Tellurium2.jpg/220px-Tellurium2.jpg"),
    ElementDetailConstructor(53, "I", "Iodine","https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Sample_of_iodine.jpg/220px-Sample_of_iodine.jpg"),
    ElementDetailConstructor(54, "Xe", "Xenon","https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Xenon_discharge_tube.jpg/220px-Xenon_discharge_tube.jpg"),
    ElementDetailConstructor(55, "Cs" , "Cesium","https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Cesium.jpg/220px-Cesium.jpg"),
    ElementDetailConstructor(56, "Ba" , "Barium",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Barium_unter_Argon_Schutzgas_Atmosph%C3%A4re.jpg/220px-Barium_unter_Argon_Schutzgas_Atmosph%C3%A4re.jpg"),
    ElementDetailConstructor(57, "La" , "Lanthanum","https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Lanthanum-2.jpg/220px-Lanthanum-2.jpg"),
    ElementDetailConstructor(58, "Ba" , "Cerium","https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Cerium2.jpg/220px-Cerium2.jpg"),
    ElementDetailConstructor(59, "Ba" , "Barium",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Barium_unter_Argon_Schutzgas_Atmosph%C3%A4re.jpg/220px-Barium_unter_Argon_Schutzgas_Atmosph%C3%A4re.jpg"),
    ElementDetailConstructor(60, "Nd", "Neodymium",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Neodymium2.jpg/220px-Neodymium2.jpg"),



    ElementDetailConstructor(61, "Pm", "Promethium","http://www.msrblog.com/wp-content1/uploads/2017/10/Promethium0.jpg"),
    ElementDetailConstructor(62, "Sm", "Samarium","https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Samarium-2.jpg/220px-Samarium-2.jpg"),
    ElementDetailConstructor(63, "Eu", "Europium","https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Europium.jpg/220px-Europium.jpg"),
    ElementDetailConstructor(64, "Gd", "Gadolinium","https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Gadolinium-4.jpg/220px-Gadolinium-4.jpg"),
    ElementDetailConstructor(65, "Tb", "Terbium","https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Terbium-2.jpg/220px-Terbium-2.jpg"),
    ElementDetailConstructor(66, "Dy", "Dysprosium","https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Dy_chips.jpg/220px-Dy_chips.jpg"),
    ElementDetailConstructor(67, "Ho", "Holmium","https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Holmium2.jpg/220px-Holmium2.jpg"),
    ElementDetailConstructor(68, "Er", "Erbium","https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Erbium-crop.jpg/170px-Erbium-crop.jpg"),
    ElementDetailConstructor(69, "Tm",
        "Thulium","https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Thulium_sublimed_dendritic_and_1cm3_cube.jpg/220px-Thulium_sublimed_dendritic_and_1cm3_cube.jpg"),
    ElementDetailConstructor(70, "Yb", "Ytterbium","https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Ytterbium-3.jpg/220px-Ytterbium-3.jpg"),
    ElementDetailConstructor(71, "Lu",
        "Lutetium","https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Lutetium_sublimed_dendritic_and_1cm3_cube.jpg/220px-Lutetium_sublimed_dendritic_and_1cm3_cube.jpg"),



    ElementDetailConstructor(72, "Hf", "Hafnium","https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Hafnium_bits.jpg/220px-Hafnium_bits.jpg"),
    ElementDetailConstructor(73, "Ta", "Tantalum","https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Tantalum_single_crystal_and_1cm3_cube.jpg/220px-Tantalum_single_crystal_and_1cm3_cube.jpg"),
    ElementDetailConstructor(74, "W",
        "Tungsten","https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Wolfram_evaporated_crystals_and_1cm3_cube.jpg/220px-Wolfram_evaporated_crystals_and_1cm3_cube.jpg"),
    ElementDetailConstructor(75, "Re", "Rhenium",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Rhenium_single_crystal_bar_and_1cm3_cube.jpg/220px-Rhenium_single_crystal_bar_and_1cm3_cube.jpg"),
    ElementDetailConstructor(76, "Os", "Osmium","https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Osmium_crystals.jpg/220px-Osmium_crystals.jpg"),
    ElementDetailConstructor(77, "Ir", "Iridium","https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Iridium-2.jpg/220px-Iridium-2.jpg"),
    ElementDetailConstructor(78, "Pt", "Platinum","https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Platinum_crystals.jpg/220px-Platinum_crystals.jpg"),
    ElementDetailConstructor(79, "Au", "Gold","https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Gold_nugget_%28Australia%29_4_%2816848647509%29.jpg/220px-Gold_nugget_%28Australia%29_4_%2816848647509%29.jpg"),
    ElementDetailConstructor(80, "Hg", "Mercury","https://5.imimg.com/data5/AP/JC/MY-47646714/mercury-element-500x500.png"),
    ElementDetailConstructor(81, "Tl", "Thallium","https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Thallium_pieces_in_ampoule.jpg/220px-Thallium_pieces_in_ampoule.jpg"),
    ElementDetailConstructor(82, "Pb", "Lead","https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Lead_electrolytic_and_1cm3_cube.jpg/220px-Lead_electrolytic_and_1cm3_cube.jpg"),
    ElementDetailConstructor(83, "Bi", "Bismuth","https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Bismuth_crystals_and_1cm3_cube.jpg/220px-Bismuth_crystals_and_1cm3_cube.jpg"),
    ElementDetailConstructor(84, "Po", "Polonium","https://upload.wikimedia.org/wikipedia/en/thumb/6/66/Polonium.jpg/220px-Polonium.jpg"),
    ElementDetailConstructor(85, "At", "Astatine","https://www.chemistrylearner.com/wp-content/uploads/2018/03/Astatine-300x225.jpg"),
    ElementDetailConstructor(86, "Rn", "Radon","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwjR6_YmGVlM4n5N_eaIkGBtEixfqPiTr56A&usqp=CAU"),
    ElementDetailConstructor(87, "Fr", "Francium","https://www.chemistrylearner.com/wp-content/uploads/2018/02/Francium-300x200.jpg"),
    ElementDetailConstructor(88, "Ra", "Radium","https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Radium226.jpg/220px-Radium226.jpg"),
    ElementDetailConstructor(89, "Ac", "Actinium","https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Actinium_sample_%2831481701837%29.png/220px-Actinium_sample_%2831481701837%29.png"),


    ElementDetailConstructor(90, "Th", "Thorium","https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/Thorium_sample_0.1g.jpg/220px-Thorium_sample_0.1g.jpg"),
    ElementDetailConstructor(91, "Pa", "Protactinium","https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Protactinium.jpg/220px-Protactinium.jpg"),
    ElementDetailConstructor(92, "U", "Uranium","https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/HEUraniumC.jpg/220px-HEUraniumC.jpg"),
    ElementDetailConstructor(93, "Np", "Neptunium","https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Np_sphere.jpg/220px-Np_sphere.jpg"),
    ElementDetailConstructor(94, "Pu", "Plutonium","https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Plutonium3.jpg/220px-Plutonium3.jpg"),
    ElementDetailConstructor(95, "Am", "Americium","https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Americium_microscope.jpg/220px-Americium_microscope.jpg"),
    ElementDetailConstructor(96, "Cm", "Curium","https://upload.wikimedia.org/wikipedia/en/thumb/6/69/Curium.jpg/220px-Curium.jpg"),
    ElementDetailConstructor(97, "Bk", "Berkelium","https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Berkelium_metal.jpg/220px-Berkelium_metal.jpg"),
    ElementDetailConstructor(98, "Cf", "Californium","https://upload.wikimedia.org/wikipedia/commons/9/93/Californium.jpg"),
    ElementDetailConstructor(99, "Es", "Einsteinium","https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Einsteinium.jpg/130px-Einsteinium.jpg"),
    ElementDetailConstructor(100, "Fm", "Fermium","https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Ivy_Mike_-_mushroom_cloud.jpg/220px-Ivy_Mike_-_mushroom_cloud.jpg"),
    ElementDetailConstructor(101, "Md", "Mendelevium","https://www.thoughtco.com/thmb/BK6ZvgOWVUdu9CwfI0xwg7-JpmE=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/mendelevium-chemical-element-186451093-5893b2573df78caebcf6df9e.jpg"),
    ElementDetailConstructor(102, "No	", "Nobelium",""),
    ElementDetailConstructor(103, "Lr", "Lawrencium",""),

    ElementDetailConstructor(104, "Rf", "Ratherfordium",""),
    ElementDetailConstructor(105, "Db", "Dubnium",""),
    ElementDetailConstructor(106, "Sg", "Dubnium",""),
    ElementDetailConstructor(107, "Bh", "Bohium",""),
    ElementDetailConstructor(108, "Mt", "Meitnerium",""),
    ElementDetailConstructor(109, "Uun", "Ununnillium",""),
    ElementDetailConstructor(110, "Uun", "Unununbium",""),
    ElementDetailConstructor(111, "Rf", "Ununbium",""),
    ElementDetailConstructor(112, "Db", "Dubnium",""),

    ElementDetailConstructor(113, "", "",""),
    ElementDetailConstructor(114, "Uuq", "Ununquadium",""),
    ElementDetailConstructor(115, "", "",""),
    ElementDetailConstructor(116, "Uuh", "Ununhexium",""),
    ElementDetailConstructor(117, "", "",""),
    ElementDetailConstructor(118, "", "",""),

  ];
}