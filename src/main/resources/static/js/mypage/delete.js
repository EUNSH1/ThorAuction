// delete.js


$("#delete_btn").click(function () {
    const checkPassword = $('#pw').val();

    if ($("#pw").val() == "") {
        Swal.fire({
            title: '탈퇴 실패',
            html: '비밀번호를 입력해 주세요',
            icon: 'warning',
            confirmButtonColor: '#3085d6',
            confirmButtonText: '확인'
        });
    } else {
        Swal.fire({
            title: '회원 탈퇴',
            html: "정말로 탈퇴하시겠습니까?<br> 탈퇴 후에는 복구할 수 없습니다",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: '탈퇴하기',
            cancelButtonText: '취소'
        }).then(function (result) {
            if (result.isConfirmed) { // confirm button 클릭 시
                if (result) {
                    $.ajax({
                        type: 'POST',
                        url: '/mypage/checkpw',
                        data: {
                            'checkPassword': checkPassword,
                        },
                        datatype: "text"
                    }).done(function (result) {
                        console.log(result);

                        if (result) {
                            console.log("비번 일치");

                            Swal.fire({
                                title: '탈퇴 성공',
                                html: '이용해 주셔서 감사합니다',
                                icon: 'success',
                                confirmButtonColor: '#3085d6',
                                confirmButtonText: '확인'
                            }).then(function() {
                                $('#delete_form').submit();
                                // location.href = "../";
                            })
                        } else if (!result) {
                            console.log("비번 틀림");

                            Swal.fire({
                                title: '탈퇴 실패',
                                html: '비밀번호가 일치하지 않습니다',
                                icon: 'error',
                                confirmButtonColor: '#3085d6',
                                confirmButtonText: '확인'
                            })
                        }
                    }).fail(function (error) {
                        Swal.fire({
                            title: '서버 에러',
                            html: '잠시 후에 다시 이용해 주세요',
                            icon: 'error',
                            confirmButtonColor: '#3085d6',
                            confirmButtonText: '확인'
                        })
                    })
                }
            }
        })
    }
})