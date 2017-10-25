const webpack = require('webpack');
const process = require('process');
const os = require('os');

// Goal: Add Vue in an existing project
//   - Can be written in Coffeescript

var config = {
    entry: {
        main: './src/main.coffee',
    },
    output: {
        filename: './dist/js/[name].js',
    },
    module: {
        rules: [
            { test: /\.coffee$/, use: 'coffee-loader' },
            { test: /\.vue$/, use: 'vue' },
        ]
    },
    resolve: {
        alias: {
            vue: 'vue/dist/vue.js' // We're using the runtime-only build of Vue
        }
    },
    plugins: [],
};

if (process.env.PROD) {
    config.devtool = 'hidden-source-map';
    config.plugins.push(
        new webpack.DefinePlugin({
            'process.env': {
                NODE_ENV: JSON.stringify('production')
            }
        }),
        new webpack.optimize.UglifyJsPlugin({
            sourceMap: true,
            minimize: true,
            compress: {
                warning: true
            },
            parallel: {
                cache: true,
                workers: os.cpus().length
            },
            mangle: {
                except: ['$super', '$', 'exports', 'require']
            },
            output: {
                comments: false
            }
        })
    );
}

module.exports = config;
