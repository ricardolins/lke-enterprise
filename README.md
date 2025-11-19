Clusters LKE Enterprise vêm automaticamente com uma VPC interna.
Usada para todo o tráfego interno do cluster e comunicação com NodeBalancers.

Todo tráfego entre pods e nós ocorre pela interface da VPC.
Nada passa pela rede pública para comunicação intra-cluster.

Endereçamento dos nós (workers):

Cada nó recebe um IP do range 10.0.0.0/8.

Endereçamento dos Pods:

Cada pod recebe um /24 exclusivo.

Os ranges de pods vêm de 10.248.0.0/14.

Sub-rede reservada:

10.255.255.0/24 é reservada para uso interno do cluster.

NodeBalancers precisam ser configurados para usar a mesma VPC.
Essencial para o tráfego entre LB → Nodes funcionar corretamente.

A VPC interna aparece no painel como uma VPC normal.
Pode ser visualizada e modificada, mas NÃO recomendado alterar.

Alterações na VPC podem quebrar a rede do cluster.
Pode causar indisponibilidade de workloads e acesso aos aplicativos