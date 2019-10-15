# Goal
Be able to test printCurrentDate function.
# Code to test
    public void PrintCurrentDate()
    {
      Console.WriteLine(DateTime.Now);
    }

### Example of Spy

[Test]
public void should_send_an_email() {
    var emailSender = Substitute.For<EmailSender>();       
    var userRegistration = new UserRegistration(emailSender);

    UserRegistration.register("an@email.com", "validPassword");

    emailSender.Received().Send(Arg.Any<object>());
}

### Example of Stub    

[Test]
public void should_success_when_password_is_valid() {
    var passwordValidator = Substitute.For<PasswordValidator>();
    passwordValidator.isValid(‘validPassword’).Returns(true);
    var userRegistration = 
 		new UserRegistration(passwordValidator);

    bool success = userRegistration.register("an@email.com","validPassword");

    Assert.That(success, Is.EqualTo(true)); 
}


# Learnings
- Dependency injection.
- How to build a Mock and Stub manually.
- How to use a mocking library.
