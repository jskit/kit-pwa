<!DOCTYPE html>
<html lang="en" style="font-size: 100px;">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>kit-start</title>
    <link rel="icon" type="image/png" sizes="32x32" href="<%= htmlWebpackPlugin.files.publicPath %>static/img/icons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<%= htmlWebpackPlugin.files.publicPath %>static/img/icons/favicon-16x16.png">
    <!--[if IE]><link rel="shortcut icon" href="/static/img/icons/favicon.ico"><![endif]-->
    <!-- Add to home screen for Android and modern mobile browsers -->
    <link rel="manifest" href="<%= htmlWebpackPlugin.files.publicPath %>static/manifest.json">
    <meta name="theme-color" content="#4DBA87">

    <!-- Add to home screen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="kit-start">
    <link rel="apple-touch-icon" href="<%= htmlWebpackPlugin.files.publicPath %>static/img/icons/apple-touch-icon-152x152.png">
    <!-- Add to home screen for Windows -->
    <meta name="msapplication-TileImage" content="<%= htmlWebpackPlugin.files.publicPath %>static/img/icons/msapplication-icon-144x144.png">
    <meta name="msapplication-TileColor" content="#000000">
    <% for (var chunk of webpack.chunks) {
        for (var file of chunk.files) {
          if (file.match(/\.(js|css)$/)) { %>
    <link rel="<%= chunk.initial?'preload':'prefetch' %>" href="<%= htmlWebpackPlugin.files.publicPath + file %>" as="<%= file.match(/\.css$/)?'style':'script' %>"><% }}} %>
  </head>
  <body>
    <noscript>
      This is your fallback content in case JavaScript fails to load.
    </noscript>
    <div id="root"></div>
    <!-- Todo: only include in production -->
    <%= htmlWebpackPlugin.options.serviceWorkerLoader %>
    <!-- built files will be auto injected -->
  </body>
</html>
