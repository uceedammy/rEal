provider "google" {
  project     = "my-k8s-project-445604"
  region      = "us-central1"
}

resource "google_container_cluster" "k8s_cluster" {
  name     = "primary-k8s-cluster"
  location = "us-central1"
  initial_node_count = 1
  node_config {
    machine_type = "e2-medium"
  }
}

output "kubeconfig" {
  value = google_container_cluster.k8s_cluster.endpoint
}
terraform { 
  cloud { 
    
    organization = "silverink" 

    workspaces { 
      name = "kube-infra" 
    } 
  } 
}