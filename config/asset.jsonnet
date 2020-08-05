{
  contentAddressableStorage: {
    'error': {
      code: 1,  
    },
  },
  referenceStore: {
    circular: {
      directory: '/storage',
      offsetFileSizeBytes: 1024 * 1024,
      offsetCacheSize: 1000,
      dataFileSizeBytes: 100 * 1024 * 1024,
      dataAllocationChunkSizeBytes: 1048576,
      instances: ['bb-event-service', 'remote-execution'],
    },
  },
  httpListenAddress: ':7982',
  grpcServers: [{
    listenAddresses: [':5502'],
    authenticationPolicy: { allow: {} },
  }],
  allowUpdatesForInstances: [''],
  maximumMessageSizeBytes: 16 * 1024 * 1024 * 1024,
}
