# Tài Liệu Tiếng Việt 03 - IAM Security Best Practices

Nguồn chính thức: https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html

Ngày tạo tài liệu học: 2026-06-17

Mục đích: Tóm tắt và chuyển hóa các best practices IAM thành checklist học tập cho AI developer.

## 1. Mục Tiêu Của IAM Security Best Practices

IAM giúp bảo vệ tài nguyên AWS bằng cách kiểm soát:

- Ai có thể truy cập.
- Truy cập bằng cách nào.
- Được thực hiện hành động nào.
- Trên tài nguyên nào.
- Trong điều kiện nào.

Với AI developer, IAM ảnh hưởng trực tiếp đến khả năng gọi Bedrock, đọc dữ liệu S3, chạy Lambda, ghi logs và triển khai workflow.

## 2. Dùng Federation Và Temporary Credentials Cho Human Users

Best practice: human users nên truy cập AWS thông qua federation với identity provider và temporary credentials.

Ý nghĩa:

- Giảm phụ thuộc vào IAM users có access key dài hạn.
- Quản lý truy cập tập trung.
- Dễ thu hồi quyền khi người dùng không còn cần.
- Phù hợp hơn với môi trường doanh nghiệp.

Lựa chọn khuyến nghị: AWS IAM Identity Center.

## 3. Workloads Nên Dùng IAM Roles Và Temporary Credentials

Workload là ứng dụng, backend, automation, CI/CD hoặc thành phần hệ thống cần gọi AWS services.

Best practice:

- Lambda nên dùng execution role.
- EC2 nên dùng instance profile/role.
- Ứng dụng chạy trên AWS nên lấy temporary credentials từ role.
- Không hard-code access key trong code.

Trong project AWS GenAI Knowledge Assistant:

- Lambda Orchestrator cần role riêng.
- Ingestion pipeline cần role riêng.
- Evaluation/monitoring job cần role riêng nếu có.

## 4. Bật MFA

MFA giúp tăng bảo mật khi đăng nhập. Cần bật MFA cho:

- Root user.
- Admin user.
- IAM Identity Center user nếu có.
- Bất kỳ user có quyền nhạy cảm.

Nếu có thể, ưu tiên phishing-resistant MFA như passkey/security key.

## 5. Access Keys Dài Hạn

AWS khuyến nghị ưu tiên temporary credentials. Nếu bắt buộc dùng long-term access keys:

- Chỉ tạo khi cần.
- Không lưu trong code, notes, Git.
- Rotate khi cần.
- Xóa key không dùng.
- Kiểm tra last used information.

Trong lộ trình học, nếu phải dùng access key, chỉ dùng cho lab và ghi blocker/kế hoạch thay thế bằng IAM Identity Center hoặc role.

## 6. Bảo Vệ Root User

Root user có quyền cao nhất. Cần:

- Bật MFA.
- Không dùng cho công việc hằng ngày.
- Không tạo access key cho root.
- Bảo vệ email và mật khẩu root.
- Chỉ dùng khi tác vụ bắt buộc yêu cầu root/account owner.

## 7. Áp Dụng Least Privilege

Cấp quyền theo:

- Action cần thiết.
- Resource cụ thể.
- Condition phù hợp.

Có thể bắt đầu với quyền rộng hơn trong giai đoạn học, nhưng phải có kế hoạch thu hẹp khi workload ổn định.

## 8. IAM Access Analyzer

Dùng IAM Access Analyzer để:

- Tạo policy dựa trên access activity.
- Phát hiện public/cross-account access.
- Validate policy theo best practices.
- Đưa ra khuyến nghị sửa policy.

Đây là công cụ quan trọng khi chuyển từ lab sang production.

## 9. Review Và Xóa Quyền Không Dùng

Cần định kỳ review:

- IAM users.
- IAM roles.
- Permissions.
- Policies.
- Credentials/access keys.

Sử dụng last accessed information để xác định quyền nào không còn dùng.

## 10. Conditions, Guardrails Và Boundaries

IAM policy conditions giúp giới hạn truy cập theo điều kiện, ví dụ:

- Chỉ cho phép qua TLS.
- Chỉ cho phép từ một service cụ thể.
- Chỉ cho phép resource/tag/region nhất định.

Guardrails cho nhiều account:

- AWS Organizations.
- Service Control Policies (SCPs).
- Resource Control Policies (RCPs).

Permissions boundaries giúp ủy quyền quản lý IAM nhưng vẫn giới hạn quyền tối đa.

## 11. Checklist Cho AI Developer

- [ ] Không dùng root cho lab.
- [ ] Bật MFA.
- [ ] Ưu tiên IAM Identity Center.
- [ ] Lambda/EC2/workload dùng IAM role.
- [ ] Không hard-code access key.
- [ ] Policy gắn với resource cụ thể nếu có thể.
- [ ] Dùng IAM Access Analyzer để validate policy.
- [ ] Review và xóa credentials/quyền không dùng.

## 12. Câu Hỏi Ôn Tập

1. Human user nên dùng federation hay access key dài hạn?
2. Workload trên Lambda nên lấy quyền bằng cách nào?
3. MFA nên bật cho những identity nào?
4. Vì sao root user cần được bảo vệ riêng?
5. IAM Access Analyzer có 3 tác dụng quan trọng nào?
