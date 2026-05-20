module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0"

  name               = "${local.name}-eks"
  kubernetes_version = "1.33"

  vpc_id     				   = module.vpc.vpc_id
  subnet_ids 				   = module.vpc.private_subnets
  endpoint_public_access 		   = true
  enable_cluster_creator_admin_permissions = true

  addons = {
    vpc-cni = {
      before_compute = true
    }

    kube-proxy = {
      before_compute = true
    }

    coredns = {
      before_compute = true
    }
  }

  eks_managed_node_groups = {
    default = {
      instance_types = ["t3.small"]
      ami_type       = "AL2023_x86_64_STANDARD"

      min_size     = 1
      max_size     = 2
      desired_size = 1
    }
  }

  tags = local.tags
}
