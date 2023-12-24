//Assessing the Regional Impacts of Climate Change on Food Security: An In-depth Analysis of Long-term Determinants and Policy Implications/


help xtdcce2
use "C:\Users\Frank Osei-kusi\Desktop\Ecological footprint per capita\stata ef\ecologicalFS.dta"
br
move id CountryName
preserve keep if CountryName=="Europe and Central Asia"
preserve
 keep if CountryName=="Europe and Central Asia"
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP DEATH, reportc cr(d.CARBON CPI ENERGY GDPpcap POP DEATH)
xtset id year
br
restore
br
 keep if _regionname =="Europe and Central Asia"
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP DEATH, reportc cr(d.CARBON CPI ENERGY GDPpcap POP DEATH)
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green )
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green ) cr_lags(2)
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green ) cr_lags(1)
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green ) cr_lags(3)
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green ) cr_lags(2 2 2)
use "C:\Users\Frank Osei-kusi\Desktop\Ecological footprint per capita\stata ef\ecologicalFS.dta", clear
preserve
br
 keep if _regionname =="Sub-Saharan Africa"
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green ) cr_lags(2 2 2)
br
restore
br
preserve
 keep if _regionname =="Middle East and North Africa"
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green ) cr_lags(2 2 2)
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green, rcce ) cr_lags(2 2 2)
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green, rcce )
restore
preserve
 keep if _regionname =="Sub-Saharan Africa"
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green, rcce )
restore
br
preserve
br
 keep if _regionname =="Europe and Central Asia"
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green, rcce )
estat bootstrap, seed(123) wild percentile
restore
 keep if _regionname =="Sub-Saharan Africa"
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green, rcce )
estat bootstrap, seed(123) wild percentile
use "C:\Users\Frank Osei-kusi\Desktop\Ecological footprint per capita\stata ef\ecologicalFS.dta", clear
preserve
 keep if _regionname =="Middle East and North Africa"
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green, rcce )
estat bootstrap, seed(123) wild percentile
restore
preserve
 keep if _regionname =="Europe and Central Asia"
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green)cr_lags(3)
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green)cr_lags(0)
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green)cr_lags(1)
estat bootstrap, seed(123) wild percentile
restore
 preserve
 keep if _regionname =="Sub-Saharan Africa"
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green)cr_lags(1)
estat bootstrap, seed(123) wild percentile
restore
 preserve
 keep if _regionname =="Middle East and North Africa"
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green)cr_lags(1)
estat bootstrap, seed(123) wild percentile
preserve
br
restore
preserve
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green)
restore
preserve
 keep if _regionname =="Europe and Central Asia"
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green, rcce )
estat bootstrap, seed(123) wild percentile
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON L.CARBON CPI ENERGY GDPpcap POP Green) cr_lags(1)
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CARBON CPI ENERGY GDPpcap POP Green) cr_lags(1)
 xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green)
 xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green) c-lags(0)
 xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green) cr_lags(0)
estat bootstrap, seed(123) wild percentile
restore
preserve
br
 keep if _regionname =="Sub-Saharan Africa"
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green, rcce )
estat bootstrap, seed(123) wild percentile
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CARBON CPI ENERGY GDPpcap POP Green) cr_lags(1)
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CARBON CPI ENERGY GDPpcap POP Green) cr_lags(0)
restore
br
estat bootstrap, seed(123) wild percentile
preserve
 keep if _regionname =="Sub-Saharan Africa"
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CARBON CPI ENERGY GDPpcap POP Green) cr_lags(0)
estat bootstrap, seed(123) wild percentile
restore
preserve
keep if _regionname =="Middle East and North Africa"
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CPI ENERGY GDPpcap POP Green, rcce )
estat bootstrap, seed(123) wild percentile
xtdcce2 d.CARBON CPI ENERGY GDPpcap POP Green,  cr(d.CARBON CARBON CPI ENERGY GDPpcap POP Green) cr_lags(0)
estat bootstrap, seed(123) wild percentile
restore

parmby "xi:dynardl CARBON CPI ENERGY GDPpcap POP Green, lags(1, 1, 1, 1, 1, 1) levels(., 1, 1,1,1,1) shockvar(CPI) shockval(10) time(-5) range(15) graph nocons change sims(1000)",label norestore

parmby "xi:dynardl CARBON CPI ENERGY GDPpcap POP Green, lags(1, 1, 1, 1, 1, 1) levels(., 1, 1,1,1,1) shockvar(Green) shockval(10) time(5) range(15) graph nocons change sims(1000)",label norestore

use "C:\Users\Frank Osei-kusi\Desktop\Ecological footprint per capita\stata ef\ecologicalFS.dta" 
br
help xtgrangert
xtgrangert CARBON CPI ENERGY GDPpcap POP Green, bootstrap(200, seed(123))
xtgrangert CARBON CPI ENERGY GDPpcap POP Green, bootstrap(100, seed(123))
xtgrangert CARBON CPI ENERGY GDPpcap POP Green, bootstrap(50, seed(123))
xtgrangert d.CARBON CPI ENERGY GDPpcap POP Green, bootstrap(50, seed(123))
xtgrangert d.CARBON CPI ENERGY GDPpcap POP Green, lags(2)
xtgrangert d.CARBON CPI ENERGY GDPpcap POP Green, lags(2) bootstrap
xtgrangert CARBON CPI ENERGY GDPpcap POP Green, lags(2) bootstrap
xtgrangert d.CARBON CPI ENERGY GDPpcap POP Green, lags(2, 3) bootstrap
xtgrangert d.CARBON CPI ENERGY GDPpcap POP Green, lags(3) bootstrap
help dynardl
preserve
do "C:\Users\FRANKO~1\AppData\Local\Temp\STD466c_000000.tmp"
xtgrangert d.CARBON CPI ENERGY GDPpcap POP Green, lags(3) bootstrap
restore
preserve
do "C:\Users\FRANKO~1\AppData\Local\Temp\STD466c_000000.tmp"
xtgrangert d.CARBON CPI ENERGY GDPpcap POP Green, lags(3) bootstrap
xtgrangert d.CARBON CPI ENERGY GDPpcap POP Green, lags(4) bootstrap
xtgrangert d.CARBON CPI ENERGY GDPpcap POP Green, lags(2) bootstrap
xtgrangert d.CARBON CPI ENERGY GDPpcap POP Green, lags(2) bootstrap(200, seed(123))
xtgrangert d.CARBON CPI ENERGY GDPpcap POP Green, lags(3) bootstrap(200, seed(123))
restore
preserve
keep if _regionname=="Middle-East and North Africa"
br
restore
br
preserve
keep if _regionname=="Middle East and North Africa"

xtgrangert d.CARBON CPI ENERGY GDPpcap POP Green, lags(3) bootstrap(200, seed(123))

preserve


parmby "xi:dynardl CARBON CPI ENERGY GDPpcap POP Green, lags(1, 1, 1, 1, 1, 1) levels(., 1, 1,1,1,1) shockvar(CPI) shockval(-3) time(5) range(15) graph nocons change sims(1000)",label norestore

graph save "Graph" "C:\Users\Frank Osei-kusi\Desktop\Submissions\submission EMA\potential.gph"
sencode parm, gene(parmid)
eclplot estimate min95 max95 parmid

restore

save "C:\Users\Frank Osei-kusi\Desktop\FSdata.dta"
