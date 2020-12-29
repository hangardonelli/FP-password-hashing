
var ENGINE = _global.getCurrentEngine();
var UNDERGROUND_STAMP_ID = 10;
var start_x = 380;
var start_y = 340;
var SHELL = _global.getCurrentShell();
triggers_mc.forts_mc.triggerFunction = function ()
{
    ENGINE.sendJoinRoom("forts", 642, 360);
}
;
triggers_mc.pet_mc.triggerFunction = function ()
{
    ENGINE.sendJoinRoom("pet", 414, 260);
}
;
triggers_mc.hotellobby_mc.triggerFunction = function ()
{
    ENGINE.sendJoinRoom("hotellobby", 414, 260);
}
;
triggers_mc.park_mc.triggerFunction = function ()
{
    ENGINE.sendJoinRoom("park", 414, 260);
}
;
triggers_mc.cave_mc.triggerFunction = function ()
{
    SHELL.stampEarned(UNDERGROUND_STAMP_ID);
    ENGINE.sendJoinRoom("cave", 590, 307);
}
;
triggers_mc.stage_mc.triggerFunction = function ()
{
    ENGINE.sendJoinRoom("stage", 105, 330);
}
;
triggers_mc.pizza_mc.triggerFunction = function ()
{
    ENGINE.sendJoinRoom("pizza", 414, 250);
}
;
triggers_mc.forest_mc.triggerFunction = function ()
{
    ENGINE.sendJoinRoom("forest", 135, 215);
}
;
background_mc.forts_btn.onRelease = function ()
{
    trace("forts_btn");
    ENGINE.sendPlayerMove(20, 270);
}
;
manhole_mc.manhole_btn.onRelease = function ()
{
    trace("cave_btn");
    ENGINE.sendPlayerMove(265, 265);
}
;
tickets_btn.useHandCursor = false;
tickets_btn.onRelease = function ()
{
    trace("booth_btn");
    ENGINE.sendPlayerMove(465, 210);
}
;
background_mc.forest_btn.onRelease = function ()
{
    trace("forest_btn");
    ENGINE.sendPlayerMove(720, 270);
}
;
background_mc.pet_btn.onRelease = function ()
{
    trace("pet_btn");
    ENGINE.sendPlayerMove(210, 230);
}
;
background_mc.stage01_btn.onRelease = function ()
{
    trace("stage01_btn");
    ENGINE.sendPlayerMove(325, 200);
}
;
background_mc.stage02_btn.onRelease = function ()
{
    trace("stage02_btn");
    ENGINE.sendPlayerMove(435, 200);
}
;
background_mc.pizza_btn.onRelease = function ()
{
    trace("pizza_btn");
    ENGINE.sendPlayerMove(610, 230);
}
;
triggers_mc._visible = false;
block_mc._visible = false;