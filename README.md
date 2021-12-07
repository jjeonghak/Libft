# **Libft**

##### Your very first own library

나만의 첫 번째 라이브러리

##### _Summary: This project aims to code a C library regrouping usual functions that you’ll be use for all your next projects. Version: 15_

_요약: 이 프로젝트의 목적은 흔히 쓰이는 함수들을 재구성하여 이후의 모든 프로젝트에서 사용될 C 라이브러리를 제작하는 것입니다. 버전 15_

<br>

## Common Instructions

- ##### _Your project must be written in accordance with the Norm. If you have bonus files/functions, they are included in the norm check and you will receive a 0 if there is a norm error inside._

  프로젝트는 Norm 규칙에 맞춰 작성되어야 합니다. 보너스 파일/함수가 존재할 경우, 그 또한 norm 검사에 포함되며 norm error가 있을 시 0점을 받게 됩니다.

- ##### _Your functions should not quit unexpectedly (segmentation fault, bus error, double free, etc) apart from undefined behaviors. If this happens, your project will be considered non functional and will receive a 0 during the evaluation._

  함수들은 정의되지 않은 행동들과 별개로 예기치 않게 중단되어서는 안 됩니다.(예를 들어, segmentation fault, bus error, double free 등) 만약 이렇게 중단되면, 당신의 프로젝트는 작동하지 않는 것으로 여겨지고 평가에서 0점을 받을 것입니다.

- ##### _All heap allocated memory space must be properly freed when necessary. No leaks will be tolerated._

  필요한 경우 heap에 할당된 모든 메모리 공간은 적절하게 해제되어야 합니다. 메모리 누수는 용납될 수 없습니다.

- ##### _If the subject requires it, you must submit a Makefile which will compile your source files to the required output with the flags -Wall, -Wextra and -Werror, and your Makefile must not relink._

  과제에서 필요한 경우, **-Wall -Wextra -Werror** 플래그를 지정하여 컴파일을 수행하는 **Makefile**을 제출해야 합니다. Makefile은 relink 되어서는 안 됩니다.

- ##### _Your Makefile must at least contain the rules $(NAME), all, clean, fclean and re._

  **Makefile**은 최소한 **$(NAME), all, clean, fclean, re** 규칙을 포함해야 합니다.

- ##### _To turn in bonuses to your project, you must include a rule bonus to your Makefile, which will add all the various headers, librairies or functions that are forbidden on the main part of the project. Bonuses must be in a different file \_bonus.{c/h}. Mandatory and bonus part evaluation is done separately._

  프로젝트에 보너스를 제출하려면, Makefile에 **보너스 규칙**을 포함해야 합니다. 이 보너스 규칙은 프로젝트의 메인 파트에서 금지되었던 모든 다양한 헤더, 라이브러리, 또는 함수들을 추가하여야 합니다. 보너스 과제는 반드시 \_**bonus**.{c/h}라는 별도의 파일에 있어야 합니다. 반드시 수행하여야 하는 메인 파트의 평가와 보너스 파트의 평가는 별도로 이뤄집니다.

- ##### _If your project allows you to use your libft, you must copy its sources and its associated Makefile in a libft folder with its associated Makefile. Your project’s Makefile must compile the library by using its Makefile, then compile the project._

  만일 프로젝트에서 여러분의 libft 사용을 허용한다면, 소스들과 관련 Makefile을 함께 루트 폴더 안에 있는 libft 폴더에 복사해야 합니다. 프로젝트의 Makefile은 우선 libft의 Makefile을 사용하여 라이브러리를 컴파일한 다음, 프로젝트를 컴파일해야 합니다.

