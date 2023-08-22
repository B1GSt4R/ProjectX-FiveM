var count = 0;
var current = 0;

const handler = {
  startInitFunctionOrder(data){
    count = data.count;
  },
  initFunctionInvoking(data){
    document.querySelector(".progress").style.left = "0%";
    document.querySelector(".progress").style.width = ((data.idx / count) * 100) + "%";
  },
  startDataFileEntries(data){
    count = data.count;
  },
  performMapLoadFunction(data){
    ++current;
    document.querySelector(".progress").style.left = "0%";
    document.querySelector(".progress").style.width = ((data.idx / count) * 100) + "%";
  }
}

window.addEventListener("message", function(e) {
  (handler[e.data.eventName] || function () {})(e.data)
});