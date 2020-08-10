local common = import 'common.libsonnet';

{
  blobstore: {
    contentAddressableStorage: {
      circular: {
        directory: '/storage-cas',
        offsetFileSizeBytes: 16 * 1024 * 1024,
        offsetCacheSize: 10000,
        dataFileSizeBytes: 10 * 1024 * 1024 * 1024,
        dataAllocationChunkSizeBytes: 16 * 1024 * 1024,
        instances: ['', 'bb-event-service', 'remote-execution'],
      },
    },
    actionCache: {
      circular: {
        directory: '/storage-ac',
        offsetFileSizeBytes: 1024 * 1024,
        offsetCacheSize: 1000,
        dataFileSizeBytes: 100 * 1024 * 1024,
        dataAllocationChunkSizeBytes: 1048576,
        instances: ['', 'bb-event-service', 'remote-execution'],
      },
    },
  },
  httpListenAddress: ':6982',
  grpcServers: [{
    listenAddresses: [':8982'],
    authenticationPolicy: { allow: {} },
  }],
  allowAcUpdatesForInstances: ['', 'bb-event-service', 'remote-execution'],
  maximumMessageSizeBytes: common.maximumMessageSizeBytes,
}
