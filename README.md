# Projeto Zdebts API

'Este projeto tem como finalidade aplicar estudos feitos sobre, Dart para Backend e Clean Architecture'.

```dart
 // For Google Cloud Run, set _hostname to '0.0.0.0'.
  const _hostname = 'localhost';
  const _port = '8080';
  final _app = Router();

  //Bindings Routes
  BindingRoutes.buildAllRoutes(_app);

  //Start Server Listening
  var port = int.tryParse(_port);
  var server = await io.serve(_app.call, _hostname, port);
  print('Serving at http://${server.address.host}:${server.port}');
```

## Simulate a hosted environment on your own machine

You can run this function example on your own machine using Docker to simulate
running in a hosted environment.

```shell
$ docker build -t zdebts .
...

$ docker run -it -p 8080:8080 --name app zdebts
Listening on :8080
```

From another terminal:

```shell
curl http://localhost:8080
Bem vindo!
```

If you're curious about the size of the image you created, enter:

```shell
$ docker image ls zdebts
REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
zdebts        latest    3f23c737877b   1 minute ago     11.6MB
```

## Clean up

When finished, clean up by entering:

```shell
docker rm -f app        # remove the container
docker image rm zdebts   # remove the image
```
