function ng2 () {
  touch index.html
  echo "<html>
<head>
  <title>Angular 2 QuickStart JS</title>
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
  <link rel=\"stylesheet\" href=\"styles.css\">

  <!-- IE required polyfill -->
  <script src=\"node_modules/core-js/client/shim.min.js\"></script>

  <script src=\"node_modules/zone.js/dist/zone.js\"></script>
  <script src=\"node_modules/reflect-metadata/Reflect.js\"></script>

  <script src=\"node_modules/rxjs/bundles/Rx.umd.js\"></script>
  <script src=\"node_modules/@angular/core/bundles/core.umd.js\"></script>
  <script src=\"node_modules/@angular/common/bundles/common.umd.js\"></script>
  <script src=\"node_modules/@angular/compiler/bundles/compiler.umd.js\"></script>
  <script src=\"node_modules/@angular/platform-browser/bundles/platform-browser.umd.js\"></script>
  <script src=\"node_modules/@angular/platform-browser-dynamic/bundles/platform-browser-dynamic.umd.js\"></script>

  <script src='app/app.component.js'></script>
  <script src='app/main.js'></script>

</head>

<body>
  <my-app>Loading...</my-app>
</body>

</html>" >> index.html
  touch package.json
  echo "{
  \"name\": \"angular2-quickstart\",
  \"version\": \"1.0.0\",
  \"scripts\": {
    \"start\": \"npm run lite\",
    \"lite\": \"lite-server\"
  },
  \"license\": \"ISC\",
  \"dependencies\": {
    \"@angular/common\": \"2.0.0-rc.4\",
    \"@angular/compiler\": \"2.0.0-rc.4\",
    \"@angular/core\": \"2.0.0-rc.4\",
    \"@angular/forms\": \"0.2.0\",
    \"@angular/http\": \"2.0.0-rc.4\",
    \"@angular/platform-browser\": \"2.0.0-rc.4\",
    \"@angular/platform-browser-dynamic\": \"2.0.0-rc.4\",
    \"@angular/router\": \"3.0.0-beta.1\",
    \"@angular/router-deprecated\": \"2.0.0-rc.2\",
    \"@angular/upgrade\": \"2.0.0-rc.4\",

    \"core-js\": \"^2.4.0\",
    \"reflect-metadata\": \"0.1.3\",
    \"rxjs\": \"5.0.0-beta.6\",
    \"zone.js\": \"0.6.12\",

    \"angular2-in-memory-web-api\": \"0.0.14\",
    \"bootstrap\": \"^3.3.6\"
  },
  \"devDependencies\": {
    \"concurrently\": \"^2.0.0\",
    \"lite-server\": \"^2.2.0\"
  }
}" >> package.json
      mkdir app && touch app/app.component.js app/main.js
      echo "(function(app) {
        app.AppComponent =
          ng.core.Component({
            selector: 'my-app',
            template: '<h1>Jello World</h1>'
          })
          .Class({
            constructor: function() {

            }
          })
        })(window.app || (window.app = {}));" >> app/app.component.js
      echo "(function(app) {
              document.addEventListener('DOMContentLoaded', function() {
                ng.platformBrowserDynamic.bootstrap(app.AppComponent);
              });
            })(window.app || (window.app = {}));" >> app/main.js
      touch .gitignore
      echo "node_modules" >> .gitignore
      echo "npm-debug.log" >> .gitignore
      npm install
      git init
      git add .
      git commit -m "🔥ng2 quickStart🔥"
      npm start
}
