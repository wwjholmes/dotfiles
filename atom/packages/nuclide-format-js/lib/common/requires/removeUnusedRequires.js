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

var _utilsGetDeclaredIdentifiers = require('../utils/getDeclaredIdentifiers');

var _utilsGetDeclaredIdentifiers2 = _interopRequireDefault(_utilsGetDeclaredIdentifiers);

var _utilsGetNamesFromID = require('../utils/getNamesFromID');

var _utilsGetNamesFromID2 = _interopRequireDefault(_utilsGetNamesFromID);

var _utilsGetNonDeclarationIdentifiers = require('../utils/getNonDeclarationIdentifiers');

var _utilsGetNonDeclarationIdentifiers2 = _interopRequireDefault(_utilsGetNonDeclarationIdentifiers);

var _utilsHasOneRequireDeclaration = require('../utils/hasOneRequireDeclaration');

var _utilsHasOneRequireDeclaration2 = _interopRequireDefault(_utilsHasOneRequireDeclaration);

var _utilsIsGlobal = require('../utils/isGlobal');

var _utilsIsGlobal2 = _interopRequireDefault(_utilsIsGlobal);

var _jscodeshift = require('jscodeshift');

var _jscodeshift2 = _interopRequireDefault(_jscodeshift);

function removeUnusedRequires(root, options) {
  var used = (0, _utilsGetNonDeclarationIdentifiers2['default'])(root, options);
  var nonRequires = (0, _utilsGetDeclaredIdentifiers2['default'])(root, options, [function (path) {
    return !(0, _utilsHasOneRequireDeclaration2['default'])(path.node);
  }]);

  // Remove unused requires.
  root.find(_jscodeshift2['default'].VariableDeclaration).filter(function (path) {
    return (0, _utilsIsGlobal2['default'])(path);
  }).filter(function (path) {
    return (0, _utilsHasOneRequireDeclaration2['default'])(path.node);
  }).filter(function (path) {
    var id = path.node.declarations[0].id;
    var names = (0, _utilsGetNamesFromID2['default'])(id);
    for (var _name of names) {
      if (used.has(_name) && !nonRequires.has(_name)) {
        return false;
      }
    }
    return true;
  }).remove();
}

