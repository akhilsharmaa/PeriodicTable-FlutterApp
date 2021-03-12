import 'package:periodic_table/Backend/ElementDetailConstructor.dart';

class ListOfElements{

  void main(){
    getElementSymbol(2);
  }

  int  getElementNumber(int elementNumber) {return elementList[elementNumber+1].elementNumber;}
    // return elementList[elementNumber].elementNumber;}

  String  getElementSymbol(int elementNumber) {return elementList[elementNumber+1].elementNameSymbol;}
    // return elementList[elementNumber].elementNameSymbol;}

  String  getElementFullName(int elementNumber) {return elementList[elementNumber+1].elementFullName;}
    // return elementList[elementNumber].elementFullName;}

  String  getYearOfDiscovery(int elementNumber) {return elementList[elementNumber+1].yearOfDiscovery;}
    // return elementList[elementNumber].elementFullName;}

  String  getElementDiscoveryBy(int elementNumber) {return elementList[elementNumber+1].elementDiscoveryBy;}
    // return elementList[elementNumber].elementFullName;}

  String  getElementElectronNumber(int elementNumber) {return elementList[elementNumber+1].imageLink;}
    // return elementList[elementNumber].imageLink;}

  String  getElementAtomicMass(int elementNumber) {return elementList[elementNumber+1].elementAtomicMass;}
    // return elementList[elementNumber].imageLink;}

  String  getElementElectronConfiguration(int elementNumber) {return elementList[elementNumber+1].electronConfiguration;}
    // return elementList[elementNumber].imageLink;}

  String  getNumberOfElectrons(int elementNumber) {return elementList[elementNumber+1].numberOfElectrons;}
    // return elementList[elementNumber].imageLink;}

  String  getNumberOfProtons(int elementNumber) {return elementList[elementNumber+1].numberOfProtons;}
    // return elementList[elementNumber].imageLink;}

  String  getNumberOfNeutron(int elementNumber) {return elementList[elementNumber+1].numberOfNeutrons;}
    // return elementList[elementNumber].imageLink;}

  String  getValencyOfAtom(int elementNumber) {return elementList[elementNumber+1].valencyOfAtom;}
    // return elementList[elementNumber].imageLink;}

  String  getElementImageLink(int elementNumber) {return elementList[elementNumber+1].imageLink;}
    // return elementList[elementNumber].imageLink;


