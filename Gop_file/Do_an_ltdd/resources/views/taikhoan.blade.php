<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Stacked form</h2>
      <form action="{{route('them_tai_khoan')}}"method="POST">
            <div class="form-group">
              <input  class="form-control"  placeholder="tên tai khoan" name="TenKH">
            </div>
            <div class="form-group">
              <input  class="form-control"  placeholder="hinh anh" name="imgTK">
            </div> 
            <div class="form-group">
              <input  class="form-control"  placeholder="ngay sinh" name="Ngaysinh">
            </div>
             <div class="form-group">
              <input  class="form-control"  placeholder="email" name="email">
            </div>
           <div class="form-group">
              <input  class="form-control"  placeholder="password" name="password">
            </div>
            <div class="mb-3">
                    <select class="form-control py-3" name="gioitinh" >
                        <option>false</option>
                        <option>true</option>
                    </select>
            </div>
            
           
        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
</div>

</body>
</html>
