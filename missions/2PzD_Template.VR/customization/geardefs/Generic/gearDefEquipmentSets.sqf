//======================== Generic Equipment Sets ========================

//=== EQUIPMENT SETS ===

#define GEN_Default_Equipment_Set \
    [GEN_Map] call Olsen_FW_FNC_AddItem; /* Needed for briefing*/ \
    [GEN_Compass] call Olsen_FW_FNC_AddItem; \
    [GEN_Watch] call Olsen_FW_FNC_AddItem; \
    [GEN_ace_shovel,1,"uniform"] call Olsen_FW_FNC_AddItem; \
    [GEN_BandageField,10,"uniform"] call Olsen_FW_FNC_AddItem; \
    [GEN_TQ,1,"uniform"] call Olsen_FW_FNC_AddItem; \
    [GEN_ace_flashlightNA,1,"uniform"] call Olsen_FW_FNC_AddItem; \
    [GEN_ace_cabletie,1,"uniform"] call Olsen_FW_FNC_AddItem; \
    [GEN_ace_canteen_F,1,"uniform"] call Olsen_FW_FNC_AddItem; \
    this removeItemfrombackpack "itemRadio";

#define GEN_Leader_Equipment_Set \
    [GEN_BinoG] call Olsen_FW_FNC_AddItem; \
    [GEN_ace_maptools,1,"uniform"] call Olsen_FW_FNC_AddItem; \

#define GEN_MedicP_Equipment_Set \
    [GEN_BandageField,10,"backpack"] call Olsen_FW_FNC_AddItem; \
    [GEN_BandageElastic,20,"backpack"] call Olsen_FW_FNC_AddItem; \
    [GEN_BandagePacking,20,"backpack"] call Olsen_FW_FNC_AddItem; \
    [GEN_Morp,5,"backpack"] call Olsen_FW_FNC_AddItem; \
    [GEN_Epi,5,"backpack"] call Olsen_FW_FNC_AddItem; \
    [GEN_TQ,4,"backpack"] call Olsen_FW_FNC_AddItem; \
    [GEN_SurgKit,1,"backpack"] call Olsen_FW_FNC_AddItem; \
    [GEN_Saline1000,5,"backpack"] call Olsen_FW_FNC_AddItem; \
    [GEN_Saline500,10,"vest"] call Olsen_FW_FNC_AddItem; \
    [GEN_Gren_Smoke_B,2,"backpack"] call Olsen_FW_FNC_AddItem;

#define GEN_MedicS_Equipment_Set \
    [GEN_BandageField,5,"backpack"] call Olsen_FW_FNC_AddItem; \
    [GEN_BandageElastic,10,"backpack"] call Olsen_FW_FNC_AddItem; \
    [GEN_BandagePacking,10,"backpack"] call Olsen_FW_FNC_AddItem; \
    [GEN_TQ,5,"backpack"] call Olsen_FW_FNC_AddItem; \
    [GEN_Gren_Smoke_B,1,"backpack"] call Olsen_FW_FNC_AddItem;

#define GEN_Mortar_Equipment_Set \
    [GEN_ace_maptools,1,"uniform"] call Olsen_FW_FNC_AddItem; \
    [GEN_ace_rangetable,1,"uniform"] call Olsen_FW_FNC_AddItem;