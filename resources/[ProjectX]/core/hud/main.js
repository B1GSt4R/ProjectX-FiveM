function updateHud(data) {
  $('#cash').text(data.cash);
  $('#dirtycash').text(data.dirtycash);
  $('#health').text(data.health);
  $('#cardio').text(data.cardio);
  $('#food').text(data.food);
  $('#water').text(data.water);
  $('#voice').text(data.voice);

  if(data.dirtycash === 0) $('.dirtycash').addClass('hidden');
  else $('.dirtycash').removeClass('hidden');

  clearColors('.health');
  clearColors('.food');
  clearColors('.water');
  clearColors('.cardio');
  clearColors('.voice');

  updatePanel('.health', data.health);
  updatePanel('.food', data.food);
  updatePanel('.water', data.water);
  updatePanel('.cardio', data.cardio);
  updatePanel('.voice', data.voice);
}

function updatePanel(panel, value){
  if(value <= 100){
    $(panel).addClass('green');
  }
  if(value <= 80){
    $(panel).addClass('yellow');
  }
  if(value <= 60){
    $(panel).addClass('orange');
  }
  if(value <= 40){
    $(panel).addClass('indianred');
  }
  if(value <= 20){
    $(panel).addClass('red');
  }
}

function clearColors(panel){
  $(panel).removeClass('red');
  $(panel).removeClass('indianred');
  $(panel).removeClass('orange');
  $(panel).removeClass('yellow');
  $(panel).removeClass('green');
}

window.addEventListener('message', function (event){
  updateHud(event.data);
});

updateHud({cash: 0, dirtycash: 1, health: 100, voice: 10, food: 100, water: 100, cardio: 100});