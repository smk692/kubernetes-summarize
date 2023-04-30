# /* 기본 명령어 */

# 파일, URL 또는 디렉터리에서 Kubernetes 리소스를 생성하거나 업데이트합니다.
kubectl apply

# 포드, 서비스, 배포 등과 같은 Kubernetes 리소스에 대한 정보를 검색합니다.
kubectl get

# 포드, 배포 또는 서비스와 같은 Kubernetes 리소스에 대한 자세한 정보를 표시합니다.
kubectl describe

# 하나 이상의 Kubernetes 리소스를 삭제합니다.
kubectl delete

# Kubernetes 컨테이너에 대한 로그를 인쇄합니다.
kubectl logs

# Kubernetes 컨테이너 내에서 명령을 실행합니다.
kubectl exec

# 하나 이상의 로컬 포트를 포드로 전달합니다.
kubectl port-forward

# 새 배포의 롤아웃을 관리합니다.
kubectl rollout

# 배포 또는 복제 세트의 복제본 수를 조정합니다.
kubectl scale

# 텍스트 편집기에서 Kubernetes 리소스를 편집합니다.
kubectl edit

# Kubernetes 리소스에 레이블을 추가하거나 제거합니다.
kubectl 레이블

# Kubernetes 리소스에 대한 주석을 추가하거나 제거합니다.
kubectl annotate

# Kubernetes 클러스터에 대한 정보를 표시합니다.
kubectl cluster-info

# 실제로 리소스를 생성하거나 업데이트하지 않고 Kubernetes 매니페스트 파일의 유효성을 검사합니다.
kubectl apply --dry-run

# Kubernetes 리소스, 필드 및 작업에 대한 문서를 표시합니다.
kubectl explain: Kubernetes

########################################################################ㅍ


# 쿠버네티스 클러스터에서 사용할 수 있는 오브젝트 목록 조회
kubectl api-resources 

# 쿠버네티스 오브젝트의 설명과 1레벨 속성들의 설명
# apiVersion, kind, metadata, spec, status
kubectl explain pod
kubectl explain deployment

# 쿠버네티스 오브젝트 속성들의 구체적인 설명 (Json 경로)
# kubectl explain <type>.<fieldName>[.<fieldName>]
kubectl explain pods.spec.containers

# 쿠버네티스 클러스터에서 속한 노드 목록 조회
kubectl get nodes

# 쿠버네티스 오브젝트 생성/변경 (path 확인 필요)
kubectl apply -f deployment.yaml

# 실행 중인 Pod(컨테이너) 목록 조회 
kubectl get pods

# 애플리케이션 배포 개수를 조정 (replicas: 복제본)
kubectl scale -f deployment.yaml --replicas=3

# 현재 실행 중인 오브젝트 설정과 입력한 파일의 차이점 분석
kubectl diff -f deployment.yaml

# 쿠버네티스 오브젝트의 spec을 editor로 편집
kubectl edit deployment/nginx-deployment: 

# 로컬 포트는 파드에서 실행 중인 컨테이너 포트로 포워딩
kubectl port-forward pod/nginx-deployment-{컨테이너id} 8080:80

# 현재 실행중인 컨테이너 프로세스에 접속하여 로그 확인
kubectl attach deployment/nginx-deployment -c nginx

# 현재 실행중인 컨테이너 프로세스에 모든 로그 출력 (-f: watch 모드)
kubectl logs deployment/nginx-deployment -c nginx -f

