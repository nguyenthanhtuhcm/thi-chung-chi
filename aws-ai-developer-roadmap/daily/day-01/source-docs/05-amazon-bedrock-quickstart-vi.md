# Tài Liệu Tiếng Việt 05 - Amazon Bedrock Quickstart

Nguồn chính thức: https://docs.aws.amazon.com/bedrock/latest/userguide/getting-started.html

Ngày tạo tài liệu học: 2026-06-17

Mục đích: Chuyển quickstart Amazon Bedrock thành tài liệu chuẩn bị lab cho Day 1 và Day 5.

## 1. Mục Tiêu Quickstart

Quickstart hướng dẫn cách bắt đầu với Amazon Bedrock trong vài phút bằng cách chạy một inference request đầu tiên.

Trong lộ trình của bạn:

- Day 1: đọc để biết cần chuẩn bị gì.
- Day 5: mới thực sự chạy request đầu tiên.
- Tuần 2: mở rộng thành RAG.

## 2. Các Bước Chính

### Bước 1: Có AWS Account

Nếu đã có AWS account thì chuyển sang bước tiếp theo.

Nếu chưa có:

- Tạo AWS account.
- Bật MFA.
- Tạo billing budget/cost alert.
- Không dùng root cho lab hằng ngày.

### Bước 2: Chuẩn Bị Cách Xác Thực

Tài liệu quickstart đề cập short-term API key cho Bedrock. Với production, nên dùng IAM roles hoặc temporary credentials.

Trong lộ trình học:

- Ưu tiên IAM Identity Center nếu có.
- Nếu dùng access key cho lab, không ghi key vào notes/Git.
- Ghi rõ đây là cấu hình tạm thời.

### Bước 3: Cài SDK Cần Thiết

Quickstart dùng Python và các SDK/phụ thuộc tùy API:

- Messages API: `boto3`, `anthropic`.
- Responses/Chat Completions API: `boto3`, `openai`.
- Invoke/Converse API: `boto3`.

Cho lộ trình này, bắt đầu với:

```powershell
python -m pip install boto3
```

Sau này nếu cần API tương thích OpenAI/Anthropic, cài thêm:

```powershell
python -m pip install openai anthropic
```

### Bước 4: Cấu Hình Environment Variables

Tùy API, bạn có thể cần environment variables như API key/base URL/token.

Nguyên tắc an toàn:

- Không đưa secret vào Markdown.
- Không commit `.env`.
- Dùng terminal session, AWS profile, IAM Identity Center hoặc secret manager phù hợp.

### Bước 5: Chạy Inference Request Đầu Tiên

Bedrock hỗ trợ nhiều cách gọi:

- Messages API.
- Responses API.
- Chat Completions API.
- Converse API.
- Invoke API.

Trong lộ trình này, nên ưu tiên học:

1. Converse API: để hiểu chat/message abstraction.
2. InvokeModel API: để hiểu cách gọi model trực tiếp bằng `bedrock-runtime`.

## 3. Điều Kiện Trước Khi Chạy Lab

Trước khi chạy request Bedrock, cần có:

- AWS CLI chạy được.
- AWS credentials/profile hợp lệ.
- Default region hoặc region trong code.
- Model access đã được bật trong Bedrock Console.
- Python và `boto3`.
- IAM permission tối thiểu để invoke model.

## 4. Lệnh Kiểm Tra Day 1

Kiểm tra công cụ:

```powershell
.\aws-ai-developer-roadmap\tools\check-day-01-tools.ps1
```

Kiểm tra AWS config sau khi cấu hình:

```powershell
aws configure list
aws sts get-caller-identity
```

Nếu terminal chưa nhận `aws`, mở PowerShell mới hoặc dùng:

```powershell
& 'C:\Program Files\Amazon\AWSCLIV2\aws.exe' configure list
```

## 5. Khung Code Sẽ Dùng Ở Day 5

Day 1 chưa bắt buộc chạy code này. Lưu ý đây là khung học tập, cần thay `region_name` và `modelId` theo account/region của bạn.

```python
import boto3

client = boto3.client("bedrock-runtime", region_name="us-east-1")

response = client.converse(
    modelId="MODEL_ID_CAN_THAY_DOI",
    messages=[
        {
            "role": "user",
            "content": [{"text": "Hãy giải thích Amazon Bedrock bằng tiếng Việt trong 5 câu."}],
        }
    ],
)

print(response)
```

## 6. Lỗi Thường Gặp Khi Bắt Đầu

| Lỗi | Nguyên nhân có thể | Cách xử lý |
|---|---|---|
| `aws` không được nhận | PATH chưa cập nhật sau khi cài AWS CLI | Mở terminal mới hoặc dùng đường dẫn đầy đủ |
| `Unable to locate credentials` | Chưa cấu hình AWS credentials/profile | Dùng IAM Identity Center hoặc `aws configure` |
| Access denied khi invoke model | Thiếu IAM permission hoặc chưa bật model access | Kiểm tra role/policy/model access |
| Region không hỗ trợ model | Model không available ở region đang dùng | Chọn region/model khác |
| ModuleNotFoundError boto3 | Chưa cài boto3 | `python -m pip install boto3` |

## 7. Checklist Chuẩn Bị Cho Day 5

- [ ] AWS CLI chạy được trong terminal mới.
- [ ] AWS credentials/profile đã cấu hình.
- [ ] `aws sts get-caller-identity` trả về account/user/role.
- [ ] Region đã chọn.
- [ ] Bedrock model access đã bật.
- [ ] Python environment có `boto3`.
- [ ] IAM permission tối thiểu đã sẵn sàng.

## 8. Câu Hỏi Ôn Tập

1. Quickstart Bedrock cần những điều kiện gì?
2. Vì sao production nên dùng IAM roles/temporary credentials?
3. Khác nhau gì giữa đọc quickstart Day 1 và chạy lab Day 5?
4. Nếu bị AccessDenied khi gọi Bedrock, bạn kiểm tra những điểm nào?
5. Vì sao phải xác nhận region/model access trước khi code?
