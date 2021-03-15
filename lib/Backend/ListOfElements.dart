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

  String  getGroupNumberOfAtom(int elementNumber) {return elementList[elementNumber+1].groupNumberOfAtom;}
    // return elementList[elementNumber].imageLink;}


  String  getPeriodNumberOfAtom(int elementNumber) {return elementList[elementNumber+1].periodNumberOfAtom;}
    // return elementList[elementNumber].imageLink;}


  String  getElectronAffinity(int elementNumber) {return elementList[elementNumber+1].electronAffinity;}
    // return elementList[elementNumber].imageLink;}

  String  getElementImageLink(int elementNumber) {return elementList[elementNumber+1].imageLink;}
    // return elementList[elementNumber].imageLink;


  List elementList = [

    ElementDetailConstructor(0, "?", "Welcome","Year of Discovery","Discovered by","elementAtomicMass","electronConfiguration","valency","Group number","perid num",
       "" ,"","","Electron affinity","VanderwallRadius",
        "https://images.unsplash.com/photo-1603126857599-f6e157fa2fe6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Njh8fGh5ZHJvZ2VuJTIwZnVlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),

    ElementDetailConstructor(1, "H", "Hydrogen","1766"," Henry Cavendish","4.002602 u","1s1","1","1","0","1","IA","1","72.8 kJ/mol","110 pm",
        "https://images.unsplash.com/photo-1530908295418-a12e326966ba?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),

    ElementDetailConstructor(2, "He", "Helium","1868"," Pierre Janssen"," 4.002602 u","1s²","2","2","2","0","VIIA","1","0 kJ/mol","140 pm",
        "https://science4fun.info/wp-content/uploads/2019/02/glowing-helium-gas.jpg"),

    ElementDetailConstructor(3, "Li", "Lithium","1817","Johan August Arfvedson","6.941 u","[He] 2s1","3","3","4","1","IA","2","59.6 kJ/mol","182 pm",
        "https://newscenter.lbl.gov/wp-content/uploads/sites/2/2019/05/iStock-898893998.jpg"),

    ElementDetailConstructor(4, "Be", "Beryllium","1798","Louis Nicolas Vauquelin","9.012182 u","[He] 2s²","4","4","5","2","IIA","2","0 kJ/mol","153 pm",
        "https://www.chemicalbook.com/NewsImg/2020-02-06/20202617414959100.jpg"),

    ElementDetailConstructor(5, "B", "Boron","1808"," Joseph Louis Gay-Lussac","10.811 u","[He] 2s²2p1","5","5","6","3","IIIA","2","26.7 kJ/mol","192 pm",
        "https://upload.wikimedia.org/wikipedia/commons/1/19/Boron_R105.jpg"),

    ElementDetailConstructor(6, "C", "Carbon","1789","Antoine Lavoisier","12.011 u","[He] 2s² 2p2","6","6","6","4","IVA","2","153.9 kJ/mol","170 pm",
        "https://www.resorbent.eu/images/produkty/nauhlicovadla/grafit.jpg"),

    ElementDetailConstructor(7, "N", "Nitrogen","1772","Daniel Rutherford","14.0067 u"," [He]2s²2p3","7","7","7","3","VA","2","7 kJ/mol","155 pm",
        "https://4.imimg.com/data4/DL/IG/MY-3137311/liquid-nitrogen-gas-500x500.jpg"),

    ElementDetailConstructor(8, "O", "Oxygen","1774","Joseph Priestley","15.999 u","[He] 2s²2p⁴","8","8","8","2","VIA","2","141 kJ/mol","152 pm",
        "https://images-of-elements.com/oxygen-2.jpg"),

    ElementDetailConstructor(9, "F", "Fluorine","1886","Henri Moissan"," 18.998403 u","[He] 2s²2p5","9","9","10", "1","VIIA","2","328 kJ/mol","147 pm",
        "https://upload.wikimedia.org/wikipedia/commons/2/2d/Nitrogen-glow.jpg"),

    ElementDetailConstructor(10, "Ne", "Neon","1898","Sir William Ramsay","20.1797 u","[He] 2s²2p⁶","10","10","10","0","VIIIA","2","0 kJ/mol","154 pm",
        "https://upload.wikimedia.org/wikipedia/commons/f/f8/Neon-glow.jpg"),

    ElementDetailConstructor(11, "Na", "Sodium","1807","Sir Humphry Davy","22.989769 u","[Ne] 3s¹","11","11","11", "1","IA","3","52.8 kJ/mol","227 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Na_%28Sodium%29.jpg/220px-Na_%28Sodium%29.jpg"),

    ElementDetailConstructor(12, "Mg", "Magnesium","1755","oseph Black","24.305 u","[Ne] 3s2","12","12","12","2","IIA","3","0 kJ/mol","173 pm",
        "https://chemicool.com/elements/images/300-magnesium-metal.jpg"),

    ElementDetailConstructor(13, "Al", "Aluminum","1825","Hans Christian Ørsted","26.981539 u"," [Ne] 3s²3p¹","13","13","13","3","IIIA","3","42.5 kJ/mol","184 pm",
        "https://upload.wikimedia.org/wikipedia/commons/5/5d/Aluminium-4.jpg"),

    ElementDetailConstructor(14, "Si", "Silicon","1824","Swedish chemist Jöns","28.0855 u","[Ne] 3s²3p²","14","14","14","4","IVA","3","133.6 kJ/mol","210 pm",
        "https://cdn.mos.cms.futurecdn.net/4FvnXe9VBTHj6nJag6tNKL-1200-80.jpg"),

    ElementDetailConstructor(15, "P", "Phosphorus","1669","Hennig Brandt","30.973762 u","[Ne] 3s²3p³","15","15","15", "3","VA","3","71 kJ/mol","180 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/White_phosphorus_glowing_e17.png/200px-White_phosphorus_glowing_e17.png"),

    ElementDetailConstructor(16, "S","Sulfur","1809","Joseph Gay-Lussac","32.06 u","[Ne] 3s2 3p4","16","16","16","2","VIA","3","200 kJ/mol","180 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Sulfur-sample.jpg/220px-Sulfur-sample.jpg"),

    ElementDetailConstructor(17, "Cl", "Chlorine","1774","Carl Wilhelm Scheele","35.453 u","[Ne] 3s²3p⁵","17","17","17","1","VIIA","3","349 kJ/mol","175 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Chlorine_ampoule.jpg/220px-Chlorine_ampoule.jpg"),

    ElementDetailConstructor(18, "Ar", "Argon","1894","39.948 u","39.948 u","[Ne] 3s²3p⁶","18","18","18", "0","VIIIA","3","0 kJ/mol","188 pm",
        "https://www.chemicool.com/elements/images/300-argon-discharge.jpg"),

    ElementDetailConstructor(19, "K","Potassium","1807","Sir Humphry Davy"," 39.0983 u", "[Ar] 4s1","19","19","19","1","VIA","4","48.4 kJ/mol ","275 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Potassium-2.jpg/220px-Potassium-2.jpg"),

    ElementDetailConstructor(20, "Ca", "Calcium","1808","Humphry Davy","40.078 u","[Ar] 4s²","20","20","20", "2","IIA","4","2.37 kJ/mol ","231 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Calcium_unter_Argon_Schutzgasatmosph%C3%A4re.jpg/220px-Calcium_unter_Argon_Schutzgasatmosph%C3%A4re.jpg"),





    ElementDetailConstructor(21, "Sc", "Scandium","1879","Lars Fredrik Nilson,"," 44.955912 u","[Ar] 3d¹4s²","21","21","21","3","IIIA","4","18.1 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Scandium_sublimed_dendritic_and_1cm3_cube.jpg/220px-Scandium_sublimed_dendritic_and_1cm3_cube.jpg"),

    ElementDetailConstructor(22, "Ti", "Titanium","1791", "William Gregor", "47.867 u", "[Ar] 3d24s2","22","22","23","4","IVB","4","7.6 kJ/mol","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Titan-crystal_bar.JPG/220px-Titan-crystal_bar.JPG"),

    ElementDetailConstructor(23, "V", "Vanadium","1801", "Andrés Manuel", "50.9415 u", "[Ar] 3d34s2","23","23","23","4","VB","4","50.6 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Vanadium_etched.jpg/220px-Vanadium_etched.jpg"),

    ElementDetailConstructor(24, "Cr", "Chromium","1797"," Louis Nicolas","51.9961 u","[Ar] 3d⁵4s¹","24","24","24", "2","VIB","4","64.3 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Chromium_crystals_and_1cm3_cube.jpg/220px-Chromium_crystals_and_1cm3_cube.jpg"),

    ElementDetailConstructor(25, "Mn", "Manganese", "1774", " Johan Gottlieb ", "54.938044 u", "[Ar] 3d54s2","25","25","25", "2","VIIB","4","	0 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Mangan_1-crop.jpg/200px-Mangan_1-crop.jpg"),

    ElementDetailConstructor(26, "Fe", "Iron", "5000 BC", "Unknown", "55.845 u", "[Ar] 3d64s2","26","26","26", "3","VIIIB","4","15.7 kJ/mol","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Iron_electrolytic_and_1cm3_cube.jpg/220px-Iron_electrolytic_and_1cm3_cube.jpg"),

    ElementDetailConstructor(27, "Co", "Cobalt ", "1735", " Georg Brandt", "58.933195 u", "[Ar] 3d74s2","27","27","27", "2","VIIIB","4","63.7 kJ/mol","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Cobalt%28II%29-chloride-hexahydrate-sample.jpg/220px-Cobalt%28II%29-chloride-hexahydrate-sample.jpg"),

    ElementDetailConstructor(28, "Ni", "Nickel", "1751", " Axel Fredrik", "58.6934 u", " [Ar] 3d⁸4s²","28","28","28", "2","VIIIB","4","112 kJ/mol","163 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Nickel_chunk.jpg/190px-Nickel_chunk.jpg"),

    ElementDetailConstructor(29, "Cu", "Copper", "9000 BC", "Unknown", "63.546 u", "[Ar] 3d¹⁰4s¹","29","29","29","1","IB","4","118.4 kJ/mol","140 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/NatCopper.jpg/220px-NatCopper.jpg"),

    ElementDetailConstructor(30, "Zn", "Zinc", "1746", "Andreas Marggraf ", "65.38 u", "[Ar] 3d¹⁰4s²","30","30","30", "2","IIB","4","0 kJ/mol","139 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Zinc_fragment_sublimed_and_1cm3_cube.jpg/220px-Zinc_fragment_sublimed_and_1cm3_cube.jpg"),

    ElementDetailConstructor(31, "Ga", "Gallium", "1875", "Lecoq de Boisbaudran", "69.723 u", " [Ar] 3d104s24p1","31","31","39","+3","IIIA","4","28.9 kJ/mol","187 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Gallium_crystals.jpg/220px-Gallium_crystals.jpg"),

    ElementDetailConstructor(32, "Ge", "Germanium", "1886", " Clemens Winkler", "72.64 u", "[Ar] 3d¹⁰4s²4p²","32","32","41","4","IVA","4","119 kJ/mol","211 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Polycrystalline-germanium.jpg/220px-Polycrystalline-germanium.jpg"),

    ElementDetailConstructor(33, "As", "Arsenic", "1250", "Albertus Magnus", "74.9216 u", "[Ar] 3d¹⁰4s²4p³","33","33","42","3","VA","4","78 kJ/mol","185 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Arsen_1a.jpg/220px-Arsen_1a.jpg"),

    ElementDetailConstructor(34, "Se","Selenium", "1817", "Johan Gottlieb Gahn", "78.96 u", "[Ar] 3d104s24p4","34","34","45","2","VIA","4","195 kJ/mol","190 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/SeBlackRed.jpg/220px-SeBlackRed.jpg"),

    ElementDetailConstructor(35, "Br", "Bromine", "1826", " Antoine Jérôme", "79.904 u", "[Ar] 4s²3d¹⁰4p⁵","35","35","45","1","VIIA","4","324.6 kJ/mol","185 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Bromine_vial_in_acrylic_cube.jpg/220px-Bromine_vial_in_acrylic_cube.jpg"),

    ElementDetailConstructor(36, "Kr", "Krypton", "1898", " Morris Travers", "83.798 u", "[Ar] 3d¹⁰4s²4p⁶","36","36","48","0","VIIIA","4","0 kJ/mol","202 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/KrTube.jpg/220px-KrTube.jpg"),



    ElementDetailConstructor(37, "Rb", "Rubidium", "1861", " Robert Bunsen", " 85.4678 u", "[Kr] 5s¹","37","37","48","1","IA","5","46.9 kJ/mol","343 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Rb5.JPG/220px-Rb5.JPG"),

    ElementDetailConstructor(38, "Sr", "Strontium", "1790", "Adair Crawford", "87.62 u", "[Kr] 5s2","38","38","50","2","IIA","5","5.03 kJ/mol","268 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Strontium_destilled_crystals.jpg/220px-Strontium_destilled_crystals.jpg"),

    ElementDetailConstructor(39, "Y", "Yttrium", "1794", "Johan Gadolin", "88.90585 u", "[Kr] 4d15s2","39","39","50","+3","IIIB","5","29.6 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Yttrium_sublimed_dendritic_and_1cm3_cube.jpg/220px-Yttrium_sublimed_dendritic_and_1cm3_cube.jpg"),

    ElementDetailConstructor(40, "Zr", "Zirconium", "1789", " Martin Heinrich", "91.224 u", "[Kr] 4d²5s²","40","40","51","4","IVB","5","41.1 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Zirconium_crystal_bar_and_1cm3_cube.jpg/220px-Zirconium_crystal_bar_and_1cm3_cube.jpg"),






    ElementDetailConstructor(41, "Nb","Niobium", "1801", " Charles Hatchett", "92.90638 u", "[Kr] 4d⁴5s¹","41","41","52","3","VB","5","86.1 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Niobium_crystals_and_1cm3_cube.jpg/220px-Niobium_crystals_and_1cm3_cube.jpg"),

    ElementDetailConstructor(42, "Mo", "Molybdenum", "1778", " Carl Wilhelm ", "95.95 u", "[Kr] 4d₅5s₁","42","42","54","-","VIB","5","71.9 kJ/mol","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Molybdenum_crystaline_fragment_and_1cm3_cube.jpg/220px-Molybdenum_crystaline_fragment_and_1cm3_cube.jpg"),

    ElementDetailConstructor(43, "Tc", "Technetium", "1937", " Carlo Perrier", "98 u", "[Kr] 4d55s2","43","43","55","1","VIIB","5","53 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/en/thumb/8/89/Technetium.jpg/220px-Technetium.jpg"),


    ElementDetailConstructor(44, "Ru", "Ruthenium", "1844", " Karl Ernst Claus", "101.07 u", "[Kr] 4d75s1","44","44","57","-","VIIIB","5","101.3 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Ruthenium_a_half_bar.jpg/220px-Ruthenium_a_half_bar.jpg"),

    ElementDetailConstructor(45, "Rh", "Rhodium", "1803", "William H. Wollaston", "102.9055u", "Kr 4d8 5s1","45","45","58","3","VIIIB","5","109.3 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Rhodium_powder_pressed_melted.jpg/220px-Rhodium_powder_pressed_melted.jpg"),

    ElementDetailConstructor(46, "Pd", "Palladium", "1803 ", "William H. Wollaston", "106.42u", "[Kr] 4d¹⁰","46","46","60","2","VIIIB","5","53.7 kJ/mol ","163 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Palladium_%2846_Pd%29.jpg/220px-Palladium_%2846_Pd%29.jpg"),

    ElementDetailConstructor(47, "Ag", "Silver", "before 5000 BC", "unknown", "107.8682 u", "[Kr] 4d¹⁰5s¹","47","47","61","3","IB","5","125.6 kJ/mol ","172 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Silver_crystal.jpg/220px-Silver_crystal.jpg"),

    ElementDetailConstructor(48, "Cd", "Cadmium", "1817", "Friedrich Stromeyer", "112.411u", "[Kr] 4d¹⁰5s²","48","48","64","2","IIB","5","0 kJ/mol ","158 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Cadmium-crystal_bar.jpg/220px-Cadmium-crystal_bar.jpg"),

    ElementDetailConstructor(49, "In", "Indium", "1863", "Ferdinand Reich", "114.818 u", "[Kr] 4d105s25p1","49","49","66","3","IIIA","5","28.9 kJ/mol ","193 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Indium.jpg/220px-Indium.jpg"),

    ElementDetailConstructor(50, "Sn", "Tin", "unknown", "unknown", "118.71 u", "[Kr] 4d¹⁰5s²5p²","50","50","69","4","IVA","5","107.3 kJ/mol ","217 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Sn-Alpha-Beta.jpg/220px-Sn-Alpha-Beta.jpg"),

    ElementDetailConstructor(51, "Sb", "Antimony", "unknown", "unknown", "121.76u", " [Kr] 4d¹⁰5s²5p3","51","51","71","5","VA","5","103.2 kJ/mol","206 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Antimony-4.jpg/220px-Antimony-4.jpg"),

    ElementDetailConstructor(52, "Te", "Tellurium", "1783", " Martin Heinrich", "127.6u", "	[Kr]5s24d105p4","52","52","76","6","VIA","5","190.2 kJ/mol ","206 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Tellurium2.jpg/220px-Tellurium2.jpg"),

    ElementDetailConstructor(53, "I", "Iodine", "1811", "Bernard Courtois", "126.90447 u", "[Kr] 4d105s25p5","53","53","74","7","VIIA","5","295.2 kJ/mol ","198 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Sample_of_iodine.jpg/220px-Sample_of_iodine.jpg"),

    ElementDetailConstructor(54, "Xe", "Xenon", "1898", " Morris Travers", "131.293 u","[Kr] 4d¹⁰5s²5p⁶","54","54","77","6","VIIIA","5","0 kJ/mol ","216 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Xenon_discharge_tube.jpg/220px-Xenon_discharge_tube.jpg"),




    ElementDetailConstructor(55, "Cs" , "Cesium", "1860", "Robert Bunsen", "132.90545 u", "[Xe] 6s1","55","55","78","1","IA","6","45.5 kJ/mol ","343 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Cesium.jpg/220px-Cesium.jpg"),

    ElementDetailConstructor(56, "Ba" , "Barium", "1808", "Sir Humphry Davy", "137.327 u", "[Xe] 6s2","56","56","81","2","IIA","6","13.95 kJ/mol ","268 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Barium_unter_Argon_Schutzgas_Atmosph%C3%A4re.jpg/220px-Barium_unter_Argon_Schutzgas_Atmosph%C3%A4re.jpg"),



    ElementDetailConstructor(57, "La" , "Lanthanum", "1839", "Carl G. Mosander", "138.90 u", "[Xe] 5d¹6s²","57","57","82","3","IIIB","6","48 kJ/mol ","268 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Lanthanum-2.jpg/220px-Lanthanum-2.jpg"),

    ElementDetailConstructor(58, "Ba" , "Cerium", "1803", "Jöns Berzelius ", "140.116 u", " [Xe] 4f¹5d¹6s²","58","58","","3","IIIB","6","50 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Cerium2.jpg/220px-Cerium2.jpg"),

    ElementDetailConstructor(59, "Pr" , "Praseodymium", "1885", "Baron Carl", "140.908 u", " [Xe] 4f3 6s2","59","59","81","4","IIIB","6","50 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Barium_unter_Argon_Schutzgas_Atmosph%C3%A4re.jpg/220px-Barium_unter_Argon_Schutzgas_Atmosph%C3%A4re.jpg"),

    ElementDetailConstructor(60, "Nd", "Neodymium", "1885", "Karl Auer", "144.242 u","[Xe] 4f⁴6s²","60","60","84","3","IIIB","6"," 50 kJ/mol","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Neodymium2.jpg/220px-Neodymium2.jpg"),

    ElementDetailConstructor(61, "Pm", "Promethium","1945", "Chien-Shiung Wu", "145 u", "[Xe]4f5 6s2","61","61","84","3","IIIB","6","50 kJ/mol ","N/A",
        "http://www.msrblog.com/wp-content1/uploads/2017/10/Promethium0.jpg"),

    ElementDetailConstructor(62, "Sm", "Samarium", "1879", "Paul Emile Lecoq","150.36 u","[Xe] 4f⁶6s²","62","62","88","3","IIIB","6","50 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Samarium-2.jpg/220px-Samarium-2.jpg"),

    ElementDetailConstructor(63, "Eu"," Europium", "1901", " Eugène-A. Demarçay", "151.96 u", "[Xe] 4f7 6s²","63","63","","3","IIIB","6","50 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Europium.jpg/220px-Europium.jpg"),

    ElementDetailConstructor(64, "Gd", "Gadolinium", "1880", "Jean Charles", "157.25 u","[Xe] 4f7 5d1 6s2","64","64","93","3","IIIB","6","50 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Gadolinium-4.jpg/220px-Gadolinium-4.jpg"),

    ElementDetailConstructor(65, "Tb", "Terbium", "1843", "Carl Gustaf Mosander", "158.92 u", "[Xe] 4f9 6s2","65","65","94","3","IIIB","6","50 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Terbium-2.jpg/220px-Terbium-2.jpg"),

    ElementDetailConstructor(66, "Dy", "Dysprosium", "1886", "Paul-Émile Lecoq", "162.5 u", "[Xe] 4f10 6s2","66","66","97","3","IIIB","6","50 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Dy_chips.jpg/220px-Dy_chips.jpg"),

    ElementDetailConstructor(67, "Ho", "Holmium", "1878", " Per Teodor Cleve", "164.92 u", "[Xe] 4f11 6s2","67","67","98","3","IIIB","6","50 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Holmium2.jpg/220px-Holmium2.jpg"),

    ElementDetailConstructor(68, "Er", "Erbium", "1842", "Carl Gustaf Mosander", "167.259 u","[Xe] 4f12 6s2", "68","68","99","3","IIIB","6","50 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Erbium-crop.jpg/170px-Erbium-crop.jpg"),

    ElementDetailConstructor(69, "Tm","Thulium", "1879", "Per Teodor Cleve", "168.93421 u", "[Xe] 4f13 6s2","69","69","100","3","IIIB","6","50 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Thulium_sublimed_dendritic_and_1cm3_cube.jpg/220px-Thulium_sublimed_dendritic_and_1cm3_cube.jpg"),"N/A",

    ElementDetailConstructor(70, "Yb", "Ytterbium", "1878", "Jean Charles Galissard de", "173.04 u", "[Xe] 4f14 6s2","70","70","103","3","IVB","6","50 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Ytterbium-3.jpg/220px-Ytterbium-3.jpg"),

    ElementDetailConstructor(71, "Lu","Lutetium", "1907", "Carl A. von Welsbach", "174.967 u", "[Xe] 4f14 5d16 s2","71","71","104","3","IVB","6","50 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Lutetium_sublimed_dendritic_and_1cm3_cube.jpg/220px-Lutetium_sublimed_dendritic_and_1cm3_cube.jpg"),



  //
  // ElementDetailConstructor(
  //     this.elementNumber,
  //     this.elementNameSymbol,
  //     this.elementFullName,
  //     this.yearOfDiscovery,
  //     this.elementDiscoveryBy,
  //     this.elementAtomicMass,
  //     this.electronConfiguration,
  //     this.numberOfElectrons,
  //     this.numberOfProtons,
  //     this.numberOfNeutrons,
  //     this.valencyOfAtom,
  //     this.groupNumberOfAtom,
  //     this.periodNumberOfAtom,
  //     this.electronAffinity,
  //     this.imageLink);



    ElementDetailConstructor(72, "Hf", "Hafnium", "1923", "George de Hevesy", "178.49 u", " [Xe] 4f¹⁴5d²6s²","72","72","106","4","VB","6","0 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Hafnium_bits.jpg/220px-Hafnium_bits.jpg"),

    ElementDetailConstructor(73, "Ta", "Tantalum", "1802", "Anders G. Ekeberg", "180.94 u", "[Xe] 4f14 5d3 6s2","73","73","108","5","VIB","6","31 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Tantalum_single_crystal_and_1cm3_cube.jpg/220px-Tantalum_single_crystal_and_1cm3_cube.jpg"),

    ElementDetailConstructor(74, "W", "Tungsten", "1781", "Carl W. Scheele", "183.84 u", "[Xe] 6s²4f¹⁴5d⁴","74","74","110","6","VIIB","6","78.6 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Wolfram_evaporated_crystals_and_1cm3_cube.jpg/220px-Wolfram_evaporated_crystals_and_1cm3_cube.jpg"),

    ElementDetailConstructor(75, "Re", "Rhenium", "1781", "Ida Noddack", " 183.84 u", "[Xe] 4f14 5d5 6s2","75","75","111","6","VIIIB","6","14.5 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Rhenium_single_crystal_bar_and_1cm3_cube.jpg/220px-Rhenium_single_crystal_bar_and_1cm3_cube.jpg"),

    ElementDetailConstructor(76, "Os", "Osmium", "1803", "Smithson Tennant", "190.23 u", "[Xe] 4f14 5d6 6s2","76","76","114","6","VIIIB","6","106.1 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Osmium_crystals.jpg/220px-Osmium_crystals.jpg"),

    ElementDetailConstructor(77, "Ir", "Iridium", "1803", "Smithson Tennant", "192.217 u", "[Xe] 4f145d76s2","77","77","115","6","VIIIB","6","151 kJ/mol ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Iridium-2.jpg/220px-Iridium-2.jpg"),

    ElementDetailConstructor(78, "Pt", "Platinum", "1735", "Antonio de Ulloa", "195.08 u", "[Xe] 4f14 5d9 6s1","78","78","117","6","VIIIB","6","205.3 kJ/mol ","175 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Platinum_crystals.jpg/220px-Platinum_crystals.jpg"),

    ElementDetailConstructor(79, "Au", "Gold", "1848", "-", "196.96 u", "[Xe] 4f14 5d10 6s1","79","79","118","5","IB","6","205.3 kJ/mol ","166 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Gold_nugget_%28Australia%29_4_%2816848647509%29.jpg/220px-Gold_nugget_%28Australia%29_4_%2816848647509%29.jpg"),

    ElementDetailConstructor(80, "Hg", "Mercury", "1500 BCE", "-", "200.59 u", "[Xe] 4f14 5d10 6s2","80","80","120","2","IIB","6","0 kJ/mol","155 pm",
        "https://5.imimg.com/data5/AP/JC/MY-47646714/mercury-element-500x500.png"),

    ElementDetailConstructor(81, "Tl", "Thallium", "1861", "-", "204.38 u", "[Xe] 4f14 5d10 6s2 6p1","81","81","123","3","IIIA","6","19.2 kJ/mol ","196 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Thallium_pieces_in_ampoule.jpg/220px-Thallium_pieces_in_ampoule.jpg"),

    ElementDetailConstructor(82, "Pb", "Lead", "7000 BCE", "-", "207.2 u", "[Xe] 4f14 5d10 6s2 6p2","82","82","125","4","IVA","6"," 35.1 kJ/mol","202 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Lead_electrolytic_and_1cm3_cube.jpg/220px-Lead_electrolytic_and_1cm3_cube.jpg"),

    ElementDetailConstructor(83, "Bi", "Bismuth", "1753", "Claude F. Geoffroy", "208.9804 u", "[Xe] 4f14 5d10 6s2 6p3","83","83","126","5","VA","6","91.2 kJ/mol ","207 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Bismuth_crystals_and_1cm3_cube.jpg/220px-Bismuth_crystals_and_1cm3_cube.jpg"),

    ElementDetailConstructor(84, "Po", "Polonium", "1898", "Marie Curie", "209 u", "[Xe] 6s2 4f14 5d10 6p4","84","84","125","6","VIA","6","183.3 kJ/mol","197 pm",
        "https://upload.wikimedia.org/wikipedia/en/thumb/6/66/Polonium.jpg/220px-Polonium.jpg"),

    ElementDetailConstructor(85, "At", "Astatine", "1940", "-", "210 u", "[Xe] 4f¹⁴5d¹⁰6s²6p⁵","85","85","125","7","VIIA","6","270.1 kJ/mol ","202 pm",
        "https://www.chemistrylearner.com/wp-content/uploads/2018/03/Astatine-300x225.jpg"),

    ElementDetailConstructor(86, "Rn", "Radon", "1900", "-", "222.01 u", "[Xe] 4f14 5d10 6s2 6p6","86","86","136","6","VIIIA","6","0 kJ/mol ","220 pm",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwjR6_YmGVlM4n5N_eaIkGBtEixfqPiTr56A&usqp=CAU"),




    ElementDetailConstructor(87, "Fr", "Francium", "1939", "Marguerite Perey","223 u", "[Rn] 7s1", "87","87","136","1","IA","7","N/A ","348 pm",
        "https://www.chemistrylearner.com/wp-content/uploads/2018/02/Francium-300x200.jpg"),

    ElementDetailConstructor(88, "Ra", "Radium", "1898", "Marie Curie", "226 u", "[Rn] 7s2","88","88","138","2","IIA","7","N/A ","283 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Radium226.jpg/220px-Radium226.jpg"),

    ElementDetailConstructor(89, "Ac", "Actinium", "1899", "André-Louis Debierne", " 227 u", "[Rn] 6d17s2","89","89","138","3","IIIB","7","N/A ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Actinium_sample_%2831481701837%29.png/220px-Actinium_sample_%2831481701837%29.png"),


    ElementDetailConstructor(90, "Th", "Thorium", "1828", "Jöns J. Berzelius", "232.03 u", "[Rn] 6d2 7s2","90","90","142","4","IIIB","7","N/A ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/Thorium_sample_0.1g.jpg/220px-Thorium_sample_0.1g.jpg"),

    ElementDetailConstructor(91, "Pa", "Protactinium", "1913", "Otto Hahn", "231.03 u", "[Rn] 5f2 6d1 7s2","91","91","140","5","IIIB","7","N/A ","N/A",
        "https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Protactinium.jpg/220px-Protactinium.jpg"),

    ElementDetailConstructor(92, "U", "Uranium", "1789", "Martin Heinrich", "238.02 u", " [Rn] 5f3 6d1 7s2", "92","92","146","6","IIIB","7"," N/A","186 pm",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/HEUraniumC.jpg/220px-HEUraniumC.jpg"),

    ElementDetailConstructor(93, "Np", "Neptunium", "1940", "Edwin McMillan", " 237.04 u", "[Rn] 5f4 6d1 7s2","93","93","144","6","IIIB","7","N/A ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Np_sphere.jpg/220px-Np_sphere.jpg"),

    ElementDetailConstructor(94, "Pu", "Plutonium", "1940", "Joseph W. Kennedy", "244 u", " [Rn] 5f6 7s2","94","94","150","6","IIIB","7","N/A ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Plutonium3.jpg/220px-Plutonium3.jpg"),

    ElementDetailConstructor(95, "Am", "Americium", "1944", "GLenn Therodore", "243.06 u", "[Rn] 5f6 7s2","95","95","148","4","IIIB","7","N/A ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Americium_microscope.jpg/220px-Americium_microscope.jpg"),

    ElementDetailConstructor(96, "Cm", "Curium", "1944", "Glenn T. Seaborg", "247 u", "[Rn] 5f7 6d1 7s2","96","96","151","4","IIIB","7","N/A ","N/A",
        "https://upload.wikimedia.org/wikipedia/en/thumb/6/69/Curium.jpg/220px-Curium.jpg"),

    ElementDetailConstructor(97, "Bk", "Berkelium", "1949", "Glenn T. Seaborg,", "247 u", "[Rn] 5f9 7s2","97","97","150","4","IIIB","7","N/A ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Berkelium_metal.jpg/220px-Berkelium_metal.jpg"),

    ElementDetailConstructor(98, "Cf", "Californium", "1950", "Albert Ghiorso", "251 u", "[Rn] 5f10 7s2","98","98","153","4","IIIB","7","N/A ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/9/93/Californium.jpg"),

    ElementDetailConstructor(99, "Es", "Einsteinium", "1952", "Albert Ghiorso", "252 u", "[Rn] 5f11 7s2","100","100","153","4","IIIB","7","N/A ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Einsteinium.jpg/130px-Einsteinium.jpg"),

    ElementDetailConstructor(100, "Fm", "Fermium", "1953", "Glenn T. Seaborg", "257 u", "[Rn] 5f12 7s2","101","101","157","4","IIIB","7","N/A ","N/A",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Ivy_Mike_-_mushroom_cloud.jpg/220px-Ivy_Mike_-_mushroom_cloud.jpg"),

    ElementDetailConstructor(101, "Md", "Mendelevium", "1955", " Glenn T. Seaborg", "258 u", "[Rn] 5f13 7s2","101","101","157","3","IIIB","7","N/A ","N/A",
        "https://www.thoughtco.com/thmb/BK6ZvgOWVUdu9CwfI0xwg7-JpmE=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/mendelevium-chemical-element-186451093-5893b2573df78caebcf6df9e.jpg"),

    ElementDetailConstructor(102, "No	", "Nobelium", "1958", " Glenn T. Seaborg", "259 u", " [Rn] 5f14 7s2","102","102","157","4","IIIB","7","N/AN/A ","N/A",
        ""),

    ElementDetailConstructor(103, "Lr", "Lawrencium", "1961", "Ernest Lawrence", "262 u", "[Rn] 5f147s27p1","103","103","163","3","IIIB","7","N/A ","N/A",
        ""),

      // exe 5.1
    // 6 7 8 13 14 15  16  17 27


  // ElementDetailConstructor(
  //     this.elementNumber,
  //     this.elementNameSymbol,
  //     this.elementFullName,
  //     this.yearOfDiscovery,
  //     this.elementDiscoveryBy,
  //     this.elementAtomicMass,
  //     this.electronConfiguration,
  //     this.numberOfElectrons,
  //     this.numberOfProtons,
  //     this.numberOfNeutrons,
  //     this.valencyOfAtom,
  //     this.groupNumberOfAtom,
  //     this.periodNumberOfAtom,
  //     this.electronAffinity,
  //     this.imageLink);



    ElementDetailConstructor(104, "Rf", "Ratherfordium", "1964", "Albert Ghiorso", "261.1 u", "[Rn] 5f14 6d27 s2","104","104","157","4","IVB","7", "N/A ","N/A",
        ""),

    ElementDetailConstructor(105, "Db", "Dubnium", "1967", "Albert Ghiorso","262 u", "[Rn] 5f14 6d3 7s2", "105","105","157","5","VB","7","N/A",
        "N/A ",
        ""),

    ElementDetailConstructor(106, "Sg", "Seaborgium", "1974", "Albert Ghiorso", "-", "[Rn] 5f14 6d4 7s2[1]","106","106","163","6","VIB","7","N/A ","N/A",
        ""),

    ElementDetailConstructor(107, "Bh", "Bohrium", "1981", "	Gesellschaft für", "264 u", " u","107","107","160","7","VIIB","7","N/A ","N/A",
        ""),

    ElementDetailConstructor(108, "Mt", "Hassium", "1982", "Peter Armbruster", "277 u", "-","108","108","161","N/A","VIIIB","7","N/A ","N/A",
        ""),

    ElementDetailConstructor(109, "Uun", "Meitnerium", "1982", "Gesellschaft für", "278 u", "[Rn] 5f14 6d7 7s2","109","109","169","N/A","VIIIB","7","N/A ","N/A",
        ""),

    ElementDetailConstructor(110, "Uun", "Darmstadtium", "1994", " Sigurd Hofmann", "281 u", "[Rn] 5f14 6d8 7s2 ","110","110","171","N/A","VIIIB","7","N/A ","N/A",
        ""),

    ElementDetailConstructor(111, "Rf", "Roentgenium", "1994", "Gesellschaft für", "[Rn] 5f14 6d9 7s2", "281 u","111","111","171","N/A","IB","7","N/A ","N/A",
        ""),

    ElementDetailConstructor(112, "Cn", "Copernicium", "1996", "	Gesellschaft für", "285 u", "[Rn] 5f14 6d10 7s2","112","112","173","N/A","IIB","7"," N/A","N/A",
        ""),


  // ElementDetailConstructor(
  //     this.elementNumber,
  //     this.elementNameSymbol,
  //     this.elementFullName,
  //     this.yearOfDiscovery,
  //     this.elementDiscoveryBy,
  //     this.elementAtomicMass,
  //     this.electronConfiguration,
  //     this.numberOfElectrons,
  //     this.numberOfProtons,
  //     this.numberOfNeutrons,
  //     this.valencyOfAtom,
  //     this.groupNumberOfAtom,
  //     this.periodNumberOfAtom,
  //     this.electronAffinity,
  //     this.imageLink);


    ElementDetailConstructor(113, "Nh", "Nihonium","2003", "-", "286 u", "[Rn] 5f14 6d10 7s2 7p1", "113","113","173","N/A","IIIA","7","N/A","N/A",
      "",),

    ElementDetailConstructor(114, "Fl", "Flerovium", "1998", "Yuri Oganessian", "289 u", "[Rn]7s2 5f14 6d10 7p2","114","114","175","N/A","IVA","7","N/A ","N/A",
        ""),

    ElementDetailConstructor(115, "Mc", "Moscovium", "2003", "Yuri Oganessian", "289 u", "[Rn] 5f14 6d10 7s2 7p3","115","115","174","N/A","VA","7","N/A ","N/A",
        ""),

    ElementDetailConstructor(116, "Lv", "Livermorium", "2000", "Yuri Oganessian", "293 u", "[Rn] 5f14 6d10 7s2 7p4","116","116","177","N/A","VIA","7","N/A ","N/A",
        ""),

    ElementDetailConstructor(117, "Ts", "Tennessine", "2010", " Yuri Oganessian", "293 u", "[Rn] 5f14 6d10 7s2 7p5","117","117","177","N/A","VIIA","7","N/A ","N/A",
        ""),

    ElementDetailConstructor(118, "Og", "Oganesson", "2006", "Yuri Oganesson", "294 u", "[Rn] 5f14 6d10 7s2 7p6","118","118","176","N/A","VIIIA","7","N/A ","N/A",
        ""),

  ];
}