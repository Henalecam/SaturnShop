# Limpar dados antigos
Category.destroy_all

# Criar categorias
iphone_category = Category.create(name: 'iPhone')
ipad_category = Category.create(name: 'iPad')

# Criar produtos com categorias associadas
iphone = iphone_category.products.create(name: 'iPhone 16', description: 'O mais novo iPhone da Apple')
ipad = ipad_category.products.create(name: 'iPad Air', description: 'Tablet leve e poderoso')

# Criar variantes
iphone.product_variants.create([
                                 { variant_name: '128GB', price: 999.99, stock: 50 },
                                 { variant_name: '256GB', price: 1199.99, stock: 30 }
                               ])
ipad.product_variants.create([
                               { variant_name: '64GB', price: 599.99, stock: 20 },
                               { variant_name: '256GB', price: 799.99, stock: 15 }
                             ])
