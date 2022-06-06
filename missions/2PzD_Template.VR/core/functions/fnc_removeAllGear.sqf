/*
 * Author: Olsen
 *
 * Remove all gear.
 *
 * Arguments:
 * 0: unit <object>
 *
 * Return Value:
 * nothing
 *
 * Public: No
 */

params ["_unit"];

FW_Whitelist_Face = [
    "","None",
    "G_LIB_Watch1","G_LIB_Watch2", //watches
    "G_LIB_Dienst_Brille","G_LIB_Dienst_Brille2", //glasses
    "G_LIB_GER_Gloves1","G_LIB_GER_Gloves2","G_LIB_GER_Gloves3", //wool gloves
    "G_LIB_GER_Gloves4", //leather gloves
    "CUP_Beard_Black", "CUP_Beard_Blonde", "CUP_Beard_Brown" //beards
];

if (
    !isPlayer _unit
    || {!isNil "FW_force_remove_facewear" && {FW_force_remove_facewear}}
    || {!((goggles _unit) in FW_Whitelist_Face)}
) then {
    removeGoggles _unit;
};

removeHeadgear _unit;
removeVest _unit;
removeBackpack _unit;
removeUniform _unit;
removeAllWeapons _unit;
removeAllAssignedItems _unit;
