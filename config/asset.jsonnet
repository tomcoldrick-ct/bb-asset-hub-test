{
  fetcher: {
    actionCache: {
      fetcher: {
        'error': {
          code: 5,
          message: "Asset Not Found",
        },
      },
      actionCache: {
       address: "frontend:8980",
      },
    },
  },
  pusher: {
    actionCache: {
      pusher: {
        'error': {
          code: 0,
          message: "Pushed through to last point",
        },
      },
      actionCache: {
        address: "frontend:8980",
      },
    },
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

