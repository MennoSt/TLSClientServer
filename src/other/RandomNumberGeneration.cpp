#include <iostream>
#include <ctime>

#include <openssl/rand.h>

// Insecure random number generators
void generateRandomNumber() {
    int random_number = std::rand() % 10 + 1;
    std::cout << random_number << std::endl;
}

void generateRandomNumberSeeded() {
    static bool seeded = false;
    if (!seeded) {
        std::srand(std::time(0));
        seeded = true;
    }
    
    int random_number = std::rand() % 10 + 1;
    std::cout << random_number << std::endl;
}

// Secure cryptographic random number generator
void generateRandomNumberCrypto() {
    unsigned char random_byte {};
    RAND_bytes(&random_byte, sizeof(random_byte));
    int random_number = (random_byte % 10) + 1;
    std::cout << random_number << std::endl;
}

int main() {  
    std::cout << "std::rand without seed"<< std::endl;
    for (int i =0; i < 10; i++) {
        generateRandomNumber();
    }
    std::cout << std::endl;

    std::cout << "std::rand seeded with time:"<< std::endl;
    for (int i =0; i < 10; i++) {
        generateRandomNumberSeeded();
    }
    std::cout << std::endl;
    
    std::cout << "cryptographic random number generator:"<< std::endl;
    for (int i =0; i < 10; i++) {
        generateRandomNumberCrypto();
    }
}