ALTER TABLE IF EXISTS public.product_photos
	ADD COLUMN IF NOT EXISTS description VARCHAR(50);

ALTER TABLE IF EXISTS public.product_photos
	DROP CONSTRAINT fk_product,
	ADD CONSTRAINT fk_product
	FOREIGN KEY (productid)
		REFERENCES public.products(id)
			ON DELETE CASCADE;

CREATE INDEX IF NOT EXISTS idx_product_photos_productid
	ON public.product_photos(productid);

ALTER TABLE IF EXISTS public.product_photos
	ADD COLUMN IF NOT EXISTS date date;
