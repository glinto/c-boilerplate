#include "CppUTest/TestHarness.h"

extern "C"
{
	#include "../src/splash.h"
}

TEST_GROUP(FirstTestGroup)
{
};

TEST(FirstTestGroup, FirstTest)
{
    const char* s = splash();
    STRCMP_EQUAL(s, "Hello world Splash");
}
