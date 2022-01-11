source = ["./gitleaks","./gitleaks-arm64"]
bundle_id = "com.vinothsparrow.gitleaks"

apple_id {
  username = "@env:AC_EMAIL"
  password = "@env:AC_PASSWORD"
}

sign {
  application_identity = "Developer ID Application: VINOTH KUMAR"
}

zip {
  output_path = "gitleaks.zip"
}