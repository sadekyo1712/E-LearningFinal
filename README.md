CodeAcademy
--------------------------------------------------
- Đây là một trang e-learning cho lập trình viên là https://codeacademy.vn

Demo
---------------------------------------------------------------------------
- Demo module Login-Logout-Signup cho website https://codeacademy.vn
- Hiện tại phiên bản Demo chỉ có màn hình home, login và logout đã hoàn thiện, các màn hình còn lại đang được phát triển tiếp :) 

Mô tả chức năng của module
--------------------------------------------------------------------------
- Thực hiện đăng ký tài khoản và mã hóa thông tin tài khoản đăng ký, cụ thể ở đây là mã hóa mật khẩu
- Cụ thể mật khẩu được hashing bằng thuật toán hashing BCrypt ( có thể sử dụng SHA hoặc MD5 tuy nhiên BCrypt là thuật toán mã hóa mạnh hơn ) với độ dài là 60 , sử dụng chuỗi salt ngẫu nhiên
- Tài khoản đã mã hóa sau đó được lưu vào database, cụ thể ở đây là trường mật khẩu được mã hóa
 ![stack Overflow](https://lh3.googleusercontent.com/mr3OfAps4IF-BwrDO6zfewKFF6IR63oG-DNsKkSa607GFKLPlobk2gi2vBe8QfMh2g-TlzF7kPE7JfT6NZyeqXhpq3nfmGtBGP3tQIUvhOaxkpUYZPlMgwI9b-Z6A_hdPgNnduYDGDIevvlIvN-Bv11XNcA1cQlc57eX3mpdkrgv701b2g6HZ1MJiGLuImPDH53RVqxvoIz9vpoktzgk4jpa_ZedfbdcsZ3pH3mIKlg8TxLuvsclwRLCJ_SQaOU9xRNKfFXGe-PswmSV80tL8uDaw0MuMGX5GtIPA_f8E9HrYSxgE_VVp8-ZglMf6eJylN7ZkgGBvVtJLcOAyBvezpHxnP-r4bR0llswuY9wZ2iI0R5tD-N7Ewnab4axJP02Ivk-g55dMfkIJawaeGQAUU8lmY_WkaLp5tdirEuNTNTxInptCftUvQPW3u2AlCl7Vc7YDphS7oDNUpaf4hVXgUlo1Tsda9YDZWzomC16Ql6E8tjlEPOS0o0vooA4TnQhCZQW5WV4I4bUeApAOpQlIfy0xGZy9zOa30FdFIH1jd5_YPUI7Qt6wdMzYeBL5pihLM1Z17u7NooVihFheCLNdAk548jzK5CdE3HJJgriy5p700prn74x=w1625-h914-no)
- Khi thực hiện đăng nhập sẽ thực hiện hashing mật khẩu để xác nhận tài khoản đăng nhập có chính xác hay không, và kiểm tra quyền của tài khoản và thực hiện cấp quyền cho user để truy cập vào màn hình 

Một số hình ảnh Demo 
---------------------------------------------------------------------------
- Khi đã đăng nhập thành công
 ![image](https://lh3.googleusercontent.com/lEkpKtEoBQvgwJNCuaDWUAT4pOX1UFhc-OAU88SKKmQDUF091MDbAsp5wmzBEhUmdu-vgxOqD6Hv2YNN8CIQDwt8goVIcBilbOf5qn1RfNGOcSqvfsjLofSAxKBOzRYDhwIAfMzT4_2l0tyToEJTrwVpvRRES0AM0GNhtqgAk31vk7y08lF0PCQgjQGLKhDqJdvKjUhZDfkjNomLcqi0XGq26zI8CEZRiEh0QHN-ynI_17qxnKnw3WfuGMcO0hlMhN3bdbUA3o8W8BPkox4GYGxrnuSLPX6ICeIB-szFFxJjnXv7khddNZ-B0vTMrewECRRZbJTLOHlo0xmvDDpltx4oUnHL5xzQ0V427qmzPEqSSJKByw_ctHdhHNAQumnWo9ncjN6FP4ZPq8hlvtvkff1TCIQbYB3xpcR9XP0ODlBqScPX9nVTlUbeBUmRB8b59XpmN8bFMfI45J6zH4kPnsECG6q9lS7jyDFtCqdHm5F_ZzyjkF60Wviqu6PetH2S27FGqh19VTyGA05UsqFDo0YP5Q6IoVtHOFUJmQjyVoeHMvpTs-GnmcN508brU5lF92fg90EJSZ36OYb8Wn-29UDpqpHxUwBoOxqOUTuVUCgvJqOIujxv=w374-h914-no)

- Màn hình đăng nhập
 ![myimage-alt-tag](https://lh3.googleusercontent.com/4ovkqDDEmi1H0AD6TuMrzCiKT3GWd3-UB2bOHN1BdU7MoUGDdnLltlKZWsHgA6eOYPZ9bGgblCwjQhdagTww1nuQYKnGZermW5VXeB6XTNQVuPiUMZkI_riPVqxNzhGP5DftHeiYbA6i-S0PINeKuM_Z0PXnzGfppJWHUbGwSY6nVQfFG8-KHbjVI8bbqNg0AODEYHcP6trHibTm7ZF6xMe91Lfvbr2W0a35rW4D0JApFdG15Fsxhok6km2_5ZVD22nhGPxt0rqrijxcLges77agoPhBmg-sAksoSlfU6nXwWS6H1o-MgkQgE47K_x9-OAht9POVBM1-ytEnAOg1kga0qYXaDAIcg6ugwuG19HlebXo7dJjZ-DbFn20qpbkxbR8srcEibq2joG9wUxKtJ7FUKNah5Sh_SWxJDIZ3LQxKWV1QtEHQZJrqojkjzHewbIUE1vCPs4fqfd2qTqfIFXawsE8PmKYiHiqq7AfxnXZQEjQfp02ktW2ILiWNsW5gN6hXrA-8FKZf5xVchheUCsXYUW8L3yI5qXNe_NctXAqhCTJAE8KSCmm1CFWVr4zlutxlEgCnM1fPeVch4vu_7BPgP_tfx7g7Z7jNJoH9cTzUPBup=w1920-h914-no)

- Màn hình tạo tài khoản
 ![myimage-alt-tag](https://lh3.googleusercontent.com/ZnLR8JfItsZlmvYZYmiuV4-fG2yGOVcfQD9OwXZcwecUd1OfoaJbI_TsomSpUeE873M5avlryv93NGNkRFzT5lbW_vJhCSh-uYmlW26QWMoDlEIMr-JcaPAfUKuCDRW99cFsaCCNcOMwtQXOm-OB6JL9PD6Eq2Z-fc1boicE0rdRK3WdsoGLsEApJc2kbrOdDgFSql9wmxnv83K5ao7CIFOi6l7CE-hIwmcgISDfOfx8De2ALfQ05URw8Y39BwjgkLN68Bv-ACsMs04HFBhiTLEjhdowOXG4SD_uSmA9p1oSSLBS0X9DnsWYwIoExXS2rDB364I-nOoEW0CDz6Q4YDVzAyvxqDwKpQMCzK3ROrval0rNdpQC9X_5Ov1JpPfkJ5kpkxoQk_id0stiWIeFGYUCSTALktVax8rg2SaVJFG7P6xWDUWPdZaI_JbbJ471NWrmHktG9xjk4CM75xlRuUs9l8dLJejHIUvtB_NPz8T7DEMb8CqyHnzdQgLnSUoz_ThXjlxnCW8EQVAbkVE7wIs-bQkIkwtqCr2vZJ4f3ydB3J-Z8vNdha30dpC2u2ELzDZkFRx03DqIo4hI5jIxgAVrZgLNX3M2eL8q5nwOCRmjAHGL=w1920-h914-no)

- Khi chưa đăng nhập
 ![myimage-alt-tag](https://lh3.googleusercontent.com/aKlM6ZAVW3v7BRnydnMsIn-4cCYpN01Kthx1wzpWwTJyMsDW5V1a66HEtWxYcdRq3PL20hWMKIw2JZ-4LLpRm-rGBDjiahZvVIkEcZ-wz4ZLfgCGzMV99kjs_0yPTFkyM0K6elGCoREh3fgMHbsVSHf5zjTrO-qC5kB0EO_3_WyaAZWTZp-4ghdQ7_GlK6Y_5ZkSfbSPwK6Pt7lbCIO0OJasyCcjpjqDvFCjik47NExZLF_3FjlFl9-XlYU3ijn1T7fRHQY9sRy3KaONkQKO5t3ilyRVjuYYSrkBRXrvQzgXeBoUlf7uuKv9tCRHB61tK1g2KBcIxkFWBr1czEvTU9_gvB42568X4hua1qtXRMPFcTupNZ9SeQzyicEky09-g3rtxFJ55gb1VWQP62CPXCLiUEw3drMUKnUvzUKIlE-bNrkrhmHd65vFIso7sBDL3JBk0fFoIPiL0tBEvHrPjQXWb5f7HD-QHoVVy37-mcizdWZ5D6ZiekslxYb22ShDzLfzwPzUiTaEo9TZV_dvawPeSJfl4_Vg2q8iTIxqt2C5PLRD6ApnlMnDKmClf50W-w4-h3_SAFS799dliPmXvHXMNnJVNqMDT24-QjOgOQQAwLO1=w374-h914-no)