- ##### _We encourage you to create test programs for your project even though this work won’t have to be submitted and won’t be graded. It will give you a chance to easily test your work and your peers’ work. You will find those tests especially useful during your defence. Indeed, during defence, you are free to use your tests and/or the tests of the peer you are evaluating._

  **이 과제물을 제출할 필요가 없고, 채점 받을 필요가 없을지라도,** 저희는 여러분들이 프로젝트를 위한 테스트 프로그램을 만들 것을 권장합니다. 이것은 여러분의 과제물과 동료들의 과제물을 쉽게 테스트할 수 있게 도울 것입니다. 또한, 평가를 진행할 때 이러한 테스트 프로그램들이 특히 유용하다는 사실을 알게 될 것입니다. 평가 시에는 여러분의 테스트 프로그램과 평가 받는 동료의 테스트 프로그램들을 당연히 자유롭게 사용할 수 있습니다.

- ##### _Submit your work to your assigned git repository. Only the work in the git repository will be graded. If Deepthought is assigned to grade your work, it will be done after your peer-evaluations. If an error happens in any section of your work during Deepthought’s grading, the evaluation will stop._
  할당된 git 저장소에 과제물을 제출하세요. 오직 git 저장소에 있는 과제물만 등급이 매겨질 것입니다. Deepthought가 평가하는 과제의 경우엔, 동료평가 이후에 Deepthought가 수행됩니다. 만약 Deepthought 평가 중에 오류가 발생한다면, 그 즉시 평가는 중지될 것입니다.

<br>

restrict 사용금지(C99 이후 버전에서 사용가능, 메모리 접근 최적화 한정자)
컴파일러 최적화를 통해 빠른 성능을 낼 수 있으나 동일한 메모리 공간에 대한 접근이 없다는 것이 보장되어야만 예상하지 못한 결과 방지가능

ar 정적 라이브러리 
r : 새로운 오브젝트 파일이면 추가, 기존 파일이면 치환
c : 아카이브 생성, 존재하지 않는 아카이브 작성하는 경우 경고 메세지 출력하지 않음
s : ranlib(1)과 마찬가지로 아카이브 인덱스 생성, 링크속도 최적화 및 에러 방지 

##### _1.  ft_atoi : 문자열을 인트형으로 변환_
		43 : sign 문자열의 부호를 나타내는 변수
		44 : check 반복문을 끝내기 위한 플래그, 오버*언더플로 발생시
		45 : result 결과를 담을 변수, long long max, min을 확인하기 위해 long long 선언
		50-51 : ft_isspace 호출하며 공백필터링
		52-58 : 문자열 내의 부호 판별, +나 -인 경우 sign 값 변경후 문자열 인덱스값 1증가
		59-65 : ft_isdigit 호출하며 문자열이 숫자가 아니거나 check의 값이 1이 되면 종료
			result 값이 ft_set_limit에 의해 변경, check 값으로 언더*오버플로 확인
		66 : sign 값과 인트형으로 캐스팅한 result값을 곱해 반환

	ft_isspace : 인트값이 공백문자에 해당하는지 판별
		17-18 : 인트값이 32 또는 9에서 13 사이의 값인 경우 1 반환
		19 : 이외에 값은 0 반환

	ft_set_limit : 문자형인덱스를 인트형으로 변경 후 결과값에 저장
		24 : temp 새로운 결과값, 기존값과 오버*언더플로 비교를 위한 값
		26 : 기존 결과값에 10을 곱한 후 문자형인덱스값을 인트형으로 변경한 값을 더하여 temp에 저장
		27-31 : sign 값이 1이고 새로운 결과값이 기존 결과값보다 작다면 오버플로, 
				check 플래그 1로 변경 후 -1 반환
		32-36 : sign 값이 -1이고 새로운 결과값과 기존 결과값에 -를 곱했을 때 새로운 결과값이 크다면 언더플로, 
				check 플래그 1로 변경 후 0 반환
		37-38 : 이외의 상황은 정상적으로 새로운 결과값 반환

	/* str == NULL -> segmentation fault */
	/* -9,223,372,036,854,775,808 -> underflow 0 */
	/* 9,223,372,036,854,775,807 -> overflow -1 */



