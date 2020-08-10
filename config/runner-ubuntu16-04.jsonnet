{
  buildDirectoryPath: '/worker/build',
  chrootIntoInputRoot: true,
  grpcServers: [{
    listenPaths: ['/worker/runner'],
    authenticationPolicy: { allow: {} },
  }],
}
