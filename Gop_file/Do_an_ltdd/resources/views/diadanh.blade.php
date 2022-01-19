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
  <form action="{{route('them_dia_danh')}}"method="POST">
    <div class="form-group">
      <input  class="form-control" placeholder="tên địa danh" name="tenDD">
    </div>
    <div class="form-group">
      <input  class="form-control"  placeholder="địa chỉ" name="diachi">
    </div> <div class="form-group">
      <input  class="form-control"  placeholder="mô tả" name="mota">
    </div>
    <div class="form-group">
      <input  class="form-control"  placeholder="hình ảnh" name="imgDD">
    </div>
    <div class="form-group">
      <input  class="form-control"  placeholder="đánh giá" name="danhgia">
    </div>
    <div class="form-group">
      <input  class="form-control"  placeholder="lượt đánh giá" name="Luotdanhgia">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

</body>
</html>