##### 2. ft_bzero : 알규먼트로 받은 주소값부터 n만큼 주소인덱스값을 0으로 설정
		17-19 : 1 바이트 씩 주소값 연산을 위해 unsinged char 포인터 ptr
		20-25 : 1 바이트 씩 주소값을 올리면서 n만큼 인덱스 값을 0으로 설정

	/* n == 0 -> warning */
	/* s == NULL -> segmentation fault */
	/* s == NULL, n == 0 -> warning */  


**3. ft_calloc : 멜록을 이용해 심볼릭 포인터에 메모리를 할당 후 주소인덱스값을 0으로 설정, 호출한 후 메모리 해제(free) 필수**
		17-19 : ptr 데이터의 갯수 * 타입크기만큼 동적 메모리 할당
		22 : ft_bzero 호출

	/* count * size == 0 -> malloc(0) 동작 구현에 따라 상이 */
	/* 일반적으로 유효하고 고유하지만 역참조되어서는 안되는 포인터 또는 NULL 반환 */
	/* man page : if size is 0, then malloc() returns either NULL, 
	or a unique pointer value that can later be successfully passed to free */


**4. ft_isalnum : 인트형 값이 알파벳과 정수에 해당하는지 판단**
**5. ft_isalpha : 인트형 값이 알파벳에 해당하는지 판단**
**6. ft_isascii : 인트형 값이 아스키코드에 해당하는지 판단**
**7. ft_isdigit : 인트형 값이 정수에 해당하는지 판단**
**8. ft_isprint : 인트형 값이 출력가능한지 판단**

	/* ISO/IEC 9899:TC2 7.4/1 */
	/* their domain is restricted to the small positive integers 
	representable in an unsigned char, plus the value of EOF */
	/* EOF is traditionally -1, but may be any negative integer, 
	and hence distinguishable from any valid character code */


**9. ft_itoa : 인트형 값을 문자열로 변환**
		33 : nlen 인트형값의 길이
		34 : ptr 변환후 값을 저장하기 위한 문자형 포인터
		36 : ft_intlen 호출후 nlen에 값 저장
		37 : ptr에 nlen + 1('\0') 크기만큼 동적 메모리 할당
		40 : 문자열의 마지막 인덱스값 '\0'
		41-45 : 인트형 값이 음수일 경우 문자열의 맨 처음 인덱스값 '-' 및 nlen - 1
		46-53 : 인트형 값이 음수인 경우와 양수인 경우의 채워넣는 주소값이 '-'로 인해 다르므로 경우를 나누어 인덱스값 삽입
		54 : 문자열 포인터 반환

	ft_intlen : 인트형 값의 길이 반환
		17-22 : cnt 문자열의 길이, 음수인 경우 '-' 고려하여 + 1
		23-27 : 10으로 나눠가며 cnt 값 증가


**10. ft_lstadd_back : 리스트의 맨 마지막 노드 뒤에 새로운 노드 추가**
**11. ft_lstadd_front : 리스트의 맨 처음 노드 앞에 새로운 노드 추가**
**12. ft_lstclear : 리스트의 처음 노드부터 del 함수를 적용시키면서 삭제**
**13. ft_lstdelone : 리스트의 한개 노드 del 함수 적용후 삭제**
**14. ft_lstiter : 리스트에 한개의 노드씩 f 함수 적용**
**15. ft_lstlast : 라스트의 마지막 노드 반환**
**16. ft_lstmap : 어떠한 리스트에 f 함수를 적용한 새로운 리스트 생성**
**17. ft_lstnew : 한개의 새로운 노드 생성**
**18. ft_lstsize : 리스트의 크기 반환**

