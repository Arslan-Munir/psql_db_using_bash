CREATE TABLE IF NOT EXISTS public.categories(
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);