#include <gtest/gtest.h>

class ContextTests : public ::testing::Test {
protected:
ContextTests()
    {

    }

};

TEST_F(ContextTests, testValidPassportString) {
    bool value = true;
    EXPECT_TRUE(value);
}