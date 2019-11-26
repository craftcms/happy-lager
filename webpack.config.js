const path = require('path')
const CleanWebpackPlugin = require('clean-webpack-plugin')
const ManifestPlugin = require('webpack-manifest-plugin')
const TerserJSPlugin = require('terser-webpack-plugin')
const MiniCssExtractPlugin = require('mini-css-extract-plugin')
const OptimizeCSSAssetsPlugin = require('optimize-css-assets-webpack-plugin')
const BundleAnalyzerPlugin = require('webpack-bundle-analyzer').BundleAnalyzerPlugin

const devMode = process.env.NODE_ENV !== 'production'

const filePublicPath = devMode ? '/' : '/assets/build/'

const config = {
  mode: process.env.NODE_ENV || "development",
  devtool: 'source-map',
  entry: [path.join(__dirname, "web/assets/src/js/main.js")],
  output: {
    path: path.resolve(__dirname, "web/assets/build"),
    publicPath: filePublicPath,
    filename: devMode ? "js/[name].js" : "js/[name].[hash].js",
  },
  module: {
    rules: [
      {
        test: /\.vue$/,
        loader: 'vue-loader',
      },
      {
        test: /\.js$/,
        loader: 'babel-loader',
        options: {
          plugins: [
            '@babel/plugin-transform-object-assign',
            '@babel/plugin-proposal-class-properties',
            '@babel/plugin-proposal-export-default-from',
            '@babel/plugin-syntax-dynamic-import',
          ],
        },
      },
      {
        test: /\.(js|vue)$/,
        enforce: 'pre',
        exclude: /node_modules/,
        loader: 'eslint-loader',
      },
      {
        test: /\.(png|jpe?g|gif|svg)$/,
        use: [
          {
            loader: 'file-loader',
            options: {
              outputPath: 'images',
              publicPath: path.join(filePublicPath, 'images'),
              name(file) {
                if (process.env.NODE_ENV === 'development') {
                  return '[name].[ext]';
                }

                return '[hash].[ext]';
              },
            },
          },
        ],
      },
      {
        test: /\.svg$/,
        use: [
          {
            loader: 'file-loader',
            options: {
              outputPath: 'svg',
              publicPath: path.join(filePublicPath, 'svg'),
              name() {
                if (process.env.NODE_ENV === 'development') {
                  return '[name].[ext]';
                }
                return '[hash].[ext]';
              },
            },
          },
        ],
      },
      {
        test: /\.(eot|ttf|woff2?)$/,
        use: [
          {
            loader: 'file-loader',
            options: {
              outputPath: 'fonts',
              publicPath: path.join(filePublicPath, 'fonts'),
              name() {
                if (process.env.NODE_ENV === 'development') {
                  return '[name].[ext]';
                }
                return '[hash].[ext]';
              },
            },
          },
        ],
      },
      {
        test: /\.(sa|sc|c)ss$/,
        use: [
          {
            loader: MiniCssExtractPlugin.loader,
            options: {
              hmr: process.env.NODE_ENV === 'development',
            },
          },
          'css-loader',
          'sass-loader',
        ],
      },
    ],
  },
  resolve: {
    extensions: ['*', '.js', '.json'],
  },
  plugins: [
    new CleanWebpackPlugin(),
    new MiniCssExtractPlugin({
      // Options similar to the same options in webpackOptions.output
      // both options are optional
      filename: devMode ? 'css/[name].css' : 'css/[name].[hash].css',
      chunkFilename: devMode ? 'css/[id].css' : 'css/[id].[hash].css',
    }),
    new ManifestPlugin({
      filter (f) {
        return !f.isModuleAsset
      }
    }),
    new BundleAnalyzerPlugin({
      analyzerMode: devMode ? 'server' : 'static',
      analyzerPort: 8889,
    }),
  ],
  optimization: {
    runtimeChunk: true,
    splitChunks: {
      chunks: 'all',
      minSize: 30000,
      maxSize: 0,
      minChunks: 1,
      maxAsyncRequests: 5,
      maxInitialRequests: 3,
      automaticNameDelimiter: '~',
      name: true,
      cacheGroups: {
        vendors: {
          test: /[\\/]node_modules[\\/]/,
          priority: -10
        },
        default: {
          minChunks: 2,
          priority: -20,
          reuseExistingChunk: true
        }
      }
    }
  }
}

if (!devMode) {
  config.optimization.minimizer = [new TerserJSPlugin({}), new OptimizeCSSAssetsPlugin({})]
}

module.exports = config


