const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js('resources/js/app.js', 'public/js')
   .sass('resources/sass/app.scss', 'public/css');
   mix.styles([
      'resources/css/animate.css',
      'resources/css/bootstrap.min.css',
      'resources/css/font-awesome.min.css',
      'resources/css/meanmenu.min.css',
      'resources/css/jquery-ui-slider.css',
      'resources/css/jquery.simpleGallery.css',
      'resources/css/jquery.simpleLens.css',
      'resources/css/nivo-slider.css',
      'resources/css/main.css',
      'resources/css/normalize.css',
      'resources/css/owl.carousel.css',
      'resources/css/owl.theme.css',
      'resources/css/owl.transitions.css',
      'resources/css/owl.responsive.css',
      'resources/css/owl.style.css',

  ], 'public/css/style.css');
