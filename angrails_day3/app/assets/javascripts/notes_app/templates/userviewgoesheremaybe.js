<div data-ng-controller="UserCtrl">
  <form name="newUserForm" data-ng-hide="isLoggedIn()">
    <label>Email</label>:
    <input type="text" required data-ng-model="newUser.email"></br>
    <label>Password</label>
    <input type="password" required data-ng-model="newUser.password"></br>
    <label>Confirmation</lable>
    <input type="password" required data-ng-model="newUser.password_confirmation"></br>
    <button data-ng-disabled=""