  List elementList = [

    ElementDetailConstructor(0, "?", "Welcome","Year of Discovery","Discovered by","elementAtomicMass","electronConfiguration","",
       "" ,"","","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9CWS313Sxa5SiT4_ODJIihYrlGQPwGYEsQA&usqp=CAU"),

    ElementDetailConstructor(1, "H", "Hydrogen","1766"," Henry Cavendish","4.002602 u","1s1","1","1","0","1",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9CWS313Sxa5SiT4_ODJIihYrlGQPwGYEsQA&usqp=CAU"),

    ElementDetailConstructor(2, "He", "Helium","1868"," Pierre Janssen"," 4.002602 u","1s²","2","2","2","0",
        "https://science4fun.info/wp-content/uploads/2019/02/glowing-helium-gas.jpg"),

    ElementDetailConstructor(3, "Li", "Lithium","1817","Johan August Arfvedson","6.941 u","[He] 2s1","3","3","4","1",
        "https://newscenter.lbl.gov/wp-content/uploads/sites/2/2019/05/iStock-898893998.jpg"),

    ElementDetailConstructor(4, "Be", "Beryllium","1798","Louis Nicolas Vauquelin","9.012182 u","[He] 2s²","4","4","5","2",
        "https://www.chemicalbook.com/NewsImg/2020-02-06/20202617414959100.jpg"),

    ElementDetailConstructor(5, "B", "Boron","1808"," Joseph Louis Gay-Lussac","10.811 u","[He] 2s²2p1","5","5","6","3",
        "https://upload.wikimedia.org/wikipedia/commons/1/19/Boron_R105.jpg"),

    ElementDetailConstructor(6, "C", "Carbon","1789","Antoine Lavoisier","12.011 u","[He] 2s² 2p2","6","6","6","4",
        "https://www.resorbent.eu/images/produkty/nauhlicovadla/grafit.jpg"),

    ElementDetailConstructor(7, "N", "Nitrogen","1772","Daniel Rutherford","14.0067 u"," [He]2s²2p3","7","7","7","3",
        "https://4.imimg.com/data4/DL/IG/MY-3137311/liquid-nitrogen-gas-500x500.jpg"),

    ElementDetailConstructor(8, "O", "Oxygen","1774","Joseph Priestley","15.999 u","[He] 2s²2p⁴","8","8","8","2",
        "https://images-of-elements.com/oxygen-2.jpg"),

    ElementDetailConstructor(9, "F", "Fluorine","1886","Henri Moissan"," 18.998403 u","[He] 2s²2p5","9","9","10", "1",
        "https://upload.wikimedia.org/wikipedia/commons/2/2d/Nitrogen-glow.jpg"),

    ElementDetailConstructor(10, "Ne", "Neon","1898","Sir William Ramsay","20.1797 u","[He] 2s²2p⁶","10","10","10","0",
        "https://upload.wikimedia.org/wikipedia/commons/f/f8/Neon-glow.jpg"),

    ElementDetailConstructor(11, "Na", "Sodium","1807","Sir Humphry Davy","22.989769 u","[Ne] 3s¹","11","11","11", "1",
        "https://lh3.googleusercontent.com/proxy/4RiEyBIfGBm9o3ozZ-ar2mrKwlxf-iyEKwVw31UuYuBX3YyjsyT6dja2jj_xlu0EhdD2k679uWF8flHFgFzHUgs9kbzgzRGj4auZHp3Vv8o"),

    ElementDetailConstructor(12, "Mg", "Magnesium","1755","oseph Black","24.305 u","[Ne] 3s2","12","12","12","2",
        "https://chemicool.com/elements/images/300-magnesium-metal.jpg"),

    ElementDetailConstructor(13, "Al", "Aluminum","1825","Hans Christian Ørsted","26.981539 u"," [Ne] 3s²3p¹","13","13","13","3",
        "https://upload.wikimedia.org/wikipedia/commons/5/5d/Aluminium-4.jpg"),

    ElementDetailConstructor(14, "Si", "Silicon","1824","Swedish chemist Jöns","28.0855 u","[Ne] 3s²3p²","14","14","14","4",
        "https://cdn.mos.cms.futurecdn.net/4FvnXe9VBTHj6nJag6tNKL-1200-80.jpg"),

    ElementDetailConstructor(15, "P", "Phosphorus","1669","Hennig Brandt","30.973762 u","[Ne] 3s²3p³","15","15","15", "3",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/White_phosphorus_glowing_e17.png/200px-White_phosphorus_glowing_e17.png"),

    ElementDetailConstructor(16, "S","Sulfur","1809","Joseph Gay-Lussac","32.06 u","[Ne] 3s2 3p4","16","16","16","2",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Sulfur-sample.jpg/220px-Sulfur-sample.jpg"),

    ElementDetailConstructor(17, "Cl", "Chlorine","1774","Carl Wilhelm Scheele","35.453 u","[Ne] 3s²3p⁵","17","17","17","1",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Chlorine_ampoule.jpg/220px-Chlorine_ampoule.jpg"),

    ElementDetailConstructor(18, "Ar", "Argon","1894","39.948 u","39.948 u","[Ne] 3s²3p⁶","18","18","18", "0",
        "https://www.chemicool.com/elements/images/300-argon-discharge.jpg"),

    ElementDetailConstructor(19, "K","Potassium","1807","Sir Humphry Davy"," 39.0983 u", "[Ar] 4s1","19","19","19","1",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Potassium-2.jpg/220px-Potassium-2.jpg"),

    ElementDetailConstructor(20, "Ca", "Calcium","1808","Humphry Davy","40.078 u","[Ar] 4s²","20","20","20", "2",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Calcium_unter_Argon_Schutzgasatmosph%C3%A4re.jpg/220px-Calcium_unter_Argon_Schutzgasatmosph%C3%A4re.jpg"),





    ElementDetailConstructor(21, "Sc", "Scandium","1879","Lars Fredrik Nilson,"," 44.955912 u","[Ar] 3d¹4s²","21","21","21","3",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Scandium_sublimed_dendritic_and_1cm3_cube.jpg/220px-Scandium_sublimed_dendritic_and_1cm3_cube.jpg"),

    ElementDetailConstructor(22, "Ti", "Titanium","1791", "William Gregor", "47.867 u", "[Ar] 3d24s2","22","22","23","4",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Titan-crystal_bar.JPG/220px-Titan-crystal_bar.JPG"),

    ElementDetailConstructor(23, "V", "Vanadium","1801", "Andrés Manuel", "50.9415 u", "[Ar] 3d34s2","23","23","23","4",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Vanadium_etched.jpg/220px-Vanadium_etched.jpg"),

    ElementDetailConstructor(24, "Cr", "Chromium","1797"," Louis Nicolas","51.9961 u","[Ar] 3d⁵4s¹","24","24","24", "2",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Chromium_crystals_and_1cm3_cube.jpg/220px-Chromium_crystals_and_1cm3_cube.jpg"),

    ElementDetailConstructor(25, "Mn", "Manganese", "1774", " Johan Gottlieb ", "54.938044 u", "[Ar] 3d54s2","25","25","25", "2",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Mangan_1-crop.jpg/200px-Mangan_1-crop.jpg"),

    ElementDetailConstructor(26, "Fe", "Iron", "5000 BC", "Unknown", "55.845 u", "[Ar] 3d64s2","26","26","26", "3",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Iron_electrolytic_and_1cm3_cube.jpg/220px-Iron_electrolytic_and_1cm3_cube.jpg"),

    ElementDetailConstructor(27, "Co", "Cobalt ", "1735", " Georg Brandt", "58.933195 u", "[Ar] 3d74s2","27","27","27", "2",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Cobalt%28II%29-chloride-hexahydrate-sample.jpg/220px-Cobalt%28II%29-chloride-hexahydrate-sample.jpg"),

    ElementDetailConstructor(28, "Ni", "Nickel", "1751", " Axel Fredrik", "58.6934 u", " [Ar] 3d⁸4s²","28","28","28", "2",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Nickel_chunk.jpg/190px-Nickel_chunk.jpg"),

    ElementDetailConstructor(29, "Cu", "Copper", "9000 BC", "Unknown", "63.546 u", "[Ar] 3d¹⁰4s¹","29","29","29","1",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/NatCopper.jpg/220px-NatCopper.jpg"),

    ElementDetailConstructor(30, "Zn", "Zinc", "1746", "Andreas Marggraf ", "65.38 u", "[Ar] 3d¹⁰4s²","30","30","30", "2",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Zinc_fragment_sublimed_and_1cm3_cube.jpg/220px-Zinc_fragment_sublimed_and_1cm3_cube.jpg"),

    ElementDetailConstructor(31, "Ga", "Gallium", "1875", "Lecoq de Boisbaudran", "69.723 u", " [Ar] 3d104s24p1","31","31","39","+3",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Gallium_crystals.jpg/220px-Gallium_crystals.jpg"),

    ElementDetailConstructor(32, "Ge", "Germanium", "1886", " Clemens Winkler", "72.64 u", "[Ar] 3d¹⁰4s²4p²","32","32","41","4",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Polycrystalline-germanium.jpg/220px-Polycrystalline-germanium.jpg"),

    ElementDetailConstructor(33, "As", "Arsenic", "1250", "Albertus Magnus", "74.9216 u", "[Ar] 3d¹⁰4s²4p³","33","33","42","3",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Arsen_1a.jpg/220px-Arsen_1a.jpg"),

    ElementDetailConstructor(34, "Se","Selenium", "1817", "Johan Gottlieb Gahn", "78.96 u", "[Ar] 3d104s24p4","34","34","45","2",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/SeBlackRed.jpg/220px-SeBlackRed.jpg"),

    ElementDetailConstructor(35, "Br", "Bromine", "1826", " Antoine Jérôme", "79.904 u", "[Ar] 4s²3d¹⁰4p⁵","35","35","45","1",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Bromine_vial_in_acrylic_cube.jpg/220px-Bromine_vial_in_acrylic_cube.jpg"),

    ElementDetailConstructor(36, "Kr", "Krypton", "1898", " Morris Travers", "83.798 u", "[Ar] 3d¹⁰4s²4p⁶","36","36","48","0",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/KrTube.jpg/220px-KrTube.jpg"),

    ElementDetailConstructor(37, "Rb", "Rubidium", "1861", " Robert Bunsen", " 85.4678 u", "[Kr] 5s¹","37","37","48","1",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Rb5.JPG/220px-Rb5.JPG"),

    ElementDetailConstructor(38, "Sr", "Strontium", "1790", "Adair Crawford", "87.62 u", "[Kr] 5s2","38","38","50","2",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Strontium_destilled_crystals.jpg/220px-Strontium_destilled_crystals.jpg"),

    ElementDetailConstructor(39, "Y", "Yttrium", "1794", "Johan Gadolin", "88.90585 u", "[Kr] 4d15s2","39","39","50","+3",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Yttrium_sublimed_dendritic_and_1cm3_cube.jpg/220px-Yttrium_sublimed_dendritic_and_1cm3_cube.jpg"),

    ElementDetailConstructor(40, "Zr", "Zirconium", "1789", " Martin Heinrich", "91.224 u", "[Kr] 4d²5s²","40","40","51","4",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Zirconium_crystal_bar_and_1cm3_cube.jpg/220px-Zirconium_crystal_bar_and_1cm3_cube.jpg"),






    ElementDetailConstructor(41, "Nb","Niobium", "1801", " Charles Hatchett", "92.90638 u", "[Kr] 4d⁴5s¹","41","41","52","3",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Niobium_crystals_and_1cm3_cube.jpg/220px-Niobium_crystals_and_1cm3_cube.jpg"),

    ElementDetailConstructor(42, "Mo", "Molybdenum", "1778", " Carl Wilhelm ", "95.95 u", "[Kr] 4d₅5s₁","42","42","54","-",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Molybdenum_crystaline_fragment_and_1cm3_cube.jpg/220px-Molybdenum_crystaline_fragment_and_1cm3_cube.jpg"),

    ElementDetailConstructor(43, "Tc", "Technetium", "1937", " Carlo Perrier", "98 u", "[Kr] 4d55s2","43","43","55","1",
        "https://upload.wikimedia.org/wikipedia/en/thumb/8/89/Technetium.jpg/220px-Technetium.jpg"),


    ElementDetailConstructor(44, "Ru", "Ruthenium", "1844", " Karl Ernst Claus", "101.07 u", "[Kr] 4d75s1","44","44","57","-",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Ruthenium_a_half_bar.jpg/220px-Ruthenium_a_half_bar.jpg"),

    ElementDetailConstructor(45, "Rh", "Rhodium", "1803", "William H. Wollaston", "102.9055u", "Kr 4d8 5s1","45","45","58","3",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Rhodium_powder_pressed_melted.jpg/220px-Rhodium_powder_pressed_melted.jpg"),

    ElementDetailConstructor(46, "Pd", "Palladium", "1803 ", "William H. Wollaston", "106.42u", "[Kr] 4d¹⁰","46","46","60","2",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Palladium_%2846_Pd%29.jpg/220px-Palladium_%2846_Pd%29.jpg"),

    ElementDetailConstructor(47, "Ag", "Silver", "before 5000 BC", "unknown", "107.8682 u", "[Kr] 4d¹⁰5s¹","47","47","61","3",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Silver_crystal.jpg/220px-Silver_crystal.jpg"),

    ElementDetailConstructor(48, "Cd", "Cadmium", "1817", "Friedrich Stromeyer", "112.411u", "[Kr] 4d¹⁰5s²","48","48","64","2",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Cadmium-crystal_bar.jpg/220px-Cadmium-crystal_bar.jpg"),

    ElementDetailConstructor(49, "In", "Indium", "1863", "Ferdinand Reich", "114.818 u", "[Kr] 4d105s25p1","49","49","66","3",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Indium.jpg/220px-Indium.jpg"),

    ElementDetailConstructor(50, "Sn", "Tin", "unknown", "unknown", "118.71 u", "[Kr] 4d¹⁰5s²5p²","50","50","69","4",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Sn-Alpha-Beta.jpg/220px-Sn-Alpha-Beta.jpg"),

    ElementDetailConstructor(51, "Sb", "Antimony", "unknown", "unknown", "121.76u", " [Kr] 4d¹⁰5s²5p3","51","51","71","5",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Antimony-4.jpg/220px-Antimony-4.jpg"),

    ElementDetailConstructor(52, "Te", "Tellurium", "1783", " Martin Heinrich", "127.6u", "	[Kr]5s24d105p4","52","52","76","6",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Tellurium2.jpg/220px-Tellurium2.jpg"),

    ElementDetailConstructor(53, "I", "Iodine", "1811", "Bernard Courtois", "126.90447 u", "[Kr] 4d105s25p5","53","53","74","7",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Sample_of_iodine.jpg/220px-Sample_of_iodine.jpg"),

    ElementDetailConstructor(54, "Xe", "Xenon", "1898", " Morris Travers", "131.293 u","[Kr] 4d¹⁰5s²5p⁶","54","54","77","6",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Xenon_discharge_tube.jpg/220px-Xenon_discharge_tube.jpg"),

    ElementDetailConstructor(55, "Cs" , "Cesium", "1860", "Robert Bunsen", "132.90545 u", "[Xe] 6s1","55","55","78","1",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Cesium.jpg/220px-Cesium.jpg"),

    ElementDetailConstructor(56, "Ba" , "Barium", "1808", "Sir Humphry Davy", "137.327 u", "[Xe] 6s2","56","56","81","2",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Barium_unter_Argon_Schutzgas_Atmosph%C3%A4re.jpg/220px-Barium_unter_Argon_Schutzgas_Atmosph%C3%A4re.jpg"),

    ElementDetailConstructor(57, "La" , "Lanthanum", "1839", "Carl G. Mosander", "138.90 u", "[Xe] 5d¹6s²","57","57","82","3",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Lanthanum-2.jpg/220px-Lanthanum-2.jpg"),

    ElementDetailConstructor(58, "Ba" , "Cerium", "1803", "Jöns Berzelius ", "140.116 u", " [Xe] 4f¹5d¹6s²","58","58","","3",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Cerium2.jpg/220px-Cerium2.jpg"),

    ElementDetailConstructor(59, "Pr" , "Praseodymium", "1885", "Baron Carl", "140.908 u", " [Xe] 4f3 6s2","59","59","81","4",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Barium_unter_Argon_Schutzgas_Atmosph%C3%A4re.jpg/220px-Barium_unter_Argon_Schutzgas_Atmosph%C3%A4re.jpg"),

    ElementDetailConstructor(60, "Nd", "Neodymium", "1885", "Karl Auer", "144.242 u","[Xe] 4f⁴6s²","60","60","84","3",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Neodymium2.jpg/220px-Neodymium2.jpg"),







    ElementDetailConstructor(61, "Pm", "Promethium","", "", "", "[Xe]4f5 6s2","61","61","84","3",
        "http://www.msrblog.com/wp-content1/uploads/2017/10/Promethium0.jpg"),

    ElementDetailConstructor(62, "Sm", "Samarium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Samarium-2.jpg/220px-Samarium-2.jpg"),

    ElementDetailConstructor(63, "Eu"," Europium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Europium.jpg/220px-Europium.jpg"),

    ElementDetailConstructor(64, "Gd", "Gadolinium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Gadolinium-4.jpg/220px-Gadolinium-4.jpg"),

    ElementDetailConstructor(65, "Tb", "Terbium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Terbium-2.jpg/220px-Terbium-2.jpg"),

    ElementDetailConstructor(66, "Dy", "Dysprosium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Dy_chips.jpg/220px-Dy_chips.jpg"),

    ElementDetailConstructor(67, "Ho", "Holmium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Holmium2.jpg/220px-Holmium2.jpg"),

    ElementDetailConstructor(68, "Er", "Erbium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Erbium-crop.jpg/170px-Erbium-crop.jpg"),

    ElementDetailConstructor(69, "Tm","Thulium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Thulium_sublimed_dendritic_and_1cm3_cube.jpg/220px-Thulium_sublimed_dendritic_and_1cm3_cube.jpg"),

    ElementDetailConstructor(70, "Yb", "Ytterbium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Ytterbium-3.jpg/220px-Ytterbium-3.jpg"),

    ElementDetailConstructor(71, "Lu","Lutetium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Lutetium_sublimed_dendritic_and_1cm3_cube.jpg/220px-Lutetium_sublimed_dendritic_and_1cm3_cube.jpg"),







    ElementDetailConstructor(72, "Hf", "Hafnium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Hafnium_bits.jpg/220px-Hafnium_bits.jpg"),

    ElementDetailConstructor(73, "Ta", "Tantalum", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Tantalum_single_crystal_and_1cm3_cube.jpg/220px-Tantalum_single_crystal_and_1cm3_cube.jpg"),

    ElementDetailConstructor(74, "W", "Tungsten", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Wolfram_evaporated_crystals_and_1cm3_cube.jpg/220px-Wolfram_evaporated_crystals_and_1cm3_cube.jpg"),

    ElementDetailConstructor(75, "Re", "Rhenium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Rhenium_single_crystal_bar_and_1cm3_cube.jpg/220px-Rhenium_single_crystal_bar_and_1cm3_cube.jpg"),

    ElementDetailConstructor(76, "Os", "Osmium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Osmium_crystals.jpg/220px-Osmium_crystals.jpg"),

    ElementDetailConstructor(77, "Ir", "Iridium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Iridium-2.jpg/220px-Iridium-2.jpg"),

    ElementDetailConstructor(78, "Pt", "Platinum", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Platinum_crystals.jpg/220px-Platinum_crystals.jpg"),

    ElementDetailConstructor(79, "Au", "Gold", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Gold_nugget_%28Australia%29_4_%2816848647509%29.jpg/220px-Gold_nugget_%28Australia%29_4_%2816848647509%29.jpg"),

    ElementDetailConstructor(80, "Hg", "Mercury", "", "", "", "","","","","",
        "https://5.imimg.com/data5/AP/JC/MY-47646714/mercury-element-500x500.png"),

    ElementDetailConstructor(81, "Tl", "Thallium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Thallium_pieces_in_ampoule.jpg/220px-Thallium_pieces_in_ampoule.jpg"),

    ElementDetailConstructor(82, "Pb", "Lead", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Lead_electrolytic_and_1cm3_cube.jpg/220px-Lead_electrolytic_and_1cm3_cube.jpg"),

    ElementDetailConstructor(83, "Bi", "Bismuth", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Bismuth_crystals_and_1cm3_cube.jpg/220px-Bismuth_crystals_and_1cm3_cube.jpg"),

    ElementDetailConstructor(84, "Po", "Polonium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/en/thumb/6/66/Polonium.jpg/220px-Polonium.jpg"),

    ElementDetailConstructor(85, "At", "Astatine", "", "", "", "","","","","",
        "https://www.chemistrylearner.com/wp-content/uploads/2018/03/Astatine-300x225.jpg"),

    ElementDetailConstructor(86, "Rn", "Radon", "", "", "", "","","","","",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwjR6_YmGVlM4n5N_eaIkGBtEixfqPiTr56A&usqp=CAU"),

    ElementDetailConstructor(87, "Fr", "Francium", "", "", "", "","","","","",
        "https://www.chemistrylearner.com/wp-content/uploads/2018/02/Francium-300x200.jpg"),

    ElementDetailConstructor(88, "Ra", "Radium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Radium226.jpg/220px-Radium226.jpg"),

    ElementDetailConstructor(89, "Ac", "Actinium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Actinium_sample_%2831481701837%29.png/220px-Actinium_sample_%2831481701837%29.png"),






    ElementDetailConstructor(90, "Th", "Thorium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/Thorium_sample_0.1g.jpg/220px-Thorium_sample_0.1g.jpg"),

    ElementDetailConstructor(91, "Pa", "Protactinium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Protactinium.jpg/220px-Protactinium.jpg"),

    ElementDetailConstructor(92, "U", "", "Uranium", "", "", "", "","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/HEUraniumC.jpg/220px-HEUraniumC.jpg"),

    ElementDetailConstructor(93, "Np", "Neptunium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Np_sphere.jpg/220px-Np_sphere.jpg"),

    ElementDetailConstructor(94, "Pu", "Plutonium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Plutonium3.jpg/220px-Plutonium3.jpg"),

    ElementDetailConstructor(95, "Am", "Americium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Americium_microscope.jpg/220px-Americium_microscope.jpg"),

    ElementDetailConstructor(96, "Cm", "Curium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/en/thumb/6/69/Curium.jpg/220px-Curium.jpg"),

    ElementDetailConstructor(97, "Bk", "Berkelium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Berkelium_metal.jpg/220px-Berkelium_metal.jpg"),

    ElementDetailConstructor(98, "Cf", "Californium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/9/93/Californium.jpg"),

    ElementDetailConstructor(99, "Es", "Einsteinium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Einsteinium.jpg/130px-Einsteinium.jpg"),

    ElementDetailConstructor(100, "Fm", "Fermium", "", "", "", "","","","","",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Ivy_Mike_-_mushroom_cloud.jpg/220px-Ivy_Mike_-_mushroom_cloud.jpg"),

    ElementDetailConstructor(101, "Md", "Mendelevium", "", "", "", "","","","","",
        "https://www.thoughtco.com/thmb/BK6ZvgOWVUdu9CwfI0xwg7-JpmE=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/mendelevium-chemical-element-186451093-5893b2573df78caebcf6df9e.jpg"),

    ElementDetailConstructor(102, "No	", "Nobelium", "", "", "", "","","","","",
        ""),

    ElementDetailConstructor(103, "Lr", "Lawrencium", "", "", "", "","","","","",
        ""),





    ElementDetailConstructor(104, "Rf", "Ratherfordium", "", "", "", "","","","","",
        ""),

    ElementDetailConstructor(105, "Db", "Dubnium", "", "", "", "","","","","",
        ""),

    ElementDetailConstructor(106, "Sg", "Dubnium", "", "", "", "","","","","",
        ""),

    ElementDetailConstructor(107, "Bh", "Bohium", "", "", "", "","","","","",
        ""),

    ElementDetailConstructor(108, "Mt", "Meitnerium", "", "", "", "","","","","",
        ""),

    ElementDetailConstructor(109, "Uun", "Ununnillium", "", "", "", "","","","","",
        ""),

    ElementDetailConstructor(110, "Uun", "Unununbium", "", "", "", "","","","","",
        ""),

    ElementDetailConstructor(111, "Rf", "Ununbium", "", "", "", "","","","","",
        ""),

    ElementDetailConstructor(112, "Db", "Dubnium", "", "", "", "","","","","",
        ""),




    ElementDetailConstructor(113, "", "","", "", "", "", "","","","","",),

    ElementDetailConstructor(114, "Uuq", "Ununquadium", "", "", "", "","","","","",
        ""),

    ElementDetailConstructor(115, "", "", "", "", "", "","","","","",
        ""),

    ElementDetailConstructor(116, "Uuh", "Ununhexium", "", "", "", "","","","","",
        ""),

    ElementDetailConstructor(117, "", "", "", "", "", "","","","","",
        ""),

    ElementDetailConstructor(118, "", "", "", "", "", "","","","","",
        ""),

  ];
}