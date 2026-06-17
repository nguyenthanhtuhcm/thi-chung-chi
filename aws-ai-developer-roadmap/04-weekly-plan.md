# Kế Hoạch Học 10 Tuần

## Tuần 1: AWS Core Và Bedrock Basics

Mục tiêu:

- Hiểu IAM, S3, Lambda, API Gateway, CloudWatch ở mức ứng dụng.
- Gọi được Amazon Bedrock bằng Python.
- Đọc AIP-C01 exam guide lần 1.

Ngày 1:

- Đọc overview AIP-C01.
- Tạo tài khoản AWS hoặc chuẩn bị sandbox.
- Ôn IAM role, policy, least privilege.
- Dùng `daily/day-01/day-01-study-kit.md` và cập nhật `tracker/day-01-checklist.md`.
- Cập nhật `tracker/daily-dashboard.md` trước và sau buổi học.

Ngày 2:

- Học S3, encryption, bucket policy.
- Tạo bucket tài liệu học tập.

Ngày 3:

- Học Lambda và API Gateway.
- Viết Lambda hello-world.

Ngày 4:

- Học CloudWatch logs/metrics.
- Ghi log có cấu trúc từ Lambda.

Ngày 5:

- Học Bedrock model invocation.
- Gọi model bằng console hoặc SDK.

Ngày 6:

- Mini lab: API Gateway -> Lambda -> Bedrock.
- Ghi lỗi sai và câu hỏi vào notes.

## Tuần 2: RAG Fundamentals

Mục tiêu:

- Hiểu embeddings, chunking, retrieval.
- Xây RAG prototype tối thiểu.

Ngày 1:

- Học embeddings và semantic search.
- Ghi rõ khi nào dùng RAG thay vì prompt trực tiếp.

Ngày 2:

- Học chunk size, overlap, metadata.
- Chuẩn bị 5-10 tài liệu mẫu.

Ngày 3:

- Tạo ingestion pipeline tối thiểu.
- Nếu dùng Bedrock Knowledge Bases, cấu hình source S3.

Ngày 4:

- Xây retrieval prompt template.
- Thêm citation/source vào câu trả lời.

Ngày 5:

- Test 20 câu hỏi với tài liệu.
- Ghi hallucination cases.

Ngày 6:

- Hoàn thành Milestone 1/2 của project.
- Cập nhật `notes/aip-c01-notes.md`.

## Tuần 3: Agents Và Tool Integration

Mục tiêu:

- Hiểu agentic AI, action groups, Lambda tools.
- Xây agent có ít nhất 2 tools.

Ngày 1:

- Học agent architecture: planner, tool, memory/context, response.

Ngày 2:

- Thiết kế 2 Lambda tools.
- Định nghĩa input/output schema.

Ngày 3:

- Kết nối agent với tool 1.

Ngày 4:

- Kết nối agent với tool 2.

Ngày 5:

- Test tool error handling, timeout, invalid input.

Ngày 6:

- Viết ghi chú: khi nào dùng agent, khi nào dùng workflow cố định.

## Tuần 4: Guardrails, Security, Evaluation

Mục tiêu:

- Áp dụng guardrails và logging.
- Xây evaluation set.

Ngày 1:

- Học Bedrock Guardrails và Responsible AI.

Ngày 2:

- Thêm policy cho harmful content, PII, topic restriction.

Ngày 3:

- Học prompt injection và data exfiltration risk.

Ngày 4:

- Tạo evaluation set 30 câu.

Ngày 5:

- Đo relevance, groundedness, refusal quality, latency.

Ngày 6:

- Viết security checklist cho project.

## Tuần 5: AIP-C01 Exam Sprint 1

Mục tiêu:

- Ôn 5 domain AIP-C01.
- Làm practice questions theo domain.

Ngày 1:

- Domain 1: FM integration, data management, compliance.

Ngày 2:

- Domain 2: implementation and integration.

Ngày 3:

- Domain 3: AI safety, security, governance.

Ngày 4:

- Domain 4: operational efficiency and optimization.

Ngày 5:

- Domain 5: testing, validation, troubleshooting.

Ngày 6:

- Làm mock exam timed.
- Ghi lỗi sai vào `notes/mistakes-log.md`.

## Tuần 6: AIP-C01 Exam Sprint 2 Và Thi

Mục tiêu:

- Đạt 80-85% practice ổn định.
- Thi AIP-C01 nếu sẵn sàng.

Ngày 1:

- Sửa domain yếu nhất.

Ngày 2:

- Sửa domain yếu thứ hai.

Ngày 3:

- Mock exam timed.

Ngày 4:

- Review mistakes log.

Ngày 5:

- Đọc lại exam guide, nghỉ nhẹ.

Ngày 6:

- Thi AIP-C01 hoặc chốt ngày thi.

## Tuần 7: MLA-C01 Data Preparation

Mục tiêu:

- Hiểu data ingestion, transformation, feature engineering.
- Đọc MLA-C01 exam guide lần 1.

Ngày 1:

- Đọc MLA-C01 overview và 4 domain.

Ngày 2:

- Học S3 data layout, CSV/JSON/Parquet.

Ngày 3:

- Học Glue/Athena basics.

Ngày 4:

- Học feature engineering, train/test split, data leakage.

Ngày 5:

- Lab: chuẩn bị dataset cho SageMaker.

Ngày 6:

- Ghi notes domain Data Preparation.

## Tuần 8: ML Model Development

Mục tiêu:

- Train và evaluate model trên SageMaker.

Ngày 1:

- Học model selection và built-in algorithms.

Ngày 2:

- Học training job và hyperparameter tuning.

Ngày 3:

- Học metrics: classification/regression.

Ngày 4:

- Lab: train model.

Ngày 5:

- Lab: evaluate model và ghi metrics.

Ngày 6:

- Ghi notes domain Model Development.

## Tuần 9: Deployment, Orchestration, Monitoring

Mục tiêu:

- Deploy model và hiểu MLOps basics.

Ngày 1:

- Học SageMaker endpoint, batch transform.

Ngày 2:

- Học Model Registry và model versioning.

Ngày 3:

- Học SageMaker Pipelines/Step Functions.

Ngày 4:

- Học CloudWatch monitoring, alarms.

Ngày 5:

- Học IAM, encryption, security cho ML.

Ngày 6:

- Lab: deploy endpoint hoặc batch inference.

## Tuần 10: MLA-C01 Exam Sprint

Mục tiêu:

- Practice exam.
- Chốt ngày thi MLA-C01 nếu sẵn sàng.

Ngày 1:

- Domain 1 review: Data Preparation.

Ngày 2:

- Domain 2 review: Model Development.

Ngày 3:

- Domain 3 review: Deployment and Orchestration.

Ngày 4:

- Domain 4 review: Monitoring, Maintenance, Security.

Ngày 5:

- Mock exam timed.

Ngày 6:

- Sửa lỗi sai, quyết định thi hoặc thêm 1 tuần ôn.
