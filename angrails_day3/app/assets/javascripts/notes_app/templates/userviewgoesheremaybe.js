<div data-ng-controller="UserCtrl">
  <form name="newUserForm" data-ng-show="!isLoggedIn() && createNewUser">
    <label>Email</label>:
    <input type="text" required data-ng-model="newUser.email"></br>
    <label>Password</label>
    <input type="password" required data-ng-model="newUser.password"></br>
    <label>Confirmation</lable>
    <input type="password" required data-ng-model="newUser.password_confirmation"></br>
    <button data-ng-disabled="newUserForm.$invalid" data-ng-click="create(newUser)">Create User</button>
  </form>

  <form name="loginForm" data-ng-show="!isLoggedIn() && !createNewUser">
    <label>Email</label>
    <input type="text" required data-ng-model="user.email"></br>
    <label>Password</label>
    <input type="password" required data-ng-model="user.password"></br>
    <button data-ng-disabled="loginForm.$invalid" data-ng-click="signIn(user)">Sign In</button>
  </form>
  <button data-ng-click="createNewUser = !createNewUser">{{createNewUser ? 'Sign in to existing user' : 'Create new user' }}</button>


    .....
