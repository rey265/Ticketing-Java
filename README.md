
# Ticket-Java-TeamProject

- **일정**: 2024년 5월 20일 ~ 2024년 6월 9일 (총 21일)
- **주제**: AWS 클라우드와 온프레미스를 활용한 하이브리드 클라우드 구축
- **팀 소개**: 안녕하세요! 팀 Ticket-Java 입니다.
    
    Ticket-Java는 하이브리드 클라우드의 장점을 살려 고객의 요구 사항에 따라 트래픽에 대한 탄력적 대응 및 고가용성 운영환경 IT 솔루션을 제공합니다.
    
- **시나리오**

**배경:**
티켓 예매 사이트 Ticket-Java는 다양한 공연과 이벤트 티켓을 판매하는 온라인 플랫폼입니다. 성수기나 인기 공연 티켓 오픈 시 대규모 트래픽이 발생하여 안정적이고 신속한 서비스를 제공하기 위해 AWS EKS 기반의 인프라 구축이 필요합니다.

**주제:**
티켓 예매 사이트의 고가용성과 확장성을 보장하기 위한 AWS EKS 기반의 클라우드 인프라 설계 및 구축

**목적:**
티켓 예매 서비스의 안정적 운영을 위해 트래픽 급증에 대비한 자동화된 확장 기능을 제공하고, 신속하고 일관된 배포를 통해 사용자 경험을 최적화하는 것입니다.

**목표:**
1. **AWS EKS 기반 서비스 운영**: EKS 환경에서 높은 가용성과 확장성을 유지하고, Argo-CD를 통해 Health Check, 배포, Auto-Scaling을 자동화하여 안정적 서비스를 보장합니다.
2. **Auto-Scaling 설정**: 노드와 파드의 수를 자동으로 조정하여 트래픽 증가에 대응하며, WEB 파드는 최대 12개, WAS 파드는 최대 6개까지 확장 가능합니다.
3. **DB 이중화 및 캐싱**: AWS RDS를 Active-Standby 구조로 이중화하고, Redis를 활용해 인메모리 캐싱을 적용하여 데이터베이스 성능을 최적화합니다.
4. **과부하 대응 및 모니터링**: 실시간 모니터링을 통해 트래픽 급증 상황에 신속히 대응하고, Auto-Scaling을 통해 서버 과부하를 해소하여 안정적인 서비스를 제공합니다.


<br>

## 🔖 최종 결과

<img src="https://github.com/rey265/Ticketing-Java/blob/main/Ticketing-Java-main/Ticket_Java_image/home.png">


<br>


### 네트워크 시설 설계 및 관리운용 가능

**네트워크 설계**

**사용 장비 및 프로그램 확인**

**Web, Was, DB 구현가능**

<br>

## 💻 프로젝트 인원(5명)

| 이름 |
| --- |
| 임 성 현(PM) |
| 유 주 영 |
| 손 은 지 |
| 강 수 호 |
| 차 재 성 |

<br>

## ✍ 기술 스택

- **컨테이너 및 오케스트레이션**: Docker, Kubernetes (AWS EKS)
- **자동화 및 CI/CD**: Git, ArgoCD
- **데이터베이스 및 스토리지**: AWS RDS, ElastiCache
- **네트워킹 및 보안**: VPC, VPN, NAT 게이트웨이, AWS WAF
- **성능 테스트 및 모니터링**: JMeter, Whatap


<br>


## 🛠️ Application Architecture
<br>

<img src="https://github.com/rey265/Ticketing-Java/blob/main/Ticketing-Java-main/Ticket_Java_image/Application%20Architecture.png">


<br>

<br>

## 🎯 API Endpoints

- Manifestfile
    - cluster
    - ingress
- WEB,WAS
    - root-page
    - login-page
    - concert-page

<br>

# 📝 프로젝트 진행 관리: Notion

### 🔗 URL
https://sonrey.notion.site/Ticket-Java-c951b8feb9014e998c81ac796355baba?pvs=4

<img src="https://github.com/rey265/Ticketing-Java/blob/main/Ticketing-Java-main/Ticket_Java_image/Ticketing-Java-notion">

<br>

# 📝 발표 PPT:

https://online.fliphtml5.com/viwpp/twio/

<br>

<img src="https://github.com/rey265/Ticketing-Java/blob/main/Ticketing-Java-main/Ticket_Java_image/ppt.png">
