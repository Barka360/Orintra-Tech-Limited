-- Prevent duplicate What We Do categories.
-- Existing duplicate Ready to Wear rows were cleaned before this constraint was added.
create unique index if not exists fashion_categories_name_unique
on public.fashion_categories (lower(trim(name)));
