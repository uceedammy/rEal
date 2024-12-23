provider "google" {
  project     = "my-k8s-project-445604"
  region      = "us-central1"
}

resource "google_container_cluster" "k8s_cluster" {
  name     = "primary-k8s-cluster"
  location = "us-central1"

  initial_node_count = 1  # Reduce the initial node count
  node_config {
    machine_type = "e2-medium"  # Use a smaller machine type to lower resource usage
    disk_size_gb = 100  # Adjust disk size if needed
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