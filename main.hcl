resource "lab" "main" {
  title       = "Test light theme 2"
  description = "This is the Skeleton Lab.\nYou can use this as a minimal starting point for developing labs.\n"

  # timelimit and idle are both required on every lab.
  settings {
    theme = "modern-dark"

    timelimit {
      duration = "1h"
    }

    idle {
      enabled = true
      timeout = "15m"
    }
  }

  layout = resource.layout.single_panel

  content {
    chapter "__default" {
      title = "Default"

      page "new-page" {
        reference = resource.page.new-page
        title     = "new page"
      }
    }
  }
}