**19. ft_memchr : 주소의 인덱스값 중에 원하는 인덱스 값이 존재하는지 선택한 구간 내에서 탐색 후 주소 반환**
		17 : ptr 주소값 연산을 위한 포인터
		20-25 : 메모리 인덱스 값 중에 찾고자 하는 인트형 값 존재시 주소값 반환
		26 : n바이트만큼 탐색 후 NULL 반환

	/* n == 0 -> NULL */
	/* s == NULL -> segmentation fault */
	/* n == 0, s == NULL -> NULL */


**20. ft_memcmp : 두 주소의 인덱스 값이 선택한 구간 내에서 동일한지 비교**
		17-18 : ptr1, ptr2 주소값 연산을 위해 심볼릭 포인터 형변환을 위한 포인터
		19 : cnt n만큼 횟수를 세기위한 변수
		24-29 : 두 문자열을 탐색하면서 서로 다른 값이 나오면 그 인덱스값 차이를 반환
		30 : n바이트만큼 탐색 후 0 반환

	/* n == 0 -> 0 */
	/* s1 == NULL || s2 == NULL -> segmentation fault */
	/* s1 == NULL && s2 == NULL -> segmentation fault */
	/* n == 0, s1 == NULL || s2 == NULL -> 0 */


**21. ft_memcpy : 한 주소의 인덱스 값을 다른 주소에 선택한 구간만큼 저장**
		17-18 : ptr1, ptr2 주소값 연산을 위한 포인터
		24-25 : n바이트만큼 dst에 src 복사
		26 : dst 반환

	/* n == 0 -> dst */
	/* dst == NULL || src == NULL -> segmentation fault */
	/* dst == NULL && src == NULL -> NULL */
	/* n == 0, dst == NULL || src == NULL -> dst */
	/* n == 0, dst == NULL && src == NULL -> dst */

	/* restrict 한정자 사용으로 memmove보다 최적화로 인한 빠른 성능 */
	/* 하지만 동일한 메모리 공간에 대한 접근이 없다는 보장필요 */
	/* memccpy는 인트형 c를 찾을 때까지 복사, 찾은 경우 그 다음 주소값 반환, 못찾은 경우 NULL 반환*/


**22. ft_memmove : 한 주소의 인덱스 값을 다른 주소에 선택한 구간만큼 저장**
		24-28 : dst 주소값이 src 주소값보다 작은 경우 src의 처음 인덱스부터 복사
		29-33 : dst 주소값이 src 주소값보다 큰 경우 src의 마지막 인덱스부터 복사
		35 : dst 반환

	/* n == 0 -> dst */
	/* dst == NULL || src == NULL -> segmentation fault */
	/* dst == NULL && src == NULL -> dst */
	/* n == 0, dst == NULL || src == NULL -> dst */


**23. ft_memset : 주소의 인덱스 값을 원하는 인트형 값으로 선택한 구간만큼 저장**
		20-25 : 1 바이트 씩 len 바이트만큼 주소인덱스값 인트형 값으로 설정
		26 : b 반환

	/* n == 0 -> warning, b */
	/* b == NULL -> segmentation fault */
	/* n == 0, b == NULL -> warning, b */
	/* C에 함수 프로토타입이 추가되기 이전 함수들은 알규먼트로 char형 사용불가 */

**24. ft_putchar_fd : 정상적으로 파일을 열었다면 인트형 값 삽입**
**25. ft_putendl_fd : 정상적으로 파일을 열고 문자열이 비어있지 않다면 문자열과 개행 삽입**
**26. ft_putnbr_fd : 정상적으로 파일을 열었다면 정수값 삽입**
**27. ft_putstr_fd : 정상적으로 파일을 열었다면 문자열 삽입**
	
	/* fd, file descriptor */
	/* fd typically have non-negative integer values, 
	with negative values being reserved to indicate "no value" or error conditions */

	/* write funtion fd */
	/* 0 : stdin, 1 : stdout, 2 :stderr */


