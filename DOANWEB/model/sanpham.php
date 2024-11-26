<?php
include '../../config.php';
$sql = "SELECT masp, tensp, gia,hinh, maloai FROM sanpham";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Dữ liệu có sẵn
    $sanpham_data = $result->fetch_all(MYSQLI_ASSOC); // Lấy tất cả kết quả dưới dạng mảng
} else {
    echo "0 results";
}
$conn->close();
?>
