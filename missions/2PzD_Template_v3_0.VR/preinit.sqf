#define preinit

#include "core\script_macros.hpp"

FW_DebugMessages = [];
FW_Modules = [];

PREP(addItemOrg);
PREP(addItemRandomOrg);
PREP(addItemRandomOrgPercent);
PREP(addItemVehicleOrg);
PREP(addItemVehicleRandomOrg);
PREP(addItemVehicleRandomOrgPercent);
PREP(canAttachItem);
PREP(canLinkItem);
PREP(checkClassname);
PREP(debugMessage);
PREP(makeUnitsList);
PREP(notTrackUnit);
PREP(randomRange);
PREP(registerModule);
PREP(removeAllGear);
PREP(removeAllVehicleGear);
PREP(removeMap);
PREP(respawnVehicle);
PREP(trackAsset);

Olsen_FW_FNC_Briefing = compileScript ["customization\briefing.sqf"];

Olsen_FW_FNC_Menu = compileScript ["core\menu.sqf"];

#include "modules\modules.sqf" //DO NOT REMOVE
