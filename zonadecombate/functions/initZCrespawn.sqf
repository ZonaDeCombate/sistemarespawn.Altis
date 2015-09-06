if (isServer) then {

  _locations = [["Base CCT","cctMRK"],["Base AEGIS","aegisMRK"],["Base SEALS","sealsMRK"],["Base G.O.T.E","goteMRK"],["Base A3CN","a3cnMRK"]];

  // Ativa o sistema de respawn na bandeira
  zcRespawnObject allowDamage false;
  zcRespawnObject animateDoor ["Door_rear_source", 1];
  zcRespawnObject engineOn true;

  // Coloca os addAction para cada localizacao
  {
    private ["_locationName","_locationPos"];

    _locationName = _x select 0;
    _locationPos = _x select 1;
    [
      [
        zcRespawnObject,
        [
          format ["<t color='#FF0000'>%1</t>",_locationName],
          {


          [_this select 3] call ZC_fnc_teleportPlayer;


        },_locationPos,6,false,true,"","_this distance _target < 5"
        ]
      ],
      "addAction",
      true,
      true,
      false
    ] call BIS_fnc_MP;
  } forEach _locations;

};


/*
CCT
AEGIS
SEALS
GOTE
A3CN
*/
