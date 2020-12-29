var ENGINE = _global.getCurrentEngine();
var start_x = 380;
var start_y = 330;
var SHELL = _global.getCurrentShell();
var language;
var localized_frame = 1;
triggers_mc.coffee_mc.triggerFunction = function()
{
   ENGINE.sendJoinRoom("coffee",350,225);
};
triggers_mc.dance_mc.triggerFunction = function()
{
   ENGINE.sendJoinRoom("dance",150,280);
};
triggers_mc.shop_mc.triggerFunction = function()
{
   ENGINE.sendJoinRoom("shop",518,260);
};
triggers_mc.forts_mc.triggerFunction = function()
{
   ENGINE.sendJoinRoom("forts",180,260);
};
triggers_mc.dock_mc.triggerFunction = function()
{
   ENGINE.sendJoinRoom("dock",600,200);
};
background_mc.dock_btn.onRelease = function ()
{
	trace("dock_btn");
    ENGINE.sendPlayerMove(45, 270);
};
background_mc.coffee_btn.onRelease = function ()
{
	trace("coffee_btn");
    ENGINE.sendPlayerMove(210, 230);
};
background_mc.danceButton_btn.onRelease = function ()
{
	trace("dance_btn");
    ENGINE.sendPlayerMove(420, 205);
};
background_mc.shop_btn.onRelease = function ()
{
	trace("shop_btn");
    ENGINE.sendPlayerMove(550, 200);
};
background_mc.forts_btn.onRelease = function ()
{
	trace("forts_btn");
    ENGINE.sendPlayerMove(715, 280);
};

triggers_mc._visible = false;
block_mc._visible = false;
