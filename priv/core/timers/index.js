var timers = require('./ev8_node_timers.erl');

exports = timers;

exports._setTimeout = exports.setTimeout;
exports.setTimeout = function(callback, ms) {
  var args = Array.prototype.slice.call(arguments, 2);

  return exports._setTimeout(callback, ms, args);
};

exports._setInterval = exports.setTimeout;
exports.setInterval = function(callback, ms) {
  var args = Array.prototype.slice.call(arguments, 2);

  return exports._setInterval(callback, ms, args);
};
