<form action="<?= $SITE_URL . '/cart/invoice.php' ?>" method="POST" class="col-6 m-auto" id="invoice"
    enctype="multipart/form-data">
    <div class="form-group form">
        <label for="">Họ và tên</label>
        <input type="text" name="ho_ten" id="ho_ten" class="form-control rounded-pill" value="<?= $ho_ten ?>"
            aria-describedby="helpId" required>
    </div>
    <div class="form-group">
        <input type="hidden" name="ma_kh" id="ma_kh" class="form-control rounded-pill" value="<?= $ma_kh ?>"
            aria-describedby="helpId">
    </div>
    <div class="form-group">
        <label for="">Địa chỉ email</label>
        <input type="text" name="email" id="email" class="form-control rounded-pill" value="<?= $email ?>"
            aria-describedby="helpId" required>
    </div>
    <div class="form-group">
        <label for="">Số điện thoại</label>
        <input type="text" name="sdt" id="sdt" class="form-control rounded-pill" placeholder=""
            aria-describedby="helpId" pattern="[0-9]+" title="Số điện thoại chỉ được nhập bằng số" required>
    </div>
    <div class="form-group">
        <label for="">Địa chỉ nhận hàng</label>
        <input type="text" name="dia_chi" id="dia_chi" class="form-control rounded-pill" placeholder=""
            aria-describedby="helpId" required>
    </div>
    <div class="form-group">
        <label for="">Phương thức thanh toán </label>
        <br>
        <input type="radio" name="phuong_thuc_tt" id="" value="0" checked placeholder="" aria-describedby="helpId">
        Tiền mặt
        <input type="radio" name="phuong_thuc_tt" id="" value="1" placeholder="" aria-describedby="helpId"> Chuyển
        khoản ngân hàng
        <input type="radio" name="phuong_thuc_tt" id="" value="2" placeholder="" aria-describedby="helpId"> Ví điện
        tử
    </div>
    <input type="hidden" name="trang_thai" value="0">
    <div class="form-group">
        <label for="">Ghi chú</label>
        <textarea name="ghi_chu" class="form-control" id=""></textarea>
    </div>
    <div class="d-flex justify-content-center">
        <button type="submit" name="btn_thanh_toan" class="btn btn-success btn-block pt-2 pb-2 rounded-pill">Xác nhận</button>
    </div>
</form>
