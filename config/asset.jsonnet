{
  fetcher: {
    caching: {
      fetcher: {
        'error': {
          code: 5,
          message: "Asset Not Found", 
        }
      }
    }
  },

  assetStore: {
    circular: {
      directory: '/storage',
      offsetFileSizeBytes: 1024 * 1024,
      offsetCacheSize: 1000,
      dataFileSizeBytes: 100 * 1024 * 1024,
      dataAllocationChunkSizeBytes: 1048576,
      instances: [''],
    },
  },
  httpListenAddress: ':1111',
  grpcServers: [{
    listenAddresses: [':4401'],
    authenticationPolicy: { allow: {} },
  }],
  allowUpdatesForInstances: [''],
  maximumMessageSizeBytes: 16 * 1024 * 1024,
}

