# User Registration kata

## Goal
Create the functionality using Unit tests and test doubles.

## Requirements
First iteration requirements:
- The input of the method has an email and a password.
- Validate that the user is persisted.
- The userId is randomly generated.

Second iteration requirements:
- Cannot exist two users with the same email.
- Password should meet security requirements.
  - Has more than 8 characters.
  - Contains an underscore.
- Sends the confirmation email when user is registered

## Remember
- Write a failing test.
- Write the minimum amount of code to make it pass.
- Do not forget to refactor the code.

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


## Authors
Luis Rovirosa [@luisrovirosa](https://www.twitter.com/luisrovirosa)

Jordi Anguela [@jordianguela](https://www.twitter.com/jordianguela)
