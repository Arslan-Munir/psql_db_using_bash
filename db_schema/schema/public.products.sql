CREATE TABLE IF NOT EXISTS public.products(
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	categoryid INT,
	CONSTRAINT fk_category
		FOREIGN KEY (categoryid)
			REFERENCES public.categories(id)
);
