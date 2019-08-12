
/* ----------------------------------------------------------------------------
Function: btc_fnc_log_server_delete

Description:
    Delete object created by logistic point.

Parameters:
    _veh - Object to delete. [Object]
    _allowlist - Item can be deleted. [Array]

Returns:

Examples:
    (begin example)
        [cursorObject] call btc_fnc_log_server_delete;
    (end)

Author:
    Vdauphin

---------------------------------------------------------------------------- */

params [
    ["_veh", objNull, [objNull]],
    ["_allowlist", btc_log_obj_created, [[]]]
];

if !(_veh in _allowlist) exitWith {
    [17] remoteExecCall ["btc_fnc_show_hint", remoteExecutedOwner];
};

deleteVehicle (_allowlist deleteAt (_allowlist find _veh));