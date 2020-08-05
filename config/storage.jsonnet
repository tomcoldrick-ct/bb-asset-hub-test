{
  blobstore: {
    contentAddressableStorage: {
      circular: {
        directory: '/cas',
        offsetFileSizeBytes: 16 * 1024 * 1024,
        offsetCacheSize: 10000,
        dataFileSizeBytes: 10 * 1024 * 1024 * 1024,
        dataAllocationChunkSizeBytes: 16 * 1024 * 1024,
        instances: [''],
      },
    },
    actionCache: {
      circular: {
        directory: '/ac',
        offsetFileSizeBytes: 1024 * 1024,
        offsetCacheSize: 1000,
        dataFileSizeBytes: 100 * 1024 * 1024,
        dataAllocationChunkSizeBytes: 1048576,
        instances: ['bb-event-service', 'remote-execution', ''],
      },
    },
  },
  httpListenAddress: ':7981',
  grpcServers: [{
    listenAddresses: [':5501'],
    authenticationPolicy: { allow: {} },
  }],
  allowAcUpdatesForInstances: ['bb-event-service', 'remote-execution', ''],
  maximumMessageSizeBytes: 16 * 1024 * 1024 * 1024,
}
