//=== Uniform options ===

// Uncomment the line for the uniforms you want to use.
// Make sure only one option is uncommented! Otherwise whichever one loads last overwrites the others.

#define regularUniforms true
//#define winterUniforms true
//#define africaUniforms true

//=== Gear Definitions ===

//All definitions are in the geardefs folder. These should be always be in your mission.

// THE WINTER AND AFRICAN GEARDEF FILES FOR SOME COUNTRIES HAVE NOT YET BEEN CREATED.

#ifdef regularUniforms
    #include "geardefs\British\gearDefUKRegular.sqf"
    #include "geardefs\Finnish\gearDefFinRegular.sqf"
    #include "geardefs\German\gearDefGerRegular.sqf"
    #include "geardefs\Russian\gearDefRusRegular.sqf"
    #include "geardefs\US\gearDefUSRegular.sqf"
#endif

#ifdef winterUniforms
    #include "geardefs\British\gearDefUKWinter.sqf"
    #include "geardefs\Finnish\gearDefFinWinter.sqf"
    #include "geardefs\German\gearDefGerWinter.sqf"
    #include "geardefs\Russian\gearDefRusWinter.sqf"
    #include "geardefs\US\gearDefUSWinter.sqf"
#endif

#ifdef africaUniforms
    #include "geardefs\British\gearDefUKAfrica.sqf"
    #include "geardefs\German\gearDefGerAfrica.sqf"
    #include "geardefs\US\gearDefUSAfrica.sqf"
#endif

#include "geardefs\British\gearDefUK.sqf"

#include "geardefs\British\gearDefUKPara.sqf"

#include "geardefs\British\gearDefUKWeapons.sqf"

#include "geardefs\Finnish\gearDefFin.sqf"

#include "geardefs\Finnish\gearDefFinWeapons.sqf"

#include "geardefs\Generic\gearDefGEN.sqf"

#include "geardefs\Generic\gearDefEquipmentSets.sqf"

#include "geardefs\German\gearDefGer.sqf"

#include "geardefs\German\gearDefGerLuft.sqf"

#include "geardefs\German\gearDefGerWeapons.sqf"

#include "geardefs\Russian\gearDefNKVD.sqf"

#include "geardefs\Russian\gearDefRus.sqf"

#include "geardefs\Russian\gearDefRusWeapons.sqf"

#include "geardefs\US\gearDefUS.sqf"

#include "geardefs\US\gearDefUSAirborne.sqf"

#include "geardefs\US\gearDefUSRanger.sqf"

#include "geardefs\US\gearDefUSWeapons.sqf"

#include "geardefs\gearDefCiv.sqf"

#include "geardefs\gearDefCzech.sqf"

#include "geardefs\gearDefNor.sqf"

#include "geardefs\gearDefParti.sqf"

#include "geardefs\gearDefPol.sqf"

#include ".\loadouts.sqf"