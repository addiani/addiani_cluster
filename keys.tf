resource "aws_key_pair" "kubernetes-saidcluster-com-3bab0dd85293ba38ff40febb6a920870" {
  key_name   = "kubernetes.saidcluster.com-3b:ab:0d:d8:52:93:ba:38:ff:40:fe:bb:6a:92:08:70"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.saidcluster.com-3bab0dd85293ba38ff40febb6a920870_public_key")}"
}
