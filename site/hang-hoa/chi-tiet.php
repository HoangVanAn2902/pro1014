<?php
require '../../global.php';
require '../../dao/hang-hoa.php';
//-------------------------------//

extract($_REQUEST);

// Truy vấn mặt hàng theo mã lấy nó ra để hiện thị
$hang_hoa = hang_hoa_select_by_id($ma_hh);
extract($hang_hoa);

// Tăng số lượt xem lên 1
hang_hoa_tang_so_luot_xem($ma_hh);

// Hàng cùng Loại
$hh_cung_loai = hang_hoa_select_by_loai($ma_loai);

$VIEW_NAME = "hang-hoa/chi-tiet-ui.php";
require '../layout.php';
