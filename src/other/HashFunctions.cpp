#include <iostream>
#include <openssl/sha.h>

// Insecure hash function
unsigned long djb2_hash(const std::string& str) {
  unsigned long hash = 5381;
  for (char c : str) {
    hash = ((hash << 5) + hash) + c; // hash * 33 + c
  }
  std::cout << std::hex << hash << std::endl;
  return hash;
}

// Secure cryptographic hash function
void sha256Hash(std::string message) {
    unsigned char digest[SHA256_DIGEST_LENGTH];
    SHA256((unsigned char*)message.c_str(), message.length(), digest);
    
    for (int i = 0; i < SHA256_DIGEST_LENGTH; i++) {
        printf("%02x", digest[i]);
    }
    printf("\n");
}

int main() {
    std::string message = "Hello";
    std::string message2 = "Helln";

    djb2_hash(message);
    djb2_hash(message2);

    sha256Hash(message);
    sha256Hash(message2);

    return 0;
}