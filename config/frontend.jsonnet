local common = import 'common.libsonnet';

{
  blobstore: common.blobstore,
  httpListenAddress: ':6980',
  grpcServers: [{
    listenAddresses: [':8980'],
    authenticationPolicy: { allow: {} },
  }],
  schedulers: {
    'remote-execution': { address: 'scheduler:8984' },
    '': {address: 'scheduler:8984' },
  },
  maximumMessageSizeBytes: common.maximumMessageSizeBytes,
}
