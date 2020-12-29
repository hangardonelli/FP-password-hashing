var shell = _global.getCurrentShell();
var airtower = _global.getCurrentAirtower();
var INTERFACE = _global.getCurrentInterface();

var handlePrompt = function (obj) {
    obj.shift();
    INTERFACE.showPrompt('ok', obj[0]);
};

airtower.addListener('cprompt', handlePrompt);
    
var handleCustomError = function (obj) {
    obj.shift();
            
    var windowSize = shell.window_size[WINDOW_SMALL];
    var localizedString = shell.getLocalizedString("Okay");
    var errorText = obj[0];
    var errorType = obj[1];

    var onClickOk = function () {
        shell.closeErrorPrompt();
    };
            
    shell.showErrorPrompt(windowSize, errorText, localizedString, onClickOk, errorType);
};
    
airtower.addListener('cerror', handleCustomError);
