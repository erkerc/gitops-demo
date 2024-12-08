local namespace = std.extVar('namespace');

{
  "apiVersion": "k8s.cni.cncf.io/v1",
  "kind": "NetworkAttachmentDefinition",
  "metadata": {
    "name": "localnet-172-16-103"
  },
  "spec": {
    "config": std.toString({
      "cniVersion": "0.3.1",
      "name": "localnet-172.16.103",
      "type": "ovn-k8s-cni-overlay",
      "topology": "localnet",
      "netAttachDefName": namespace + "/localnet-172-16-103"
    })
  }
}
