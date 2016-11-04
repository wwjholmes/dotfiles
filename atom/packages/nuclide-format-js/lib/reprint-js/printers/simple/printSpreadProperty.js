function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { 'default': obj }; }

/*
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the LICENSE file in
 * the root directory of this source tree.
 *
 * 
 */

var _utilsFlatten = require('../../utils/flatten');

var _utilsFlatten2 = _interopRequireDefault(_utilsFlatten);

var _constantsMarkers = require('../../constants/markers');

var _constantsMarkers2 = _interopRequireDefault(_constantsMarkers);

function printSpreadProperty(print, node) {
  return (0, _utilsFlatten2['default'])(['...', _constantsMarkers2['default'].noBreak, print(node.argument)]);
}

module.exports = printSpreadProperty;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uL3NyYy9yZXByaW50LWpzL3ByaW50ZXJzL3NpbXBsZS9wcmludFNwcmVhZFByb3BlcnR5LmpzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs0QkFhb0IscUJBQXFCOzs7O2dDQUNyQix5QkFBeUI7Ozs7QUFFN0MsU0FBUyxtQkFBbUIsQ0FBQyxLQUFZLEVBQUUsSUFBb0IsRUFBUztBQUN0RSxTQUFPLCtCQUFRLENBQ2IsS0FBSyxFQUNMLDhCQUFRLE9BQU8sRUFDZixLQUFLLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxDQUNyQixDQUFDLENBQUM7Q0FDSjs7QUFFRCxNQUFNLENBQUMsT0FBTyxHQUFHLG1CQUFtQixDQUFDIiwiZmlsZSI6InByaW50U3ByZWFkUHJvcGVydHkuanMiLCJzb3VyY2VzQ29udGVudCI6WyIvKlxuICogQ29weXJpZ2h0IChjKSAyMDE1LXByZXNlbnQsIEZhY2Vib29rLCBJbmMuXG4gKiBBbGwgcmlnaHRzIHJlc2VydmVkLlxuICpcbiAqIFRoaXMgc291cmNlIGNvZGUgaXMgbGljZW5zZWQgdW5kZXIgdGhlIGxpY2Vuc2UgZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBpblxuICogdGhlIHJvb3QgZGlyZWN0b3J5IG9mIHRoaXMgc291cmNlIHRyZWUuXG4gKlxuICogQGZsb3dcbiAqL1xuXG5pbXBvcnQgdHlwZSB7TGluZXMsIFByaW50fSBmcm9tICcuLi8uLi90eXBlcy9jb21tb24nO1xuaW1wb3J0IHR5cGUge1NwcmVhZFByb3BlcnR5fSBmcm9tICdhc3QtdHlwZXMtZmxvdyc7XG5cbmltcG9ydCBmbGF0dGVuIGZyb20gJy4uLy4uL3V0aWxzL2ZsYXR0ZW4nO1xuaW1wb3J0IG1hcmtlcnMgZnJvbSAnLi4vLi4vY29uc3RhbnRzL21hcmtlcnMnO1xuXG5mdW5jdGlvbiBwcmludFNwcmVhZFByb3BlcnR5KHByaW50OiBQcmludCwgbm9kZTogU3ByZWFkUHJvcGVydHkpOiBMaW5lcyB7XG4gIHJldHVybiBmbGF0dGVuKFtcbiAgICAnLi4uJyxcbiAgICBtYXJrZXJzLm5vQnJlYWssXG4gICAgcHJpbnQobm9kZS5hcmd1bWVudCksXG4gIF0pO1xufVxuXG5tb2R1bGUuZXhwb3J0cyA9IHByaW50U3ByZWFkUHJvcGVydHk7XG4iXX0=