**28. ft_split : 문자열 내에서 원하는 인덱스 값을 기준으로 문자열 분할**
		86 : ptr 결과를 저장할 이중포인터
		87 : rowcnt 분할될 문자들의 갯수
		91 : ft_get_row 호출하여 결과값 rowcnt에 저장
		92 : 문자형 포인터이므로 rowcnt + 1 만큼 할당
		96 : ft_set_idx 호출하여 결과값 ptr에 저장

	ft_error : 이중포인터 메모리 해제
		20-24 : 각각의 포인터들의 메모리 해제
		25 : 이중포인터 메모리 해제

	ft_get_row : 문자열 내에서 원하는 인덱스로 분할되는 문자열의 갯수 반환
		31 : cnt 분할되는 문자열 갯수
		32 : subcnt 분할되는 문자열의 길이
		33 : i 문자열 순회를 위한 변수
		38-51 : 문자열을 탐색하면서 원하는 인덱스 값 발견시 이전까지의 문자열의 길이에 따라 문자열의 갯수 카운트
		52 : 마지막 문자열 처리

	ft_set_idx : 이중포인터의 각각의 포인터 인덱스에 문자열 삽입
		59 : cnt 분할되는 문자열의 길이
		60 : i 문자열 순회를 위한 변수
		61 : j 분할되는 문자열의 갯수 카운트를 위한 변수
		68-69 : 원하는 인덱스 값이 아닐때까지 i 값 증가
		70-71 : 분할되는 문자열의 길이 카운트, 즉 원하는 인덱스 값이 나올때까지 cnt 증가
		72-76 : 분할되는 문자열의 길이만큼 메모리 할당 후 복사
		77 : 분활되는 문자열의 길이만큼 i에 더해서 i + cnt부터 다시 순회시작
		78 : 분활되는 문자열의 길이 0 초기화
		79 : 분활되는 문자열의 갯수 카운트


**29. ft_strchr : 문자열 내에서 원하는 인덱스 값이 존재하는 주소 반환**
	/* s == NULL -> segmentation fault */
	/* no c in s -> NULL */


**30. ft_strdup : 멜록을 이용해 원하는 문자열의 크기만큼 메모리를 할당 후 복사**
	호출한 후 메모리 해제(free) 필수
	/* s1 == NULL -> segmentation fault */
	/* strdup is a Posix function, and it performs dynamic memory allocation */


**31. ft_striteri : 문자열 내 각각의 인덱스 값에 f 함수 적용**
**32. ft_strjoin : 멜록을 이용해 메모리 할당 후 문자열 두개를 이어서 하나의 문자열 반환
	호출한 후 메모리 해제(free) 필수**


**33. ft_strlcat : 선택한 구간 내에서 한 문자열의 인덱스 값을 다른 문자열의 마지막부터 저장**
	24-28 : src 문자열의 마지막까지 복사 또는 '\0'을 포함해서 dstsize의 크기만큼 복사
	29-30 : dst의 길이가 선택한 구간 dstsize보다 작은 경우 복사가 이루어지지 않고 src 길이와 dstsize의 합 반환
	31-35 : 복사가 된 후 마지막 인덱스에 '\0' 삽입되고 src와 dst 길이의 합 반환

	/* dst == NULL || src == NULL -> segmentation fault */


