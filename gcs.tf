resource "google_storage_bucket" "auto-expire" {
  name          = "mishikawan-no-public-access-bucket"
  location      = "US"
  force_destroy = true
  public_access_prevention = "enforced"
}
