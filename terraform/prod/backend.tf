terraform {
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "kirillkotosky-bucket-01"
    region                      = "ru-central1"
    key                         = "prod/terraform.tfstate"
    access_key                  = "Q9PnBATtGfrhs6NURG69"
    secret_key                  = "U-B8o0TEibQcPp0x-SUUexWx0XOAs46mKgF-Y6n5"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
