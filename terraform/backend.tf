terraform {
  backend "gcs" {
    bucket = "gen-lang-client-0081345546-tfstate"
    prefix = "terraform/state"
  }
}
