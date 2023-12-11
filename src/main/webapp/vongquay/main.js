var size_lop = "";

// vẽ anh ban đầu
var cv = document.getElementById('myCanvas');
var ct = cv.getContext('2d');

var im = new Image();
im.src = 'vongquay.png';

im.onload = function () {
    ct.drawImage(im, 0, 0);
};

var clickquay = true;

// điều kiện loop quay
var isloop = true;

// delta giữa các khung hình
var delta = 15;

// hệ số để chỉnh góc nhảy đến giải tiếp theo
var heso_nhay_giai = [1.28, 1.35, 1.31, 1.30, 1.28];

// số nguyên tương ứng với từng giải vd: số 0 -> giải 300$
var heso_giai = 0;

var giaithuong = [
    'Giảm 20%',
    'Giảm 10%',
    'Giảm 5%',
    'Mua 3 tặng 1 hoặc giảm 30%',
    'Miễn phí lắp đặt và cân bằng động'
];

function click_button_quay() {
    if (size_lop != "") {
        if (isloop == true && clickquay == true) {
            // var audio_tick = new Audio("audio_tick.mp3");
            // audio_tick.play();

            clickquay = false;

            // heso_giai = Math.floor(Math.random() * 5);

            heso_giai = size_lop;

            console.log(heso_giai + "|" + heso_nhay_giai[heso_giai] + "|" + giaithuong[heso_giai]);

            // Góc quay ban đầu
            var angle = 0;

            if (heso_giai == 0) {
                angle = heso_nhay_giai[heso_giai] * 5;
            } else {
                angle = heso_nhay_giai[heso_giai] * heso_giai;
            }

            // Lưu trữ thời điểm trước đó
            var lastTime = 0;
            var speed = 0.035;
            var dem = 0;

            // Tạo đối tượng Image
            var img = new Image();
            img.src = 'vongquay.png';

            var canvas = document.getElementById('myCanvas');
            var ctx = canvas.getContext('2d');

            // Hàm vẽ và xoay ảnh
            function drawRotatedImage() {
                // tính toán delta
                delta += 0.01;

                // Xoá canvas
                ctx.clearRect(0, 0, canvas.width, canvas.height);

                // Vẽ ảnh lên canvas
                ctx.save();
                ctx.translate(canvas.width / 2, canvas.height / 2);
                ctx.rotate(angle);
                ctx.drawImage(img, -img.width / 2, -img.height / 2);
                ctx.restore();

                // đếm 10 nhịp mới giảm 1 tốc độ
                if (dem == 1) {
                    if (speed > 0) {
                        speed -= 0.0001;
                    }

                    if (speed < 0) {
                        speed = 0;
                    }
                    dem = 0;
                }
                dem++;

                // Tăng góc xoay dựa trên delta
                angle += delta * speed; // 0.001 là hệ số tốc độ

                // console.log(angle);

                if (speed === 0) {
                    isloop = false;

                    alert('Chúc mừng bạn đã nhận được ' + giaithuong[heso_giai]);
                }
            }

            // Thiết lập hàm lặp lại để vẽ và xoay ảnh
            function loop(timestamp) {
                if (isloop) {
                    drawRotatedImage();
                    requestAnimationFrame(loop);
                }
            }
            requestAnimationFrame(loop);
        }

        if (!isloop) {
            alert('Bạn đã quay rồi!');
        }
    } else {
        alert('Bạn chưa nhập size lốp');
    }
}

function read_json() {
    fetch('https://raw.githubusercontent.com/haitran116/data_lop/main/baiviet_json.json')
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            // data là dữ liệu JSON đã được tải về, bạn có thể xử lý nó ở đây
            console.log(data[0].magai);
        })
        .catch(error => {
            console.error('There was a problem with the fetch operation:', error);
        });
}

function input_data() {
    size_lop = document.getElementById('input-sizelop').value;
    document.querySelector('.popup').classList.remove('active');
}

function click_thamgia() {
    // document.querySelector('.img-muiten').classList.add('active');
    document.querySelector('.popup').classList.add('active');
}