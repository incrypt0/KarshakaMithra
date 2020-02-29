class Scheme {
  final String name;
  final String imgUrl;
  final String id;
  final String description;
  final String link;
  int number=0;

  Scheme({this.name, this.description, this.imgUrl, this.link,this.id,this.number});
}
class SchemeData{
  String userid;
    String name;
    String email;
    String phoneNo;
    String gender;
    String aadharNo;
    String address;
    String pincode;
    String accountNo;
    String ifsc;
    String schemeId;
    String krishibhavan;
    bool applicationStatus=false;
    bool applied=false;
    int number=0;
    SchemeData({
      this.name,
      this.email,
      this.phoneNo,
      this.userid,
      this.gender,
      this.address,
      this.aadharNo,
      this.accountNo,
      this.ifsc,
      this.pincode,
      this.schemeId,
      this.krishibhavan,
      this.applicationStatus,
      this.applied,
      this.number=0,

    });
}

List<Scheme> schemeList = [];
//   Scheme(
//     id: 'scheme1',
//     name: "പ്രധാന മന്ത്രി കിസാൻ മാൻ ധാൻ യോജന ",
//     description: "ചെറുകിട, നാമമാത്ര കർഷകർക്ക് (എസ്‌എം‌എഫ്) സാമൂഹ്യ സുരക്ഷാ വല നൽകുന്നതിന്, വാർദ്ധക്യസഹജമായ ആവശ്യങ്ങൾക്കായി കുറഞ്ഞതോ സമ്പാദ്യമോ ഇല്ലാത്തതിനാൽ ഉപജീവനമാർഗം നഷ്ടപ്പെടുന്ന സാഹചര്യത്തിൽ അവരെ പിന്തുണയ്ക്കുന്നതിനായി സർക്കാർ പുതിയ കേന്ദ്രമേഖല ആരംഭിച്ചു. പദ്ധതി, അതായത് പ്രധാൻ മന്ത്രി കിസാൻ മാൻ-ധൻ യോജന (പി‌എം-കെ‌എം‌വൈ) .ഈ പദ്ധതി പ്രകാരം, യോഗ്യത നേടുന്ന ചെറുകിട, നാമമാത്ര കർഷകർക്ക് കുറഞ്ഞത് 3000 രൂപ രൂപ നിശ്ചിത പെൻഷൻ നൽകുന്നു, ചില ഒഴിവാക്കൽ വകുപ്പുകൾക്ക് വിധേയമായി, 60 വയസ്സ്. പ്രവേശന പ്രായം 18 മുതൽ 40 വയസ്സ് വരെ ഉള്ള ഒരു സന്നദ്ധ, സംഭാവന പെൻഷൻ പദ്ധതിയാണിത്. ലൈഫ് ഇൻഷുറൻസ് കോർപ്പറേഷൻ ഓഫ് ഇന്ത്യ (എൽഐസി) നിയന്ത്രിക്കുന്ന ഒരു പെൻഷൻ ഫണ്ടിലേക്ക് സബ്‌സ്‌ക്രൈബുചെയ്യുന്നതിലൂടെ ഗുണഭോക്താവിന് പദ്ധതിയിൽ അംഗമാകാം. പദ്ധതിയിൽ പ്രവേശിക്കുന്ന പ്രായം അനുസരിച്ച് കേന്ദ്രസർക്കാർ തുല്യ സംഭാവന നൽകിക്കൊണ്ട് ഗുണഭോക്താവ് പെൻഷൻ ഫണ്ടിലേക്ക് പ്രതിമാസം 55 രൂപ മുതൽ 200 രൂപ വരെ സംഭാവന നൽകേണ്ടതുണ്ട്. സ്കീമിൽ നിന്ന് പുറത്തുകടക്കുന്നത് സ്വമേധയാ അല്ലെങ്കിൽ സംഭാവനയുടെ പരാജയത്തിലോ അല്ലെങ്കിൽ മരണത്തിലോ ആകാം. \ N സ്കീമിൽ നിന്ന് പുറത്തുകടക്കുമ്പോൾ, ഗുണഭോക്താവിന് അവന്റെ / അവളുടെ ശേഖരിച്ച വിഹിതം ലഭിക്കും, സർക്കാരുകളുടെ സംഭാവന എൽഐസി ഫണ്ടിൽ നിക്ഷേപിക്കും. വരിക്കാരന്റെ മരണശേഷം, പങ്കാളിയുടെയോ അവകാശിയുടെയോ 50% പെൻഷനെ കുടുംബ പെൻഷനായി സ്വീകരിക്കാൻ അർഹതയുണ്ട്, അവൻ / അവൾ ഇതിനകം സ്കീമിന്റെ ഒരു SMF ഗുണഭോക്താവല്ലെങ്കിൽ. സംഭാവന കാലയളവിൽ വരിക്കാരന്റെ മരണത്തിൽ, 18 വയസും അതിൽ കൂടുതലും പ്രായമുള്ളവരുമായ രാജ്യത്തെ എല്ലാ ചെറുകിട, നാമമാത്ര കർഷകർക്കും കൃത്യമായ സംഭാവന നൽകിക്കൊണ്ട് പങ്കാളിക്ക് പദ്ധതി തുടരാനുള്ള അവസരം ഉണ്ടായിരിക്കും. 40 വർഷത്തിൽ, കൂടാതെ ഒഴിവാക്കൽ മാനദണ്ഡത്തിന്റെ പരിധിയിൽ വരാത്തവർക്കും ഈ സ്കീമിന്റെ ആനുകൂല്യങ്ങൾ നേടാൻ അർഹതയുണ്ട്.",
//     imgUrl: "https://yt3.ggpht.com/a/AGF-l7-iNJsUsed0u91p0_gDt49oi9KKUJS3qW33NA=s900-c-k-c0xffffffff-no-rj-mo",
//     link: "https://vikaspedia.in/agriculture/agri-insurance/pm-kisan-maan-dhan-yojana",
//   ),
  
