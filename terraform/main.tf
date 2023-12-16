module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "tanmoycoc44+sapnpp@gmail.com"
    AccountName               = "SAP-NP-aft"
    ManagedOrganizationalUnit = "SAP-AFT"
    SSOUserEmail              = "tanmoycoc44+sapnpp@gmail.com"
    SSOUserFirstName          = "tanmoy"
    SSOUserLastName           = "mazumder"
  }

  account_tags = {
    "Project" = "SAP-AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
