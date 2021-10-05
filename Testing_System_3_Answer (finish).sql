-- dòng chảy của code . 
-- 8 SELECT
-- 1 FROM
-- 2 [JOIN]
-- 3 [WHERE]
-- 4 [GROUP BY]
-- 5 [HAVING]
-- 6 [ORDER BY]
-- 7 [LIMIT]

USE SQL_LESSON_3;
-- lấy dữ liệu 

SELECT 	* 
FROM 	`Account` ;
-- lấy dữ liệu email, usename, createdate từ bảng account

SELECT 	email, username, createdate 
FROM 	`Account` ;
-- lấy dữ liệu từ bẳng account giá trị lớn hơn 3 nhọ hơn 5 

SELECT 	* 
FROM 	`account`
 WHERE	AccountID > 3 AND AccountID < 5 ;
-- lấy dữ liệu chỉ những con số trong ngoặc 
-- thây vì dùng AccountID=1 AccountID=3 AccountID=5 ... sẽ dùng IN ()
SELECT 	* 
FROM 	`account` 
WHERE	AccountID IN ( 1, 3, 5, 7 );

-- NOT IN lấy dữ liệu k nằm trong những số đã chọn 
SELECT 	* 
FROM 	`account` 
WHERE	AccountID NOT IN ( 1, 3, 5, 7 );
-- hoặc là notbetwen , sẽ k lấy những số đẫ chọn 
SELECT 	* 
FROM 	`account` 
WHERE	AccountID NOT BETWEEN 1 AND 7 ;

-- tìm kiems những ng tên han (%) là còn nhiều chữ cái nữa 
-- han_ chỉ thỏa mãn thêm 1 chữ cái (han_ =hanh1 hana hanb)
SELECT 	* 
FROM 	`account` 
WHERE	email LIKE "%han%";

-- lấy dữ liệu k có dung not null 
SELECT 	* 
FROM 	`account` 
WHERE email IS NOT NULL ;

-- sắp xếp theo thứ ý của mình (DESC giảm dần -- ASC tăng dần ) 
SELECT 	* 
FROM 	`account` 
ORDER BY AccountID DESC ;

-- sắp xếp tên , thời gian , department theo ý của mình sẽ dùng 
SELECT 	* 
FROM 	`account` 
ORDER BY	username ASC , fullname ASC; 
SELECT 	* 
FROM 	`account` 
ORDER BY username DESC , fullname DESC; 

/*-- làm bài tập --*/ 
-- question 3 lấy id của phòng ban 'sale'
SELECT DepartmentID 
FROM Department 
WHERE DepartmentName = N'sale' ;

-- question 4 lấy ra thông tin account có full name dài nhất .
-- MAX(), Length()
SELECT MAX(char_length(FullName))
FROM `account`;
-- SELECT x FROM Acc WHERE length(FN) = max
SELECT *, length(FullName)
FROM `account`
WHERE length(FullName) = (	SELECT MAX(length(FullName))
							FROM `account`);
-- question 5 Lấy ra thông tin account có full name dài nhất và thuộc phòng ban có id = 3 
SELECT 	*
FROM 	`account`
WHERE FullName ;

-- question 6 Lấy ra tên group đã tham gia trước ngày 20/12/2019
SELECT 	groupname 
FROM 	`group`
 WHERE createdate < '2019-12-20';

-- question 7 Lấy ra ID của question có >= 4 câu trả lời
-- Having va Where deu dung de kiem tra Dieu kien
-- Khac: Where KTDK tai bang cua FROM
		-- Having la KTDK sau khi da duoc nhom boi Group BY
-- Group by xuat hien khi can` count -> kiem tra dk bang Having
SELECT QuestionID 
FROM answer 
GROUP BY questionID HAVING COUNT(questionID) >=4 ;

-- question 8  Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày 20/12/2019
SELECT `code`
FROM  	exam
WHERE Duration >=60
AND createdate <'2019-12-20';

-- question 9 Lấy ra 5 group được tạo gần đây nhất
SELECT *
FROM `group`
ORDER BY CreateDate limit 5;

-- question	10 Đếm số nhân viên thuộc department có id = 2
SELECT `COUNT` (accountID)
AS 'so nhan vien'
FROM `account` 
WHERE DepartmentID = 2 ;
-- question 11 Lấy ra nhân viên có tên bắt đầu bằng chữ "D" và kết thúc bằng chữ "o"
SELECT Fullname 
FROM `account`
WHERE fullname LIKE 'D%O';
-- question 12 Xóa tất cả các exam được tạo trước ngày 20/12/2019
SELECT *
FROM exam 
WHERE createdate < '2019-12-20' ;

DELETE
FROM examquestion
WHERE examID IN (2,5,8);


DELETE 
FROM  exam 
WHERE createdate < '2019-12-20';

-- question 13 Xóa tất cả các question có nội dung bắt đầu bằng từ "câu hỏi" 
SELECT *
FROM  Question
WHERE Questionid ;

DELETE
FROM question	
WHERE content = 'câu hỏi' ; 
-- question 14 Update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và email thành loc.nguyenba@vti.com.vn
UPDATE `Account`
SET 	Fullname = "Nguyễn Bá Lộc" , Email = "loc.nguyenba@vti.com.vn"
WHERE 	Accountid = 5 ; 
-- question 15 update account có id = 5 sẽ thuộc group có id = 4
UPDATE `Account`
SET 	Accountid = 5 
WHERE 	Groupid = 4 ;






-- 8 SELECT
-- 1 FROM
-- 2 [JOIN]
-- 3 [WHERE]
-- 4 [GROUP BY]
-- 5 [HAVING]
-- 6 [ORDER BY]
-- 7 [LIMIT]

-- COUNT (field_name), COUNT(*),COUNT(1)
-- thống kê đếm nhanh 
-- select * FROM history_buy WHERE customer_id = 4; 
-- select * FROM history_buy WHERE price >= 20000;
















