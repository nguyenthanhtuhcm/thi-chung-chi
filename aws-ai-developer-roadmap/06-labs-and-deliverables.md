# Labs And Deliverables

## AIP-C01 Labs

### Lab 1: Bedrock Invocation

Mục tiêu:

- Gọi foundation model bằng AWS Console hoặc SDK.
- Thay đổi prompt, temperature, max tokens.

Output:

- Script hoặc notebook gọi Bedrock.
- Bảng so sánh 3 prompt khác nhau.

### Lab 2: API Gateway + Lambda + Bedrock

Mục tiêu:

- Tạo API endpoint nhận câu hỏi.
- Lambda gọi Bedrock và trả câu trả lời.

Output:

- API endpoint hoạt động.
- CloudWatch logs có request id và latency.

### Lab 3: RAG MVP

Mục tiêu:

- Tài liệu trong S3.
- Retrieval từ Knowledge Base/vector store.
- Câu trả lời có citation/source.

Output:

- 20 câu test.
- Bảng đánh giá câu trả lời đúng/sai.

### Lab 4: Agent With Tools

Mục tiêu:

- Agent gọi ít nhất 2 Lambda tools.
- Xử lý input sai và tool timeout.

Output:

- Tool schema.
- 10 test cases.

### Lab 5: Guardrails And Evaluation

Mục tiêu:

- Thêm guardrails.
- Tạo eval set 30 câu.
- Đo relevance, groundedness, latency.

Output:

- Evaluation report ngắn.
- Security checklist.

## MLA-C01 Labs

### Lab 6: Data Preparation

Mục tiêu:

- Dataset trong S3.
- Làm sạch dữ liệu.
- Chia train/test.

Output:

- Data prep notebook.
- Ghi chú về data leakage và missing values.

### Lab 7: SageMaker Training

Mục tiêu:

- Chạy training job.
- Lưu model artifact.
- Đọc metrics.

Output:

- Training job completed.
- Metrics summary.

### Lab 8: Model Deployment

Mục tiêu:

- Deploy endpoint hoặc batch transform.
- Test inference.

Output:

- Endpoint/batch result.
- Notes về latency, cost, scaling.

### Lab 9: MLOps Monitoring

Mục tiêu:

- CloudWatch logs/metrics.
- Basic alarm.
- Model/data monitoring concept.

Output:

- Monitoring checklist.
- Troubleshooting notes.

## Portfolio Deliverable

Cuối lộ trình, viết một README project gồm:

- Problem statement.
- Architecture diagram.
- AWS services used.
- Security model.
- Cost notes.
- Evaluation approach.
- Lessons learned.
