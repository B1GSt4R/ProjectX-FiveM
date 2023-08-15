window.addEventListener('message', function (event){
  let data = event.data;
  $('#money').text(data.money);
});