//    Scheme(
//      id: 'scheme2',
//     name: "പരമ്പരാഗത് കൃഷി വികാസ് യോജന",
//     description: 'രാസവസ്തുക്കൾ, കീടനാശിനികളുടെ അവശിഷ്ടങ്ങൾ, ജൈവ വിസർജ്ജ്യ കുറഞ്ഞ സാങ്കേതികവിദ്യകൾ എന്നിവ സ്വീകരിക്കുന്ന കൃഷിക്കാരന്റെ തിരഞ്ഞെടുപ്പിനെ ആശ്രയിച്ച് സീറോ ബജറ്റ് പ്രകൃതി കൃഷി ഉൾപ്പെടെയുള്ള ജൈവകൃഷിയുടെ ഏതെങ്കിലും മാതൃക ഏറ്റെടുക്കാൻ പരമ്പരഗത് കൃഷി വികാസ് യോജനയ്ക്ക് കീഴിൽ സംസ്ഥാനങ്ങൾക്ക് വഴക്കം നൽകുന്നു. ഇതിനുപുറമെ പരമ്പരഗത് കൃഷി വികാസ് യോജന, ധനസഹായം ഹെക്ടറിന് 50,000 / മൂന്ന് വർഷം അനുവദനീയമാണ്, അതിൽ Rs. 31,000 (61 ശതമാനം) കർഷകന് നേരിട്ട് ഇൻപുട്ട് (ജൈവകീടനാശിനികൾ, ജൈവവളങ്ങൾ, ബൊട്ടാണിക്കൽ സത്തിൽ, മണ്ണിര കമ്പോസ്റ്റ് മുതലായവ) ഉൽപാദനം / സംഭരണം, പാക്കിംഗ്, വിപണനം തുടങ്ങിയവയ്ക്കായി കൃഷിക്കാരന് നൽകുന്നു. ജൈവകൃഷിയിലെ ഏറ്റവും പുതിയ സാങ്കേതികവിദ്യകളെക്കുറിച്ച് പറയുക. രാജ്യത്തെ പൊതു കാർഷിക ഗവേഷണ സംവിധാനത്തിലെ വിദഗ്ധരുടെ സേവനങ്ങൾ പ്രയോജനപ്പെടുത്തുക. ഒരു ഗ്രാമത്തിൽ കുറഞ്ഞത് 1 ക്ലസ്റ്റർ പ്രകടനം സംഘടിപ്പിക്കുക. വടക്ക് കിഴക്കൻ മേഖലയ്ക്കുള്ള മിഷൻ ഓർഗാനിക് വാല്യു ചെയിൻ വികസനം, സഹായം നൽകുന്നു ഫാർമേഴ്‌സ് പ്രൊഡ്യൂസർ ഓർഗനൈസേഷൻ (എഫ്പിഒ) രൂപീകരണം, വിത്തുകൾ അല്ലെങ്കിൽ നടീൽ വസ്തുക്കൾ വിതരണം, കാർഷിക ഇൻപുട്ട് ഉൽപാദനം ഓൺ / ഓഫ്, വിളവെടുപ്പിനു ശേഷമുള്ള അടിസ്ഥാന സ (കര്യങ്ങൾ (ശേഖരണം, തരംതിരിക്കൽ, ഗ്രേഡിംഗ് സ facilities കര്യങ്ങൾ), സംയോജിത പ്രോസസ്സിംഗ് സ്ഥാപിക്കൽ എന്നിവയിൽ നിന്ന് ആരംഭിക്കുന്ന ഒരു മൂല്യ ശൃംഖലയിൽ കർഷകർക്ക്. യൂണിറ്റ്, ശീതീകരിച്ച ഗതാഗതം, പ്രീ-കൂളിംഗ് അല്ലെങ്കിൽ കോൾഡ് സ്റ്റോറുകൾ ചേംബർ, ബ്രാൻഡിംഗ്, ലേബലിംഗ്, പാക്കേജിംഗ് തുടങ്ങിയവ .എല്ലാ ടി കൃഷിക്കാരുടെ താത്പര്യം അനുസരിച്ച് ജില്ലാ, ഗ്രാമതലങ്ങളിൽ സംസ്ഥാന സർക്കാരുകൾ വഴി ഈ പദ്ധതികൾ അല്ലെങ്കിൽ യോജനകൾ നടപ്പിലാക്കുന്നു. 29 സംസ്ഥാനങ്ങളിലും കേന്ദ്രഭരണ പ്രദേശങ്ങളിലും പരമ്പരഗത് കൃഷി വികാസ് യോജന പദ്ധതി നടപ്പിലാക്കുന്നുവെന്നത് എടുത്തുപറയേണ്ടതാണ്, അതേസമയം MOVCDNER പദ്ധതി വടക്കുകിഴക്കൻ സംസ്ഥാനങ്ങളായ അസം, മണിപ്പൂർ, അരുണാചൽ പ്രദേശ്, മേഘാലയ, നാഗാലാൻഡ്, സിക്കിം, മിസോറം, ത്രിപുര എന്നിവിടങ്ങളിൽ നടപ്പാക്കുന്നു. 16.',
//     // description: 'Under Paramparagat Krishi Vikas Yojana, flexibility is given to the states to take on any model of Organic Farming including Zero-Budget Natural Farming depending on cultivator’s choice that is free from chemicals, pesticides residues & adopts biodegradable low cost technologies.In addition to this under Paramparagat Krishi Vikas Yojana,  financial aid of Rs. 50,000 per hectare/ three years is allowed, out of which Rs. 31,000 (61 percent) is given to the farmer directly via DBT for input (biopesticides, biofertilisers, botanical extracts, vermicompost etc) production/ procurement, packing and   marketing etc.Objective of Paramparagat Krishi Vikas YojanaPromote organic farming among rural youth, farmers, consumers and traders.Tell about latest technologies in organic farming.Utilize the services of experts from public agricultural research system in the country.Organize a minimum of 1 cluster demonstration in a village.Under Mission Organic Value Chain Development for North Eastern Region, assistance is given to the farmers in a value chain mode that starts from formation of Farmers Producer Organisations (FPOs), supply of seeds or planting materials, on/off farm input production, post harvest infrastructure (collection, sorting, grading facilities), establishment of integrated processing unit, refrigerated transportation, pre-cooling or cold stores chamber, branding, labelling & packaging, etc .All these schemes or yojanas are executed through the State Governments at district as well as village level depending on the interest of cultivators. It is important to mention that Paramparagat Krishi Vikas Yojana scheme is being implemented in 29 States and Union Territories while the MOVCDNER scheme is executed in North east states of Assam, Manipur, Arunachal Pradesh, Meghalaya, Nagaland, Sikkim, Mizoram and Tripura since 2015-16.',
//     imgUrl: "https://1.bp.blogspot.com/-8mJAWJPd8_k/W3-6NuchCdI/AAAAAAAAT7k/l6w1Pvkgh4MDPnO_R0WMrIuMjAqxZU0UgCK4BGAYYCw/s1600/Paramparagat%2BKrishi%2BVikas%2BYojana.png",
//     link: "https://darpg.gov.in/sites/default/files/Paramparagat%20Krishi%20Vikas%20Yojana.pdf",
//   ),
//    Scheme(
//      id: 'scheme3',
//     name: "Agriculture Contingency Plan",
//     description: "വരൾച്ചയ്ക്കും വെള്ളപ്പൊക്കത്തിനും കാരണമാകുന്ന മൺസൂൺ സാഹചര്യങ്ങളെ നേരിടാൻ സ്റ്റാൻഡേർഡ് ടെംപ്ലേറ്റ് ഉപയോഗിച്ച് സംസ്ഥാന കാർഷിക സർവ്വകലാശാലകളുമായി സഹകരിച്ച് ജില്ലാ തലത്തിലുള്ള കാർഷിക അനിശ്ചിതത്വ പദ്ധതികൾ ഐ‌സി‌ആർ‌ തയ്യാറാക്കിയിട്ടുണ്ട്. തീവ്ര സംഭവങ്ങൾ (ചൂട് തിരമാലകൾ, തണുത്ത തിരമാലകൾ, മഞ്ഞ്, ആലിപ്പഴം, ചുഴലിക്കാറ്റ്) വിളകളെയും കന്നുകാലികളെയും മത്സ്യബന്ധനത്തെയും (ഹോർട്ടികൾച്ചർ ഉൾപ്പെടെ) പ്രതികൂലമായി ബാധിക്കുന്നു.",
//     imgUrl: "https://slideplayer.com/slide/12299755/72/images/1/Agriculture+Contingency+Plan+as+an+Adaptation+Strategy+for+Weather+Aberrations.+Dr.+V.+P.+Sharma..jpg",
//     link: "http://agricoop.nic.in/agriculture-contingency-plan-listing",
//   ),
//   Scheme(
//     id: 'scheme4',
//     name: "Soil Health Card Scheme",
//     description: "2015 ഫെബ്രുവരി 19 ന് ഇന്ത്യാ ഗവൺമെന്റ് ആരംഭിച്ച പദ്ധതിയാണ് സോയിൽ ഹെൽത്ത് കാർഡ് സ്കീം. [1] പദ്ധതി പ്രകാരം, കർഷകർക്ക് മണ്ണ് കാർഡുകൾ വിതരണം ചെയ്യാൻ സർക്കാർ പദ്ധതിയിടുന്നു, ഇത് വ്യക്തിഗത ഫാമുകൾക്ക് ആവശ്യമായ പോഷകങ്ങളുടെയും രാസവളങ്ങളുടെയും വിള തിരിച്ചുള്ള ശുപാർശകൾ വഹിക്കും, ഇൻപുട്ടുകൾ നിയമാനുസൃതമായി ഉപയോഗിക്കുന്നതിലൂടെ ഉൽപാദനക്ഷമത മെച്ചപ്പെടുത്തുന്നതിന് കർഷകരെ സഹായിക്കുന്നു. എല്ലാ മണ്ണിന്റെ സാമ്പിളുകളും രാജ്യത്തുടനീളമുള്ള വിവിധ മണ്ണ് പരിശോധന ലാബുകളിൽ പരീക്ഷിക്കണം. അതിനുശേഷം വിദഗ്ധർ മണ്ണിന്റെ ശക്തിയും ബലഹീനതയും (മൈക്രോ പോഷകങ്ങളുടെ കുറവ്) വിശകലനം ചെയ്യുകയും അത് കൈകാര്യം ചെയ്യാനുള്ള നടപടികൾ നിർദ്ദേശിക്കുകയും ചെയ്യും. ഫലവും നിർദ്ദേശവും കാർഡുകളിൽ പ്രദർശിപ്പിക്കും. 14 കോടി കർഷകർക്ക് കാർഡുകൾ വിതരണം ചെയ്യാൻ സർക്കാർ പദ്ധതിയിടുന്നു.",
//     imgUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSF38QHZPg1sdvDo7n5J2kT45KZSFcT6DvFMWJsxENcDVJaKrerOzYqOs&s.jpg",
//     link: "https://soilhealth.dac.gov.in/",
//   ),
//   Scheme(
//     id: 'scheme5',
//     name: "Pradhan Mantri Fasal Bima Yojana (PMFBY)",
//     description: "The Pradhan Mantri Fasal Bima Yojana(PMFBY) launched on 18 February 2016 by Prime Minister Narendra Modi is an insurance service for farmers for their yields.[1] It was formulated in line with One Nation–One Scheme theme by replacing earlier two schemes National Agricultural Insurance Scheme (NAIS) and Modified National Agricultural Insurance Scheme (MNAIS) by incorporating their best features and removing their inherent drawbacks (shortcomings). It aims to reduce the premium burden on farmers and ensure early settlement of crop assurance claim for the full insured sum.",
//     imgUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_EXMAwC1Aa1IHq8seXkDbqaU4vsDNmH-v9aQDlvTCFT6VPdQZDLls9ms&s",
//     link: "https://pmfby.gov.in/",
//   ),
//   Scheme(
//     id: 'scheme6',
//     name: "പ്രധാനമന്ത്രി കൃഷി സിഞ്ചായി യോജന (PMKSY)",
//     description: 'It was launched on 1st July, 2015 with the motto of ‘Har Khet Ko Paani’ for providing end-to end solutions in irrigation supply chain, viz. water sources, distribution network and farm level applications. PMKSY not only focuses on creating sources for assured irrigation, but also creating protective irrigation by harnessing rain water at micro level through ‘Jal Sanchay’ and ‘Jal Sinchan’. Micro irrigation is to be popularised to ensure ‘Per drop-More crop’. PMKSY adopts State level planning and projectised execution that allows States to draw up their own irrigation development based on District Irrigation Plans and State Irrigation Plans. ',
//     imgUrl: "https://images.app.goo.gl/VFtau1j9iVJLP3f77",
//     link: "https://pmfby.gov.in/",
//   ),
//   Scheme(
//     id: 'scheme7',
//     name: "Pradhan Mantri Fasal Bima Yojana (PMFBY)",
//     description: "The Pradhan Mantri Fasal Bima Yojana(PMFBY) launched on 18 February 2016 by Prime Minister Narendra Modi is an insurance service for farmers for their yields.[1] It was formulated in line with One Nation–One Scheme theme by replacing earlier two schemes National Agricultural Insurance Scheme (NAIS) and Modified National Agricultural Insurance Scheme (MNAIS) by incorporating their best features and removing their inherent drawbacks (shortcomings). It aims to reduce the premium burden on farmers and ensure early settlement of crop assurance claim for the full insured sum.",
//     imgUrl: "https://images.app.goo.gl/J2SRsg6M2Ki73KAN7",
//     link: "https://pmksy.gov.in/",
//   ),
//   Scheme(
//     id: 'scheme8',
//     name: "മൈക്രോ ഇറിഗേഷൻ ഫണ്ട്(MIF)",
//     description: "A dedicated MIF created with NABARD has been approved with an initial corpus of Rs. 5000 crore (Rs. 2000 crore for 2018-19 & Rs. 3000 crore for 2019-20) for encouraging public and private investments in Micro irrigation. The main objective of the fund is to facilitate the States in mobilizing the resources for expanding coverage of Micro Irrigation. MIF would not only facilitate States in incentivizing and mobilizing resources for achieving the target envisaged under PMKSY-PDMC but also in bringing additional coverage through special and innovative initiatives by State Governments.An Advisory Committee has been set up to provide policy direction and ensure effective planning, coordination and monitoring of the Micro Irrigation Fund. ",
//     imgUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvfvEHf7-Sn9LEaRKqsycJyXHJzAHVoPMdxqpATAKztkBUXObcMoTuM4jf&s",
//     link: "https://currentaffairs.gktoday.in/tags/micro-irrigation-fund",
//   ),
// ]