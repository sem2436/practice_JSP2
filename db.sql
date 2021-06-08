DROP DATABASE IF EXISTS jspCommunity2;
CREATE DATABASE jspCommunity2;
USE jspCommunity2;

CREATE TABLE board (
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    `code` CHAR(10) NOT NULL UNIQUE,
    `name` CHAR(10) NOT NULL UNIQUE
);

# 공지사항
INSERT INTO board
SET regDate = NOW(),
updateDate = NOW(),
`code` = 'notice',
`name` = '공지사항';

INSERT INTO board
SET regDate = NOW(),
updateDate = NOW(),
`code` = 'guestBook',
`name` = '방명록';

INSERT INTO board
SET regDate = NOW(),
updateDate = NOW(),
`code` = 'free',
`name` = '자유게시판';


CREATE TABLE `member` (
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    loginId CHAR(50) UNIQUE NOT NULL,
    loginPw VARCHAR(200) NOT NULL,
    `name` CHAR(50) NOT NULL,
    `nickname` CHAR(50) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    adminLevel TINYINT(1) UNSIGNED NOT NULL DEFAULT 3 COMMENT '0 = 탈퇴 , 1 = 로그인정지, 2 = 일반회원, 3 = 인증된 회원 , 4 = 관리자'
);

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
`name` = "김민수",
`nickname` = "강바람",
`email` = "asdf1234@naver.com",
loginId = "user1",
loginPw = "user1";

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
`name` = "김미소",
`nickname` = "이또한지나가리",
`email` = "qwer1234@naver.com",
loginId = "user2",
loginPw = "user2";

#아티클
CREATE TABLE article (
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    boardId INT(10) UNSIGNED NOT NULL,
    memberId INT(10) UNSIGNED NOT NULL,
    title CHAR(100) NOT NULL,
    `body` LONGTEXT NOT NULL,
    hitsCount INT(10) UNSIGNED NOT NULL DEFAULT 0
);

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
memberId = 1,
boardId = 1,
title = '제목1',
`body` = '내용1';

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
memberId = 1,
boardId = 1,
title = '제목2',
`body` = '내용2';

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
memberId = 2,
boardId = 2,
title = '제목3',
`body` = '내용3';

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
memberId = 2,
boardId = 2,
title = '제목4',
`body` = '내용4';

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
memberId = 2,
boardId = 2,
title = '제목5',
`body` = '내용5';
