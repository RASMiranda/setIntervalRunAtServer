setIntervalRunAtServer
======================

asp form run at server, does not let inner html button onlick setinterval work

http://stackoverflow.com/questions/20001657/asp-form-run-at-server-does-not-let-inner-html-button-onlick-setinterval-work

SOLUTION By RGraham (http://stackoverflow.com/users/571194/rgraham):
http://stackoverflow.com/a/20001714/1384237

Or just return false from your dumb_setInterval method:

function dumb_setInterval() {
    setInterval(function(){alert('dumb setInterval after 5000ms!');}, 5000);    
    return false;
}
Don't forget to update your ImageButton OnClientClick if using the return false; method:

<asp:ImageButton id="formSrvBtn"
            runat="server" 
            OnClientClick="return dumb_setInterval();"
            
