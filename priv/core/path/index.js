var path = require("./ev8_node_path.erl");

exports = path;
exports._join = exports.join;
exports.join = function() {
  var args = Array.prototype.slice.call(arguments);

  return exports._join(args);
};
