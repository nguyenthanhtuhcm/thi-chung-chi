# Ngày 1 - Khởi Động Lộ Trình AWS AI Developer

Ngày học: 2026-06-17

Chứng chỉ mục tiêu: AWS Certified Generative AI Developer - Professional (AIP-C01)

Chủ đề trọng tâm: Tổng quan AIP-C01, chuẩn bị tài khoản AWS/sandbox, IAM least privilege.

## 1. Mục Tiêu Trong Ngày

Sau ngày 1, bạn cần đạt được các kết quả sau:

1. Hiểu AIP-C01 dùng để đánh giá năng lực nào của AI developer.
2. Nắm được các nhóm kiến thức chính của đề thi AIP-C01.
3. Hiểu nguyên tắc IAM least privilege và vì sao không dùng root user cho công việc hằng ngày.
4. Kiểm tra xong công cụ học tập: AWS CLI, Python, Git.
5. Xác định được việc còn thiếu: tài khoản AWS/sandbox, credentials, region, MFA, billing budget.
6. Cập nhật dashboard theo dõi tiến độ học tập.

## 2. Phân Bổ Thời Gian

Tổng thời gian học đề xuất: 2-3 giờ.

| Block | Thời lượng | Nội dung |
|---|---:|---|
| Đọc tài liệu chính thức | 45 phút | AIP-C01 exam guide, IAM least privilege, Bedrock overview |
| Chuẩn bị công cụ và tài khoản | 60-75 phút | AWS account/sandbox, MFA, AWS CLI, Python, Git, region |
| Ghi chú và bài tập | 30-45 phút | Tóm tắt AIP-C01, lập domain map, trả lời câu hỏi IAM |

## 3. Tài Liệu Chính Thức Cần Đọc

Đọc theo thứ tự sau:

1. AIP-C01 Exam Guide  
   https://docs.aws.amazon.com/aws-certification/latest/ai-professional-01/ai-professional-01.html

2. AWS IAM - Prepare for least-privilege permissions  
   https://docs.aws.amazon.com/IAM/latest/UserGuide/getting-started-reduce-permissions.html

3. AWS IAM security best practices  
   https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html

4. Amazon Bedrock overview  
   https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-bedrock.html

5. Amazon Bedrock quickstart  
   https://docs.aws.amazon.com/bedrock/latest/userguide/getting-started.html

Mỗi link trên đã được chuyển thành một tài liệu học tiếng Việt riêng trong:

- `daily/day-01/source-docs/01-aip-c01-exam-guide-vi.md`
- `daily/day-01/source-docs/02-iam-least-privilege-vi.md`
- `daily/day-01/source-docs/03-iam-security-best-practices-vi.md`
- `daily/day-01/source-docs/04-amazon-bedrock-overview-vi.md`
- `daily/day-01/source-docs/05-amazon-bedrock-quickstart-vi.md`

## 4. Chuẩn Bị Công Cụ

### Công cụ bắt buộc

- Tài khoản AWS hoặc sandbox.
- MFA cho tài khoản quản trị/root.
- AWS CLI.
- Python 3.11 trở lên hoặc bản Python ổn định hiện có.
- Git.
- Code editor.
- Trình duyệt để mở AWS Console và AWS Docs.

### Công cụ khuyến nghị

- Password manager để quản lý thông tin đăng nhập.
- Billing budget hoặc cost alert trong AWS.
- Git repository để theo dõi thay đổi tài liệu và lab.

### Trạng thái máy hiện tại

Đã kiểm tra trên máy ngày 2026-06-17:

| Công cụ | Trạng thái |
|---|---|
| AWS CLI | Đã cài AWS CLI 2.35.5 tại `C:\Program Files\Amazon\AWSCLIV2\aws.exe` |
| AWS CLI trong PATH | Terminal hiện tại chưa nhận lệnh `aws`; mở PowerShell mới hoặc dùng đường dẫn đầy đủ |
| AWS credentials | Chưa cấu hình |
| AWS default region | Chưa cấu hình |
| Python | Đã cài Python 3.12.10 |
| Git | Đã cài Git 2.50.1.windows.1 |

Lệnh kiểm tra công cụ:

```powershell
.\aws-ai-developer-roadmap\tools\check-day-01-tools.ps1
```

Nếu `aws --version` chưa chạy trong terminal hiện tại, dùng:

```powershell
& 'C:\Program Files\Amazon\AWSCLIV2\aws.exe' --version
```

## 5. Bài Tập Ngày 1

### Bài tập 1: Tóm tắt AIP-C01

Viết câu trả lời ngắn cho các ý sau trong `day-01-notes.md`:

1. Kỳ thi AIP-C01 dành cho ai?
2. Kỳ thi xác nhận những kỹ năng nào?
3. Vì sao chứng chỉ này hữu ích cho AI developer?
4. Domain nào có vẻ dễ nhất với bạn?
5. Domain nào có vẻ khó nhất với bạn?

Mẫu tóm tắt 5 dòng:

```text
AIP-C01 đánh giá khả năng xây dựng và tích hợp ứng dụng generative AI trên AWS.
Kỳ thi tập trung vào foundation models, RAG, agents, security/governance, optimization và troubleshooting.
Chứng chỉ này phù hợp với AI developer vì gắn trực tiếp với Bedrock và ứng dụng GenAI production.
Phần dễ nhất hiện tại có thể là tổng quan Bedrock và prompt/RAG nếu đã từng làm LLM app.
Phần khó nhất có thể là security, governance, cost/performance và troubleshooting trên AWS.
```

