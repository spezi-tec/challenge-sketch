const path = require('path');

// vue.config.js
module.exports = {
  lintOnSave: true,
  devServer: {
    proxy: process.env.APP_VUE_BACK_SERVER || 'http://back:3000',
    disableHostCheck: true,
  }
};
