# GleamGoods

A microservices-based GleamGoods application. Each service is independently deployable and communicates via APIs.

## Services

| Service | Language | Persistence | Description |
| ------- | -------- | ----------- | ----------- |
| [UI](./ui/README.md) | Java | N/A | Frontend — serves the HTML UI and aggregates calls to backend services |
| [Catalog](./catalog/README.md) | Go | MySQL | Product catalog API |
| [Cart](./cart/README.md) | Java | Amazon DynamoDB | Shopping cart API |
| [Checkout](./checkout/README.md) | Node | Redis | Checkout process API |
| [Orders](./orders/README.md) | Java | PostgreSQL | Orders API |

## DevOps

Infrastructure as code (Terraform) and Kubernetes manifests for deploying this project are maintained in a separate repository:
[GleamGoods-DevOps](https://github.com/dercioanselmo/GleamGoods-DevOps)

## Running localy

Each service includes a `docker-compose.yml` for local development. Refer to each service's README for specific instructions.
