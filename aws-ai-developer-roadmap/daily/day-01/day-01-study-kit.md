# Day 1 Study Kit

## Trọng Tâm

Tổng quan AIP-C01, chuẩn bị AWS account/sandbox, IAM least privilege.

## Ngân Sách Thời Gian

Tổng thời gian: 2-3 giờ.

- 45 phút: đọc tài liệu chính thức về kỳ thi và IAM.
- 60-75 phút: chuẩn bị công cụ và AWS account/sandbox.
- 30-45 phút: viết ghi chú và hoàn thành bài tập.

## Tài Liệu Chính Thức

1. AIP-C01 Exam Guide  
   https://docs.aws.amazon.com/aws-certification/latest/ai-professional-01/ai-professional-01.html

2. AWS IAM least privilege guidance  
   https://docs.aws.amazon.com/IAM/latest/UserGuide/getting-started-reduce-permissions.html

3. AWS IAM security best practices  
   https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html

4. Amazon Bedrock overview  
   https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-bedrock.html

5. Amazon Bedrock quickstart  
   https://docs.aws.amazon.com/bedrock/latest/userguide/getting-started.html

## Chuẩn Bị Công Cụ

Bắt buộc:

- AWS account hoặc sandbox.
- MFA đã bật.
- AWS CLI.
- Python 3.11+ hoặc bản Python ổn định hiện có trên máy.
- Code editor.
- Trình duyệt để truy cập AWS Console và AWS docs.

Khuyến nghị:

- Git để theo dõi study notes và lab scripts.
- Password manager cho AWS account credentials.
- Billing budget hoặc cost alert.

Kiểm tra local hiện tại vào 2026-06-17:

- AWS CLI: đã cài tại `C:\Program Files\Amazon\AWSCLIV2\aws.exe`; terminal hiện tại có thể cần mở lại trước khi nhận lệnh `aws` trong PATH.
- AWS credentials: chưa cấu hình.
- AWS region: chưa cấu hình.
- Python: đã cài Python 3.12.10.
- Git: đã cài Git 2.50.1.windows.1.

Chạy kiểm tra công cụ bất cứ lúc nào:

```powershell
.\aws-ai-developer-roadmap\tools\check-day-01-tools.ps1
```

## Bài Tập Ngày 1

### Bài Tập 1: Tóm Tắt AIP-C01

Viết:

- Kỳ thi này dành cho mục tiêu gì.
- Kỳ thi xác nhận những kỹ năng nào.
- Vì sao nó hữu ích cho AI developer.
- Domain nào có vẻ dễ nhất.
- Domain nào có vẻ khó nhất.

Lưu câu trả lời trong `day-01-notes.md`.

### Bài Tập 2: Xây Domain Map

Tạo một bảng ngắn:

| Domain | Ý Nghĩa | AWS Services/Concepts |
|---|---|---|
| Domain 1 |  |  |
| Domain 2 |  |  |
| Domain 3 |  |  |
| Domain 4 |  |  |
| Domain 5 |  |  |

### Bài Tập 3: IAM Least Privilege

Trả lời các câu hỏi:

1. Vì sao nên tránh dùng root user cho lab hằng ngày?
2. Least privilege là gì?
3. Các lab Bedrock sau này có thể cần những quyền nào?
4. Những quyền nào không nên cấp rộng?
5. Sau này bạn sẽ review và giảm quyền như thế nào?

### Bài Tập 4: Kiểm Tra Công Cụ

Chạy các lệnh này trong terminal:

```powershell
aws --version
python --version
git --version
```

Nếu `aws --version` chưa chạy được trong terminal hiện tại, mở PowerShell mới hoặc chạy:

```powershell
& 'C:\Program Files\Amazon\AWSCLIV2\aws.exe' --version
```

Nếu hôm nay chưa thể cấu hình AWS credentials, ghi blocker vào `tracker/daily-dashboard.md`.

### Bài Tập 5: Quyết Định Cách Dùng AWS Credentials

Không dán access key vào notes. Thay vào đó, ghi một trong các lựa chọn:

- Tôi sẽ dùng AWS IAM Identity Center.
- Tôi sẽ dùng một IAM user chỉ dành cho lab.
- Tôi sẽ dùng organization/sandbox account.
- Tôi chưa có AWS access.

Sau đó ghi:

- Chủ sở hữu account/sandbox.
- Region đã chọn.
- MFA đã bật chưa.
- Billing budget đã bật chưa.

## Output Kỳ Vọng

Cuối ngày 1, bạn nên có:

- Quyết định về AWS account/sandbox.
- Quyết định region cho lab.
- Trạng thái sẵn sàng của công cụ.
- Bản tóm tắt AIP-C01.
- Bản tóm tắt IAM least privilege.
- Tracker đã cập nhật.

## Region Gợi Ý

Dùng AWS region có Amazon Bedrock model access cho model bạn muốn test và được account policy cho phép. Nếu chưa chắc, bắt đầu bằng cách kiểm tra Bedrock trong AWS Console và ghi region đã chọn vào `day-01-notes.md`.