### Bài tập 2: Lập bản đồ domain AIP-C01

Điền bảng sau:

| Domain | Ý nghĩa | AWS services/concepts liên quan |
|---|---|---|
| Domain 1 | Foundation model integration, data management, compliance | Bedrock, model access, embeddings, data source, compliance |
| Domain 2 | Implementation and integration | Bedrock APIs, Lambda, API Gateway, RAG, agents |
| Domain 3 | AI safety, security, governance | IAM, Guardrails, encryption, PII, Responsible AI |
| Domain 4 | Operational efficiency and optimization | Cost, latency, token usage, caching, model selection |
| Domain 5 | Testing, validation, troubleshooting | Evaluation, logs, CloudWatch, error handling, hallucination checks |

### Bài tập 3: IAM least privilege

Trả lời trong `day-01-notes.md`:

1. Vì sao không dùng root user cho lab hằng ngày?
2. Least privilege là gì?
3. Lab Bedrock sau này cần những quyền nào?
4. Những quyền nào không nên cấp rộng?
5. Sau này bạn sẽ review và giảm quyền như thế nào?

Gợi ý câu trả lời:

- Root user có quyền cao nhất và không phù hợp cho công việc thường ngày.
- Least privilege là chỉ cấp đúng quyền cần thiết để thực hiện một nhiệm vụ, không cấp thêm quyền dư thừa.
- Lab Bedrock có thể cần `bedrock:InvokeModel`, quyền đọc tài liệu trong S3, ghi log CloudWatch và quyền Lambda nếu dùng serverless.
- Không nên cấp rộng `AdministratorAccess`, `iam:*`, `s3:*`, `bedrock:*` cho mọi tài nguyên trong thời gian dài.
- Sau lab, cần kiểm tra quyền nào thực sự dùng, thu hẹp resource ARN, xóa access key/role không còn dùng.

### Bài tập 4: Kiểm tra công cụ

Chạy:

```powershell
.\aws-ai-developer-roadmap\tools\check-day-01-tools.ps1
```

Ghi kết quả vào `day-01-notes.md`.

### Bài tập 5: Quyết định cách truy cập AWS

Không ghi access key vào tài liệu học.

Chỉ ghi một trong các lựa chọn:

- Tôi sẽ dùng AWS IAM Identity Center.
- Tôi sẽ dùng IAM user riêng cho lab.
- Tôi sẽ dùng tài khoản sandbox/tổ chức.
- Tôi chưa có quyền truy cập AWS.

Sau đó ghi:

- Ai quản lý tài khoản/sandbox?
- Region nào sẽ dùng cho lab?
- Đã bật MFA chưa?
- Đã tạo billing budget/cost alert chưa?

## 6. Checklist Hoàn Thành Ngày 1

### Setup

- [ ] Xác nhận có AWS account hoặc sandbox.
- [ ] Xác nhận region dùng cho lab.
- [ ] Bật billing alert hoặc budget.
- [ ] Bật MFA cho root/admin.
- [ ] Cam kết không dùng root user cho lab hằng ngày.
- [ ] Tạo hoặc xác định IAM user/role dùng cho học tập.
- [x] Cài đặt/kiểm tra AWS CLI.
- [x] Cài đặt/kiểm tra Python.
- [x] Cài đặt/kiểm tra Git.
- [ ] Cấu hình AWS credentials.
- [ ] Cấu hình AWS default region.

### Đọc tài liệu

- [ ] Đọc overview AIP-C01.
- [ ] Đọc danh sách domain AIP-C01.
- [ ] Đọc IAM least privilege.
- [ ] Đọc hoặc skim Bedrock overview/quickstart.

### Bài tập

- [ ] Viết tóm tắt AIP-C01 trong 5 dòng.
- [ ] Liệt kê 5 domain AIP-C01.
- [ ] Giải thích least privilege bằng lời của mình.
- [ ] Phác thảo ý tưởng IAM policy tối thiểu cho lab Bedrock sau này.
- [ ] Viết 5 câu hỏi muốn project AWS GenAI Knowledge Assistant trả lời trong tương lai.

## 7. Đầu Ra Bắt Buộc

Cuối ngày 1, các file sau cần được cập nhật:

- `daily/day-01/day-01-notes.md`
- `tracker/day-01-checklist.md`
- `tracker/daily-dashboard.md`
- `notes/aip-c01-notes.md`
- `notes/mistakes-log.md` nếu có điểm sai/lúng túng cần sửa.

## 8. Tiêu Chí Đánh Dấu Done

Ngày 1 chỉ được đánh dấu `Done` khi:

1. Bạn giải thích được vì sao học AIP-C01 trước.
2. Bạn kể tên và mô tả ngắn được 5 domain AIP-C01.
3. Bạn hiểu vì sao không dùng root user cho công việc hằng ngày.
4. Bạn biết tài khoản/region/công cụ nào sẽ dùng cho lab tuần 1.
5. Dashboard theo dõi tiến độ đã được cập nhật.

## 9. Việc Cần Làm Tiếp Theo

Việc tiếp theo trong ngày 1:

1. Mở AIP-C01 Exam Guide và đọc overview/domain.
2. Mở IAM least privilege guidance và ghi lại 3 quy tắc quan trọng.
3. Quyết định cách truy cập AWS: IAM Identity Center, IAM user lab, sandbox hoặc chưa có access.
4. Nếu đã có access, cấu hình AWS CLI và default region.
5. Cập nhật `day-01-notes.md` và `daily-dashboard.md`.
