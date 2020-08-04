CREATE TABLE IF NOT EXISTS public.product_photos(
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	url VARCHAR(50) NOT NULL,
	productid INT,
	CONSTRAINT fk_product
		FOREIGN KEY (productid)
			REFERENCES public.products(id)
);
