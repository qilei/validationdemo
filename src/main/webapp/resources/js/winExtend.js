// One object tracks the current modal dialog opened from this window.
var winExtend = {
    // Generate a modal dialog.
    // Parameters:
    //    url -- URL of the page/frameset to be loaded into dialog
    //    width -- pixel width of the dialog window
    //    height -- pixel height of the dialog window
    //    returnFunc -- reference to the function (on this page)
    //                  that is to act on the data returned from the dialog
    //    args -- [optional] any data you need to pass to the dialog
    open : function(url, width, height, returnFunc, args) {
        if (!this.win || (this.win && this.win.closed)) {
            // Initialize properties of the modal dialog object.
            this.url = url;
            this.width = width;
            this.height = height;
            this.returnFunc = returnFunc;
            this.args = args;
            this.returnedValue = "";
            // Keep name unique.
            this.name = (new Date()).getSeconds().toString();
            // Assemble window attributes and try to center the dialog.
            if (window.screenX) {              // Moz, Saf, Op
                // Center on the main window.
                this.left = window.screenX + 
                   ((window.outerWidth - this.width) / 2);
                this.top = window.screenY + 
                   ((window.outerHeight - this.height) / 2);
                var attr = "screenX=" + this.left + 
                   ",screenY=" + this.top + ",resizable=no,width=" + 
                   this.width + ",height=" + this.height;
            } else if (window.screenLeft) {    // IE 5+/Windows 
                // Center (more or less) on the IE main window.
                // Start by estimating window size, 
                // taking IE6+ CSS compatibility mode into account
                var CSSCompat = (document.compatMode && document.compatMode != "BackCompat");
                window.outerWidth = (CSSCompat) ? document.body.parentElement.clientWidth : 
                    document.body.clientWidth;
                window.outerHeight = (CSSCompat) ? document.body.parentElement.clientHeight :  
                    document.body.clientHeight;
                window.outerHeight -= 80;
                this.left = parseInt(window.screenLeft+ 
                   ((window.outerWidth - this.width) / 2));
                this.top = parseInt(window.screenTop + 
                   ((window.outerHeight - this.height) / 2));
                var attr = "left=" + this.left + 
                   ",top=" + this.top + ",resizable=no,width=" + 
                   this.width + ",height=" + this.height;
            } else {                           // all the rest
                // The best we can do is center in screen.
                this.left = (screen.width - this.width) / 2;
                this.top = (screen.height - this.height) / 2;
                var attr = "left=" + this.left + ",top=" + 
                   this.top + ",resizable=no,width=" + this.width + 
                   ",height=" + this.height;
            }
            // Generate the dialog and make sure it has focus.
            this.win=window.open(this.url, this.name, attr);
            this.win.focus();
        } else {
            this.win.focus();
        }
    }
};
   
   
   
   
   
   
