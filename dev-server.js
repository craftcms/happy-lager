const webpackDevServer = require('webpack-dev-server');
const webpack = require('webpack');

const port = process.env.DEV_SERVER_PORT || 5000;

const config = require('./webpack.config.js');
config.entry.unshift("webpack-dev-server/client?http://localhost:5000/")
config.output.publicPath = `http://localhost:${port}/`

const options = {
  contentBase: './web',
  hot: true,
  host: '0.0.0.0',
  disableHostCheck: true,
  headers: {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Headers': '*',
  },
};

webpackDevServer.addDevServerEntrypoints(config, options);
const compiler = webpack(config);
const server = new webpackDevServer(compiler, options);

server.listen(port, '0.0.0.0', () => {
  console.log('Dev server listening on port 5000');
});

