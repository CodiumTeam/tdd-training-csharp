using NSubstitute;
using UserRegistration;

namespace test;

public class RegisterUserTest
{
    [Fact]
    public void RenameMe()
    {
        new RegisterUser();
        Substitute.For<RegisterUser>();

        Assert.Equal("", "");
    }
}