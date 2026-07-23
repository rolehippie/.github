variable "organization" {
  description = "Name of the managed organization"
  type        = string
  default     = "rolehippie"
}

variable "members" {
  description = "List of members to manage"
  type = list(object({
    name = string
    role = string
  }))
  default = [
    {
      name = "bothippie"
      role = "admin"
    },
    {
      name = "tboerger"
      role = "admin"
    },
  ]
}

variable "teams" {
  description = "List of teams to manage"
  type = list(object({
    name       = string
    privacy    = string
    permission = string
    members = list(object({
      name = string
      role = string
    }))
  }))
  default = [
    {
      name       = "admins"
      privacy    = "closed"
      permission = "admin"
      members = [
        {
          name = "bothippie"
          role = "maintainer"
        },
        {
          name = "tboerger"
          role = "maintainer"
        },
      ]
    },
    {
      name       = "bots"
      privacy    = "closed"
      permission = "admin"
      members = [
        {
          name = "bothippie"
          role = "maintainer"
        },
      ]
    },
    {
      name       = "members"
      privacy    = "closed"
      permission = "maintain"
      members = [
        {
          name = "tboerger"
          role = "maintainer"
        },
      ]
    },
  ]
}
