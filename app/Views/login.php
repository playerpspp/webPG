<?= view("layout/header") ?>

<div class="unix-login">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="login-content">
                    <div class="login-form">
                        <h4>Login Playground Konoha</h4>
                        <?php if(!empty($error)) { 
                        implode('', $errors->all('<div style="color: red;">:message</div>')); 
                        } ?>
                        <form action="/home/aksi_login" method="POST">
                            <div class="form-group">
                                <label>Username :</label>
                                <input type="text" id="username" name="username" class="form-control" placeholder="Username">
                            </div>
                            <div class="form-group">
                                <label>Password :</label>
                                <input type="password" id="password" name="password" class="form-control" placeholder="Password">
                            </div>
                           
                          <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Login</button>
                      </form>
                  </div>
              </div>
          </div>
      </div>
  </div>
</div>

<?= view('layout/footer') ?>