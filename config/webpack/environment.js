const { environment } = require('@rails/webpacker')

// ***** 以下を追加 *****
const webpack = require('webpack')
environment.plugins.append('Provide', new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery'
}))
// ***** 以上を追加 *****

module.exports = environment
