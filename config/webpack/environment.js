const { environment } = require('@rails/webpacker')

environment.loaders.append('expose', {
    test: require.resolve('jquery'),
    use: [
        {
            loader: 'expose-loader',
            options: 'jQuery',
        },
        {
            loader: 'expose-loader',
            options: '$',
        },
    ],
});

module.exports = environment