**34. ft_strlcpy : 선택한 구간만큼 문자열 복사**
		18 : totalsize 최종적으로 복사되는 바이트 크기
		23-26 : totalsize 결정, src의 길이가 dstsize보다 큰 경우 '\0'를 고려해서 dstsize - 1
		28 : dst의 '\0' 고려

	/* dstsize == 0 -> src 길이 */
	/* dst == NULL || src == NULL -> segmentation fault */
	/* dstsize == 0, dst == NULL -> src 길이 */
	/* dstsize == 0, src == NULL -> segmentation fault */

	/* char *strcpy(char *dst, const char *src) */
	/* src의 '\0'를 포함하여 dst에 복사 */
	/* 버퍼 오버플로 공격을 통해 실행 중인 프로그램의 기능을 임의로 변경하기 쉬움 */

	/* char *strncpy(char *dst, const char *src, size_t len) */
	/* src에서 dst로 최대 len만큼 복사 */
	/* len보다 src의 길이가 큰 경우 dst에 '\0' 보장안됨 */
	/* 반대의 경우 나머지 빈 메모리는 '\0'으로 채움 */

	/* strn* and strl* */
	/* buffer overflow or buffer overrun */
	/* 메모리를 다루는 데에 오류가 발생하여 잘못된 동작을 하는 프로그램의 취약점 */
	/* 데이터를 버퍼에 저장할 때 지정한 곳 이외의 바깥 공간에 저장하는 것 */
	/* 어떤 영역의 메모리에서도 내장된 데이터 접근 또는 덮어쓰기 보호 기능을 제공하지 않으며
	어떤 배열에 기록되는 데이터가 그 배열의 범위 안에 포함되는지 검사하지 않아 발생 */


**35. ft_strlen : 문자열의 길이 반환**
**36. ft_strmapi : 멜록을 이용해 메모리 할당 후 각각의 문자열 인덱스 값에 함수 f를 적용
	호출한 후 메모리 해제(free) 필수**

**37. ft_strncmp : 한문자열이 종료되거나 선택한 구간까지 두 문자열을 비교하여 다르면 그 차이 반환**
	/* n == 0 -> 0 */
	/* s1 == NULL || s2 == NULL -> segmentation fault */
	/* n == 0, s1 == NULL || s2 == NULL -> 0 */


**38. ft_strnstr : 한문자열의 선택한 구간 내에서 탐색문자열이 존재하는지 판별**
		17 : i 문자열 haystack 순회를 위한 변수
		18 : j 문자열 needle 순회를 위한 변수
		24-25 : j가 needle 탐색이 종료되면 haystack에서 시작인덱스 반환
		26-27 : needle 탐색이 종료되기전에 haystack이 먼저 종료되면 NULL 반환
		28-29 : haystack과 needle의 인덱스 값이 같은 경우 j 증가
		30-36 : haystack과 needle의 인덱스 값이 다른 경우 그 인덱스 값이 needle의 처음 인덱스 값과 같은지 비교 후 j 값 초기화

	/* len == 0 -> NULL */
	/* len == 0, haystack == NULL -> NULL */
	/* haystack == NULL || needle == NULL -> segmentation fault */
	/* len == 0, haystack == NULL && needle == NULL -> segmentation fault */


**39. ft_strrchr : 문자열 인덱스 값 중에 인트형 변수와 같은 값이 있는지 탐색**
	여러개라면 가장 나중 위치 반환
	/* s == NULL -> segmentation fault */
	/* strchr + reverse = strrchr */


**40. ft_strtrim : 문자열의 처음과 나중에서 베이스 문자열에 해당하는 문자가 아닌 위치를 각각 탐색해 그 구간만 반환**
		40-41 : 문자열의 앞부분 탐색을 위한 head, 뒷부분 탐색을 위한 tail
		47-48 : ft_getstrip 호출한 결과값 저장, 플래그에 따라 동작
		51 : head부터 tail까지의 문자와 '\0' 고려한 메모리 할당

	ft_getstrip : 문자열을 순회하며 set문자열에 존재하는 인덱스 값인지 판별
		21-24 : flag가 0인 경우 앞에서 부터, 1인 경우 뒤에서 부터 순회
		25-33 : set에 탐색하는 문자열의 인덱스값이 존재하는지 ft_strchr 호출하면서 문자열 탐색


**41. ft_substr : 문자열에서 선택한 인덱스부터 선택한 구간만큼 반환
**42. ft_tolower : 인트형 값이 대문자에 해당하면 32 증가한 값 반환
**43. ft_toupper : 인트형 값이 소문자에 해당하면 32 감소한 값 반환

