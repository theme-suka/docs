/* hexo-generator-search
 * author: PaicHyperionDev
 * license: MIT
 */

var pathFn = require('path');

var config_path = 'search.json';

if (pathFn.extname(config_path) == '.json') {
    hexo.extend.generator.register('json', require('./json_generator'));
}