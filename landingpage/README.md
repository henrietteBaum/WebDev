# Startseite (Landingpage)

## Adresse
[http://start.localhost](http://start.localhost)

## Inhalt
- Verlinkt alle Projekte in einer übersichtlichen HTML-Seite
- Styling über `styles.css`

## Aufbau
```text
landingpage/
├── public/
│   ├── index.html
│   └── styles.css
└── docker-compose.yaml
``` 



## Die grundlegende HTML-Struktur

```html
</head>
<body>
  <div class="container">
  <h1>WebDev-Projekte</h1>
  <h2>Webentwicklung im Container</h2>
  <ul class="project-list">
    <li><a href="http://wp1.localhost" target="_blank">WordPress 1</a></li>
    <li><a href="http://wp2.localhost" target="_blank">WordPress 2</a></li>
    <li><a href="http://site.localhost" target="_blank">Static Website</a></li>
    <li><a href="http://drupal1.localhost" target="_blank">Drupal 1</a></li>
    <li><a href="http://joomla1.localhost" target="_blank">Joomla 1</a></li>
    <li><a href="http://localhost:8080/dashboard" target="_blank">Traefik Dashboard</a></li>
    <li><a href="http://pma.localhost" target="_blank">phpMyAdmin</a></li>
  </ul>
  </div>
</body>
</html>
```

## CSS

```css
body {
  background: #1f273f;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  margin: 0;
  padding: 0;
  color: #f0f0f0;
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100vh;
}

.container {
  text-align: center;
}

h1 {
  color: cornflowerblue;
  margin-bottom: 2rem;
}

ul.project-list {
  list-style: none;
  padding: 0;
}

.project-list li {
  margin: 1rem 0;
}

.project-list a {
  color: cornflowerblue;
  text-decoration: none;
  font-size: 1.25rem;
  transition: color 0.3s ease;
}

.project-list a:hover {
  color: orangered;
}

.project-list a:focus {
  text-decoration: underline dashed orange;
}



```
