# Tài Liệu Tiếng Việt 02 - IAM Least Privilege

Nguồn chính thức: https://docs.aws.amazon.com/IAM/latest/UserGuide/getting-started-reduce-permissions.html

Ngày tạo tài liệu học: 2026-06-17

Mục đích: Chuyển nội dung về least-privilege permissions thành tài liệu thực hành cho Ngày 1.

## 1. Ý Tưởng Chính

Least privilege là nguyên tắc chỉ cấp quyền cần thiết để thực hiện một nhiệm vụ, không cấp thêm quyền dư thừa.

Trong AWS, đây là một best practice của IAM. Khi mới học, bạn có thể cần quyền rộng hơn để thử nghiệm, nhưng mục tiêu cuối cùng là giảm quyền về mức tối thiểu sau khi biết workload thực sự cần gì.

## 2. Vì Sao Quan Trọng?

Nếu cấp quyền quá rộng:

- Lỗi cấu hình nhỏ có thể gây tác động lớn.
- Key bị lộ có thể bị khai thác nhiều dịch vụ.
- Khó xác định ai đã làm gì.
- Tăng rủi ro bị truy cập dữ liệu trái phép.
- Không phù hợp với production và governance.

Với GenAI app, quyền quá rộng còn nguy hiểm hơn vì ứng dụng có thể truy cập tài liệu nội bộ, vector store, logs, model invocation và workflow tools.

## 3. Không Dùng Root/Admin Cho Việc Hằng Ngày

Root user, administrative user và emergency access user có quyền rất mạnh. Các quyền này không cần cho lab hằng ngày.

Quy tắc Day 1:

- Không dùng root user để chạy lab.
- Root chỉ dùng cho việc thật sự bắt buộc: billing/account-level/security recovery.
- Nên dùng IAM Identity Center hoặc role/user có quyền thấp hơn.

## 4. Cách Bắt Đầu Nếu Dùng IAM Identity Center

Nếu có thể, dùng IAM Identity Center:

- Tạo user học tập riêng.
- Gán permission set phù hợp.
- Dùng temporary credentials.
- Quản lý truy cập tập trung.

Trong lab học tập, IAM Identity Center giúp bạn tránh tạo long-term access keys không cần thiết.

## 5. Cách Bắt Đầu Nếu Chưa Dùng IAM Identity Center

Nếu chưa dùng IAM Identity Center:

- Dùng IAM roles để định nghĩa quyền cho các thực thể khác nhau.
- Chỉ dùng IAM user/access key khi thật sự cần.
- Phân tách role cho người học, Lambda, Bedrock lab, S3 access.

## 6. AWS Managed Policies Và Giới Hạn

AWS managed policies tiện lợi khi bắt đầu vì có sẵn. Tuy nhiên, chúng có thể không phải least privilege cho use case cụ thể của bạn.

Cách dùng đúng:

1. Dùng AWS managed policy để học/thử nghiệm ban đầu nếu cần.
2. Ghi lại những service/action thực sự dùng.
3. Sau một khoảng thời gian, tạo customer managed policy hẹp hơn.
4. Gỡ managed policy rộng và thay bằng policy riêng.

## 7. IAM Access Analyzer

IAM Access Analyzer có thể hỗ trợ tạo policy dựa trên access activity được ghi trong CloudTrail.

Ý nghĩa với người học:

- Bạn có thể bắt đầu với policy rộng hơn để lab.
- Sau đó dùng lịch sử truy cập để thu hẹp quyền.
- Đây là cách biến "học nhanh" thành "an toàn hơn" theo thời gian.

## 8. Ứng Dụng Cho Lab Bedrock Sau Này

Một lab Bedrock tối thiểu có thể cần:

- Quyền invoke model: ví dụ `bedrock:InvokeModel`.
- Quyền đọc tài liệu từ S3 nếu làm RAG.
- Quyền ghi log vào CloudWatch nếu có Lambda.
- Quyền chạy Lambda nếu có API/backend.

Những quyền không nên cấp rộng dài hạn:

- `AdministratorAccess`
- `iam:*`
- `s3:*` trên tất cả bucket
- `bedrock:*` trên tất cả model/resource nếu không cần
- Access key vĩnh viễn không có rotation

## 9. Checklist Day 1

- [ ] Xác định cách truy cập AWS: IAM Identity Center, IAM user lab hay sandbox.
- [ ] Không dùng root user cho lab.
- [ ] Bật MFA.
- [ ] Không ghi access key vào notes.
- [ ] Nếu dùng policy rộng lúc đầu, ghi rõ ngày review và kế hoạch thu hẹp.
- [ ] Ghi blocker nếu chưa có account/credentials/region.

## 10. Câu Hỏi Ôn Tập

1. Least privilege là gì?
2. Vì sao AWS managed policy chưa chắc đã là least privilege?
3. Khi nào nên dùng IAM Identity Center?
4. IAM Access Analyzer giúp ích gì?
5. Quyền nào tối thiểu cho lab gọi Bedrock model?
