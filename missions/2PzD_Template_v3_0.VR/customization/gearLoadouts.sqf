
//=== Uniform options ===

// Uncomment the line for the uniforms you want to use.
// Make sure only one option is uncommented! Otherwise whichever one loads last overwrites the others.

#define regularUniforms true
//#define winterUniforms true
//#define africaUniforms true

//=== Gear Definitions ===

//All definitions are in the geardefs folder. These should be always be in your mission.

// THE WINTER AND AFRICAN GEARDEF FILES FOR COUNTRIES OTHER THAN GERMANY HAVE NOT YET BEEN CREATED.

#ifdef regularUniforms
    #include "geardefs\German\gearDefGerRegular.sqf"
    #include "geardefs\British\gearDefUK.sqf"
    #include "geardefs\Russian\gearDefRusRegular.sqf"
    #include "geardefs\US\gearDefUS.sqf"
    #include "geardefs\Japanese\gearDefJapUniforms.sqf"
#endif

#ifdef winterUniforms
    #include "geardefs\German\gearDefGerWinter.sqf"
    #include "geardefs\Russian\gearDefRusWinter.sqf"
#endif

#ifdef africaUniforms
    #include "geardefs\German\gearDefGerAfrica.sqf"
#endif

#include "geardefs\Generic\gearDefGEN.sqf"

#include "geardefs\Generic\gearDefEquipmentSets.sqf"

#include "geardefs\gearDefAus.sqf"

#include "geardefs\gearDefBel.sqf"

#include "geardefs\gearDefCdn.sqf"

#include "geardefs\gearDefCiv.sqf"

#include "geardefs\gearDefCzech.sqf"

#include "geardefs\gearDefFrn.sqf"

#include "geardefs\German\gearDefGer.sqf"

#include "geardefs\German\gearDefGerLuft.sqf"

#include "geardefs\German\gearDefGerWeapons.sqf"

#include "geardefs\Japanese\gearDefJapWeapons.sqf"

#include "geardefs\Russian\gearDefNKVD.sqf"

#include "geardefs\Russian\gearDefRus.sqf"

#include "geardefs\Russian\gearDefRusWeapons.sqf"

#include "geardefs\gearDefNed.sqf"

#include "geardefs\gearDefParti.sqf"

#include "geardefs\gearDefPol.sqf"

//============ Vehicle Loadouts ============

// Vehicle Loadouts are in the loadoutsVeh folder.
// Remove the // at the start of a line to enable that loadout set.
// Delete all the loadout files you are not using in order to keep the filesize down.

//#include "loadoutsVeh\German\vehGearFSJ.sqf"

//#include "loadoutsVeh\Russian\vehGearRUS.sqf"

#include "loadoutsVeh\German\vehGearWHR.sqf"

//============ Loadouts ============

// Loadouts are in the loadouts folder.
// Remove the // at the start of a line to enable that loadout set.
// Delete all the loadout files you are not using in order to keep the filesize down.

    //=== British ===
    //Army
#include "loadouts\British\gearUK40.sqf"
#include "loadouts\British\gearUK44.sqf"

    //=== German ===
    //Fallschirmjäger
//#include "loadouts\German\gearFSJ40.sqf"
//#include "loadouts\German\gearFSJ44.sqf"

    //Fallschirmjäger with Parachutes
//#include "loadouts\German\gearFSJP40.sqf"
//#include "loadouts\German\gearFSJP44Jul.sqf"

    //Wehrmacht
//#include "loadouts\German\gearWHR39.sqf"
//#include "loadouts\German\gearWHR40.sqf"
//#include "loadouts\German\gearWHR42.sqf"
//#include "loadouts\German\gearWHR44.sqf"

    //=== Japanese ===
    //Imperial Japanese Army
#include "loadouts\Japanese\gearJpn42.sqf"
//#include "loadouts\Japanese\gearJpn44.sqf"

    //=== Russian ===
    //Red Army
//#include "loadouts\Russian\gearRus41.sqf"
//#include "loadouts\Russian\gearRus44.sqf"

    //=== United States ===
    //Army
//#include "loadouts\US\gearUS42.sqf"
//#include "loadouts\US\gearUS44.sqf"

    //Army Airborne
//#include "loadouts\US\gearUSAB42.sqf"
//#include "loadouts\US\gearUSAB44.sqf"

    //Marine Corps
//#include "loadouts\US\gearUSMC42.sqf"
//#include "loadouts\US\gearUSMC44.sqf"