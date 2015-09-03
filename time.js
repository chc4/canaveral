// Stolen from StackOverflow
String.prototype.format = function() {
    var formatted = this;
    for (var i = 0; i < arguments.length; i++) {
        var regexp = new RegExp('\\{'+i+'\\}', 'gi');
        formatted = formatted.replace(regexp, arguments[i]);
    }
    return formatted;
};
// Stolen from :talk's MessagesComponent.coffee
function lz(n){
  if(n<10){
    return "0{0}".format(n)
  } else {
    return "{0}".format(n)
  }
}
function update(){
  var d = new Date();
  var h = lz(d.getHours())
  var m = lz(d.getMinutes())
  var s = lz(d.getSeconds())
  document.getElementsByClassName("time")[0].textContent = "~{0}.{1}.{2}".format(h,m,s);
}
update();
window.setInterval(update,1000);
