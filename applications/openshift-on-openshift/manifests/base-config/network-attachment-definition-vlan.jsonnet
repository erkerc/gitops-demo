local namespace = std.extVar('namespace');

{
  "apiVersion": "k8s.cni.cncf.io/v1",
  "kind": "NetworkAttachmentDefinition",
  "metadata": {
    "name": "localnet-vlan150"
  },
  "spec": {
    "config": std.toString({
      "cniVersion": "0.3.1",
      "name": "localnet-vlan150",
      "type": "ovn-k8s-cni-overlay",
      "topology": "localnet",
      "vlanID": 150,
      "mtu": 1500,
      "netAttachDefName": namespace + "/localnet-vlan150"
    })
  }
}
