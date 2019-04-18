CREATE TABLE golfer (
  id bigserial PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  pga_wins INT,
  major_wins INT
);

CREATE TABLE caddy (
  id bigserial PRIMARY KEY,
  golfer_id bigint references golfer(id) NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(50) NOT NULL
);

CREATE TABLE golf_course (
  id bigserial PRIMARY KEY,
  golfer_id bigint references golfer(id) NOT NULL,
  name VARCHAR(100) NOT NULL,
  city VARCHAR(100) NOT NULL,
  state VARCHAR(2) NOT NULL
);