module.exports = removeUnusedRequires;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIi4uLy4uLy4uL3NyYy9jb21tb24vcmVxdWlyZXMvcmVtb3ZlVW51c2VkUmVxdWlyZXMuanMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7OzJDQWFtQyxpQ0FBaUM7Ozs7bUNBQ3pDLHlCQUF5Qjs7OztpREFDWCx1Q0FBdUM7Ozs7NkNBQzNDLG1DQUFtQzs7Ozs2QkFDbkQsbUJBQW1COzs7OzJCQUN2QixhQUFhOzs7O0FBRTlCLFNBQVMsb0JBQW9CLENBQzNCLElBQWdCLEVBQ2hCLE9BQXNCLEVBQ2hCO0FBQ04sTUFBTSxJQUFJLEdBQUcsb0RBQTZCLElBQUksRUFBRSxPQUFPLENBQUMsQ0FBQztBQUN6RCxNQUFNLFdBQVcsR0FBRyw4Q0FDbEIsSUFBSSxFQUNKLE9BQU8sRUFDUCxDQUFDLFVBQUEsSUFBSTtXQUFJLENBQUMsZ0RBQXlCLElBQUksQ0FBQyxJQUFJLENBQUM7R0FBQSxDQUFDLENBQy9DLENBQUM7OztBQUdGLE1BQUksQ0FDRCxJQUFJLENBQUMseUJBQUssbUJBQW1CLENBQUMsQ0FDOUIsTUFBTSxDQUFDLFVBQUEsSUFBSTtXQUFJLGdDQUFTLElBQUksQ0FBQztHQUFBLENBQUMsQ0FDOUIsTUFBTSxDQUFDLFVBQUEsSUFBSTtXQUFJLGdEQUF5QixJQUFJLENBQUMsSUFBSSxDQUFDO0dBQUEsQ0FBQyxDQUNuRCxNQUFNLENBQUMsVUFBQSxJQUFJLEVBQUk7QUFDZCxRQUFNLEVBQUUsR0FBRyxJQUFJLENBQUMsSUFBSSxDQUFDLFlBQVksQ0FBQyxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUM7QUFDeEMsUUFBTSxLQUFLLEdBQUcsc0NBQWUsRUFBRSxDQUFDLENBQUM7QUFDakMsU0FBSyxJQUFNLEtBQUksSUFBSSxLQUFLLEVBQUU7QUFDeEIsVUFBSSxJQUFJLENBQUMsR0FBRyxDQUFDLEtBQUksQ0FBQyxJQUFJLENBQUMsV0FBVyxDQUFDLEdBQUcsQ0FBQyxLQUFJLENBQUMsRUFBRTtBQUM1QyxlQUFPLEtBQUssQ0FBQztPQUNkO0tBQ0Y7QUFDRCxXQUFPLElBQUksQ0FBQztHQUNiLENBQUMsQ0FDRCxNQUFNLEVBQUUsQ0FBQztDQUNiOztBQUVELE1BQU0sQ0FBQyxPQUFPLEdBQUcsb0JBQW9CLENBQUMiLCJmaWxlIjoicmVtb3ZlVW51c2VkUmVxdWlyZXMuanMiLCJzb3VyY2VzQ29udGVudCI6WyIvKlxuICogQ29weXJpZ2h0IChjKSAyMDE1LXByZXNlbnQsIEZhY2Vib29rLCBJbmMuXG4gKiBBbGwgcmlnaHRzIHJlc2VydmVkLlxuICpcbiAqIFRoaXMgc291cmNlIGNvZGUgaXMgbGljZW5zZWQgdW5kZXIgdGhlIGxpY2Vuc2UgZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBpblxuICogdGhlIHJvb3QgZGlyZWN0b3J5IG9mIHRoaXMgc291cmNlIHRyZWUuXG4gKlxuICogQGZsb3dcbiAqL1xuXG5pbXBvcnQgdHlwZSB7Q29sbGVjdGlvbn0gZnJvbSAnLi4vdHlwZXMvYXN0JztcbmltcG9ydCB0eXBlIHtTb3VyY2VPcHRpb25zfSBmcm9tICcuLi9vcHRpb25zL1NvdXJjZU9wdGlvbnMnO1xuXG5pbXBvcnQgZ2V0RGVjbGFyZWRJZGVudGlmaWVycyBmcm9tICcuLi91dGlscy9nZXREZWNsYXJlZElkZW50aWZpZXJzJztcbmltcG9ydCBnZXROYW1lc0Zyb21JRCBmcm9tICcuLi91dGlscy9nZXROYW1lc0Zyb21JRCc7XG5pbXBvcnQgZ2V0Tm9uRGVjbGFyYXRpb25JZGVudGlmaWVycyBmcm9tICcuLi91dGlscy9nZXROb25EZWNsYXJhdGlvbklkZW50aWZpZXJzJztcbmltcG9ydCBoYXNPbmVSZXF1aXJlRGVjbGFyYXRpb24gZnJvbSAnLi4vdXRpbHMvaGFzT25lUmVxdWlyZURlY2xhcmF0aW9uJztcbmltcG9ydCBpc0dsb2JhbCBmcm9tICcuLi91dGlscy9pc0dsb2JhbCc7XG5pbXBvcnQganNjcyBmcm9tICdqc2NvZGVzaGlmdCc7XG5cbmZ1bmN0aW9uIHJlbW92ZVVudXNlZFJlcXVpcmVzKFxuICByb290OiBDb2xsZWN0aW9uLFxuICBvcHRpb25zOiBTb3VyY2VPcHRpb25zLFxuKTogdm9pZCB7XG4gIGNvbnN0IHVzZWQgPSBnZXROb25EZWNsYXJhdGlvbklkZW50aWZpZXJzKHJvb3QsIG9wdGlvbnMpO1xuICBjb25zdCBub25SZXF1aXJlcyA9IGdldERlY2xhcmVkSWRlbnRpZmllcnMoXG4gICAgcm9vdCxcbiAgICBvcHRpb25zLFxuICAgIFtwYXRoID0+ICFoYXNPbmVSZXF1aXJlRGVjbGFyYXRpb24ocGF0aC5ub2RlKV0sXG4gICk7XG5cbiAgLy8gUmVtb3ZlIHVudXNlZCByZXF1aXJlcy5cbiAgcm9vdFxuICAgIC5maW5kKGpzY3MuVmFyaWFibGVEZWNsYXJhdGlvbilcbiAgICAuZmlsdGVyKHBhdGggPT4gaXNHbG9iYWwocGF0aCkpXG4gICAgLmZpbHRlcihwYXRoID0+IGhhc09uZVJlcXVpcmVEZWNsYXJhdGlvbihwYXRoLm5vZGUpKVxuICAgIC5maWx0ZXIocGF0aCA9PiB7XG4gICAgICBjb25zdCBpZCA9IHBhdGgubm9kZS5kZWNsYXJhdGlvbnNbMF0uaWQ7XG4gICAgICBjb25zdCBuYW1lcyA9IGdldE5hbWVzRnJvbUlEKGlkKTtcbiAgICAgIGZvciAoY29uc3QgbmFtZSBvZiBuYW1lcykge1xuICAgICAgICBpZiAodXNlZC5oYXMobmFtZSkgJiYgIW5vblJlcXVpcmVzLmhhcyhuYW1lKSkge1xuICAgICAgICAgIHJldHVybiBmYWxzZTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgICAgcmV0dXJuIHRydWU7XG4gICAgfSlcbiAgICAucmVtb3ZlKCk7XG59XG5cbm1vZHVsZS5leHBvcnRzID0gcmVtb3ZlVW51c2VkUmVxdWlyZXM7XG4iXX0=