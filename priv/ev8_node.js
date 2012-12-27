(function() {
  var timers = require('timers');

  setTimeout = timers.setTimeout;
  clearTimeout = timers.clearTimeout;
  setInterval = timers.setInterval;
  clearInterval = timers.clearInterval;
})();
