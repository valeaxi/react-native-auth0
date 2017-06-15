if (process.platform === 'win32') {
  console.error('Must be run on a Unix OS');
  exit(1);
}

var library = require('../package.json');
var execSync = require('child_process').execSync;
var fs = require('fs');

execSync('npm run jsdoc:generate', {stdio: 'inherit'});
if (fs.existsSync('docs')) {
  execSync('rm -r docs', {stdio: 'inherit'});
}
execSync(`mv out/react-native-auth0/${library.version}/ docs`, {stdio: 'inherit'});
