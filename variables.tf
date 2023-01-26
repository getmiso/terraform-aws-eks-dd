variable "enabled" {
  type        = bool
  default     = true
  description = "Variable indicating whether deployment is enabled"
}

variable "helm_create_namespace" {
  type        = bool
  default     = true
  description = "Create the namespace if it does not yet exist"
}

variable "helm_chart_name" {
  type        = string
  default     = "datadog"
  description = "Helm chart name to be installed"
}

variable "helm_chart_version" {
  type        = string
  default     = "4.29.0"
  description = "Version of the Helm chart"
}

variable "helm_release_name" {
  type        = string
  default     = "datadog-operator"
  description = "Helm release name"
}

variable "helm_repo_url" {
  type        = string
  default     = "https://helm.datadoghq.com"
  description = "Helm repository"
}

variable "namespace" {
  type        = string
  default     = "default"
  description = "The namespace to install the release into. Defaults to default."
}

variable "settings" {
  type        = map(any)
  default     = {}
  description = "Additional settings which will be passed to the Helm chart values, see https://artifacthub.io/packages/helm/datadog/datadog-operator"
}

variable "values" {
  type        = string
  default     = ""
  description = "Additional yaml encoded values which will be passed to the Helm chart."
}
