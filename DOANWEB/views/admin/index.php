<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Trang chu Admin</title>
</head>

<body>
    <div class="container">
        <div class="header">
            <ul>
                <li><a href="#">Adminstrator</a></li>
                <li><a href="#">Vao trang web</a></li>
                <li><a href="#">Lien he</a></li>
                <li><a href="#">Don hang</a></li>
            </ul>
        </div>
        <div class="content">
            <div class="left">
                <div class="danhmuc">
                    <h3>Quan tri danh muc</h3>
                    <p>Loai danh muc</p>
                    <p>San pham</p>
                </div>
            </div>
            <div class="right">
                <select name="" id="">
                    <option value="">loai danh muc</option>
                </select>
                <form method="GET" action="">
                    <input type="text" name="search" placeholder="Nhập tên sản phẩm">
                    <button type="submit">Tìm kiếm</button>
                </form>

                <div class="chucnang">
                    <button>Them</button>
                </div>
                <table border="1">
                    <thead>
                        <tr>
                            <th>Ma san pham</th>
                            <th>Ten san pham</th>
                            <th>Gia</th>

                            <th>Hinh</th>
                            <th>Ma loai</th>
                            <th>Chuc nang</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        include '../../model/sanpham.php';
                        if (!empty($sanpham_data)) {
                            foreach ($sanpham_data as $sanpham) {
                                echo "<tr>";
                                echo "<td>" . $sanpham['masp'] . "</td>";
                                echo "<td>" . $sanpham['tensp'] . "</td>";
                                echo "<td>" . $sanpham['gia'] . "</td>";
                                echo "<td>" . $sanpham['hinh'] . "</td>";
                                echo "<td>" . $sanpham['maloai'] . "</td>";
                                echo "<td><button>Chinh sua</button> <button>Xoa</button></td>";
                                echo "</tr>";
                            }
                        }
                        ?>
                    </tbody>

                </table>

            </div>
        </div>
    </div>
</body>

</html>