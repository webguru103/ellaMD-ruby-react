# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Formulation.destroy_all

Formulation.create!([{
  name: 'Acne: mild inflammatory, mild PIH, melasma (sensitive)',
  amount1: '',
  amount2: ''
},{
  name: 'Acne: inflammatory',
  amount1: '',
  amount2: ''
},{
  name: 'Acne: comedonal, textural irregularities',
  amount1: '',
  amount2: ''
},{
  name: 'Rhytides/poikiloderma (sensitive)',
  amount1: '',
  amount2: ''
},{
  name: 'Rosacea/baseline erythema',
  amount1: '',
  amount2: ''
},{
  name: 'Lentigines 1',
  amount1: '',
  amount2: ''
},{
  name: 'Lentigines 2',
  amount1: '',
  amount2: ''
},{
  name: 'Melasma 1',
  amount1: '',
  amount2: ''
},{
  name: 'Melasma 2',
  amount1: '',
  amount2: ''
},{
  name: 'Apple formula',
  amount1: '',
  amount2: ''
},{
  name: 'Peach formula',
  amount1: '',
  amount2: ''
},{
  name: 'Orange formula',
  amount1: '',
  amount2: ''
},{
  name: 'Melasma 3',
  amount1: '',
  amount2: ''
},{
  name: 'Anti-aging 1',
  amount1: '',
  amount2: ''
},{
  name: 'Anti-aging 2',
  amount1: '',
  amount2: ''
},{
  name: 'Seborrhea 1',
  amount1: '',
  amount2: ''
},{
  name: 'Pseudofolliculitis',
  amount1: '',
  amount2: ''
},{
  name: 'Pityriasis alba',
  amount1: '',
  amount2: ''
},{
  name: 'Acne: pregnant',
  amount1: '',
  amount2: ''
},{
  name: 'PIH: actively inflamed',
  amount1: '',
  amount2: ''
},{
  name: 'Xerosis/Eczema',
  amount1: '',
  amount2: ''
},{
  name: 'Acne: aggressive',
  amount1: '',
  amount2: ''
},{
  name: 'Anti-oxidant',
  amount1: '',
  amount2: ''
},{
  name: 'Anti-aging 3',
  amount1: '',
  amount2: ''
},{
  name: 'Anti-aging 4',
  amount1: '',
  amount2: ''
},{
  name: 'Pear formula',
  amount1: '',
  amount2: ''
},{
  name: 'Grape formula',
  amount1: '',
  amount2: ''
},{
  name: 'Melasma 4',
  amount1: '',
  amount2: ''
},{
  name: 'Rosacea',
  amount1: '',
  amount2: ''
},{
  name: 'Keratosis pilaris',
  amount1: '',
  amount2: ''
},{
  name: 'Melasma 5',
  amount1: '',
  amount2: ''
},{
  name: 'Seborrhea 2',
  amount1: '',
  amount2: ''
}])

p "Create #{Formulation.count} Formulations"

Ingredient.destroy_all

Ingredient.create!([{
  name: 'Allantoin',
  minimum_percentage: '1.0',
  maximum_percentage: '2.0',
  description: 'Helps skin hydration and barrier function.',
  classes: '["Humectants"]'
},{
  name: 'Aloe',
  minimum_percentage: '1.0',
  maximum_percentage: '2.0',
  description: 'Reduces skin irritation and burn treatment.',
  classes: '["Anti-Inflammatories"]'
},{
  name: 'Alpha-Tocopherol (Vitamin E Acetate)',
  minimum_percentage: '1.0',
  maximum_percentage: '2.0',
  description: 'A natural antioxidant and anti inflammatory.',
  classes: '["Anti-Oxidants"]'
},{
  name: 'Arbutin',
  minimum_percentage: '2.0',
  maximum_percentage: '4.0',
  description: 'Naturally extracted from the Bearberry plant, helps prevent the formation of melanin and evens skin tone.',
  classes: '["Pigmentary Regulators"]'
},{
  name: 'Arnica',
  minimum_percentage: '2.0',
  maximum_percentage: '5.0',
  description: 'Plant extract that helps to prevent blood vessel leakage / undereye darkening.',
  classes: '["Anti-Ecchymotic"]'
},{
  name: 'Ascorbic Acid',
  minimum_percentage: '2.0',
  maximum_percentage: '15.0',
  description: 'Vitamin C, helps collagen synthesis, pigment evening, and stabilizing other ingredients.',
  classes: '["Pigmentary Regulators", "Anti-Oxidants"]'
},{
  name: 'Azelaic Acid',
  minimum_percentage: '5.0',
  maximum_percentage: '15.0',
  description: 'Naturally produced by yeast. Reduces bacteria on the skin and inflammation, and regulates pigmentation.',
  classes: '["Anti-Inflammatories", "Pigmentary Regulators"]'
},{
  name: 'Benzoyl Peroxide',
  minimum_percentage: '2.0',
  maximum_percentage: '5.0',
  description: 'Behaves as an antimicrobial without inducing antibiotic resistance.',
  classes: '["Anti-Microbials"]'
},{
  name: 'Caffeine',
  minimum_percentage: '0.5',
  maximum_percentage: '2.0',
  description: 'Quickly penetrates skin and reduces swelling; it is also an anti-oxidant.',
  classes: '["Anti-Inflammatory", "Vasoconstrictors"]'
},{
  name: 'Clindamycin',
  minimum_percentage: '0.5',
  maximum_percentage: '1.0',
  description: 'An antibiotic to stop growth of acne-causing bacteria like P. acnes and S. aureus.',
  classes: '["Antibiotics"]'
},{
  name: 'Dimethicone',
  minimum_percentage: '0.0',
  maximum_percentage: '10.0',
  description: 'Excellent for maintaining skin barrier function.',
  classes: '["Barriers"]'
},{
  name: 'Glycolic Acid',
  minimum_percentage: '5.0',
  maximum_percentage: '10.0',
  description: 'Derived from sugar cane, this alpha-hydroxy acid brightens skin without causing peeling at low concentrations.',
  classes: '["Keratolytics", "Pigmentary Regulators"]'
},{
  name: 'Green Tea Extract',
  minimum_percentage: '1.0',
  maximum_percentage: '2.0',
  description: 'Derived from Camellia sinensis, rich in antioxidant as well as xanthines (molecules that promote circulation).',
  classes: '["Anti-Oxidants"]'
},{
  name: 'Hyaluronic Acid',
  minimum_percentage: '0.5',
  maximum_percentage: '2.0',
  description: 'The most important agent for skin fullness and hydration.',
  classes: '["Humectants"]'
},{
  name: 'Hydroquinone',
  minimum_percentage: '2.0',
  maximum_percentage: '8.0',
  description: 'Naturally found in Bearberry plants, greatly improves hyperpigmentation.',
  classes: '["Pigmentary Regulators"]'
},{
  name: 'Hydrocortisone',
  minimum_percentage: '0.5',
  maximum_percentage: '2.5',
  description: 'A mild anti-inflammatory steroid.',
  classes: '["Steroids"]'
},{
  name: 'Kojic Acid',
  minimum_percentage: '2.0',
  maximum_percentage: '5.0',
  description: 'A product of sake formation, it prevents oxidative darkening.',
  classes: '["Keratolytics", "Pigmentary Regulators"]'
},{
  name: 'Lactic Acid',
  minimum_percentage: '5.0',
  maximum_percentage: '10.0',
  description: 'Alpha Hydroxy Acid (AHA) extracted from milk that helps exfoliate dead skin.',
  classes: '["Humectants"]'
},{
  name: 'Metronidazole',
  minimum_percentage: '0.5',
  maximum_percentage: '1.0',
  description: 'Decreases redness, swelling and the number of pimples caused by rosacea and acne.',
  classes: '["Antibiotics"]'
},{
  name: 'Niacinamide',
  minimum_percentage: '2.0',
  maximum_percentage: '4.0',
  description: 'Vitamin B3- improves inflammation, hydrates skin, and helps prevent skin cancer.',
  classes: '["Anti-Inflammatories", "Anti-Carcinogens"]'
},{
  name: 'Retinol',
  minimum_percentage: '0.1',
  maximum_percentage: '3.0',
  description: 'Vitamin A derivative. Important for skin cancer prevention, thickening of the epidermis, regulation of oil glands, collagen synthesis, and exfoliating dead skin cells. Less aggressive than other retinoids such as tretinoin.',
  classes: '["Retinoids"]'
},{
  name: 'Spironolactone',
  minimum_percentage: '2.0',
  maximum_percentage: '5.0',
  description: 'Effective in the treatment of hormonal acne.',
  classes: '["Hormonal Modulators"]'
},{
  name: 'Sulfur',
  minimum_percentage: '2.0',
  maximum_percentage: '4.0',
  description: 'A potent anti-inflammatory and also reduces bacterial growth.',
  classes: '["Anti-Inflammatories"]'
},{
  name: 'Zinc Oxide',
  minimum_percentage: '5.0',
  maximum_percentage: '10.0',
  description: '',
  classes: '["Barriers"]'
},{
  name: 'Sodium Sulfacetamide',
  minimum_percentage: '2.5',
  maximum_percentage: '10.0',
  description: 'A potent anti-inflammatory and also reduces bacterial growth.',
  classes: '["Anti-Microbials", "Anti-Inflammatories"]'
},{
  name: 'Tretinoin',
  minimum_percentage: '0.01',
  maximum_percentage: '0.1',
  description: 'Vitamin A derivative. Important for skin cancer prevention, thickening of the epidermis, regulation of oil glands, collagen synthesis, and exfoliating dead skin cells.',
  classes: '["Retinoids", "Anti-Carcinogens"]'
},{
  name: 'Tacrolimus',
  minimum_percentage: '0.03',
  maximum_percentage: '0.1',
  description: 'A potent non-steroidal anti-inflammatory.',
  classes: '["Anti-Inflammatories"]'
},{
  name: 'Palmitoyl Pentapeptide-4',
  minimum_percentage: '1.0',
  maximum_percentage: '5.0',
  description: 'A messenger peptide that tells cells to produce a stronger matrix (more collagen).',
  classes: '["Collagenesis Upregulator"]'
},{
  name: 'Bisabolol',
  minimum_percentage: '0.25',
  maximum_percentage: '1.0',
  description: 'Derived from chamomile and sage, it assists the penetration of other ingredients and acts as an anti-inflammatory.',
  classes: '["Delivery Enhancers", "Anti-Inflammatories"]'
},{
  name: 'Chrysin',
  minimum_percentage: '1.0',
  maximum_percentage: '3.0',
  description: 'Derived from passion flower, this flavonoid has potent anti-oxidant and anti-cancer activity.',
  classes: '["Anti-Oxidants", "Anti-Carcinogens"]'
},{
  name: 'Ascorbyl Palmitate',
  minimum_percentage: '0.5',
  maximum_percentage: '2.0',
  description: 'Vitamin C, helps collagen synthesis, pigment evening, and stabilizing other ingredients.',
  classes: '["Anti-Oxidants"]'
},{
  name: 'Coenzyme Q-10',
  minimum_percentage: '0.5',
  maximum_percentage: '2.0',
  description: 'An essential component of the body\'s metabolism, it helps the skin overcome injury and UV damage.',
  classes: '["Anti-Oxidants"]'
},{
  name: 'Urea',
  minimum_percentage: '1.0',
  maximum_percentage: '5.0',
  description: 'Created when the body breaks down proteins, helps to maintain skin hydration and pH balance.',
  classes: '["Humectant"]'
},{
  name: 'Estriol',
  minimum_percentage: '0.1',
  maximum_percentage: '0.5',
  description: 'A mild form of estrogen, best known for maintaining the “pregnancy glow”.',
  classes: '["Hormonal Modulators"]'
},{
  name: 'Estradiol',
  minimum_percentage: '0.01',
  maximum_percentage: '0.02',
  description: 'A potent form of estrogen, which increases collagen, thus maintaining skin firmness and preventing wrinkles.',
  classes: '["Hormonal Modulators"]'
},{
  name: 'Alpha Lipoic Acid',
  minimum_percentage: '1.0',
  maximum_percentage: '3.0',
  description: 'An essential acid for cell metabolism and a potent anti-oxidant.',
  classes: '["Pigmentary Regulators", "Anti-Oxidants"]'
},{
  name: 'Ketoconazole',
  minimum_percentage: '1.0',
  maximum_percentage: '3.0',
  description: 'An anti-fungal that targets nearly all of the problematic fungus on the skin.',
  classes: '["Anti-Fungal", "Anti-Inflammatories"]'
},{
  name: 'Vitamin K1',
  minimum_percentage: '0.25',
  maximum_percentage: '1.0',
  description: 'Active Vitamin K, an essential co-factor for blood clotting.',
  classes: '["Anti-Ecchymotic"]'
},{
  name: 'Triamcinolone',
  minimum_percentage: '0.025',
  maximum_percentage: '2.0',
  description: 'A mid-strength anti-inflammatory steroid.',
  classes: '["Steroid"]'
},{
  name: 'Ivermectin',
  minimum_percentage: '0.5',
  maximum_percentage: '1.0',
  description: 'An anti-parasitic compound that targets Demodex around the hair follicles, reducing inflammation.',
  classes: '["Anti-Parasitic"]'
},{
  name: 'Oxymetazoline',
  minimum_percentage: '0.5',
  maximum_percentage: '2.0',
  description: 'Stops over-dilation of blood vessels, reducing swelling and redness.',
  classes: '["Vasoconstrictors"]'
}])

p "Create #{Ingredient.count} Ingredients"

FormulationIngredient.destroy_all

FormulationIngredient.create!([{
  formulation_id: 1, ingredient_id: 7, percentage: '10.0'
},{
  formulation_id:1, ingredient_id: 25, percentage: '5.0'
},{
  formulation_id:1, ingredient_id: 20, percentage: '2.0'
},{
  formulation_id:1, ingredient_id: 26, percentage: '0.03'
},{
  formulation_id:2, ingredient_id: 8, percentage: '4.0'
},{
  formulation_id:2, ingredient_id: 20, percentage: '4.0'
},{
  formulation_id:2, ingredient_id: 10, percentage: '1.0'
},{
  formulation_id:2, ingredient_id: 16, percentage: '1.0'
},{
  formulation_id:3, ingredient_id: 14, percentage: '2.0'
},{
  formulation_id:3, ingredient_id: 2, percentage: '2.0'
},{
  formulation_id:3, ingredient_id: 16, percentage: '1.0'
},{
  formulation_id:3, ingredient_id: 1, percentage: '1.0'
},{
  formulation_id:3, ingredient_id: 26, percentage: '0.05'
},{
  formulation_id:4, ingredient_id: 20, percentage: '4.0'
},{
  formulation_id:4, ingredient_id: 3, percentage: '1.0'
},{
  formulation_id:4, ingredient_id: 13, percentage: '1.0'
},{
  formulation_id:4, ingredient_id: 26, percentage: '0.03'
},{
  formulation_id:5, ingredient_id: 25, percentage: '5.0'
},{
  formulation_id:5, ingredient_id: 20, percentage: '4.0'
},{
  formulation_id:5, ingredient_id: 19, percentage: '1.0'
},{
  formulation_id:5, ingredient_id: 16, percentage: '1.0'
},{
  formulation_id:6, ingredient_id: 17, percentage: '5.0'
},{
  formulation_id:6, ingredient_id: 4, percentage: '2.0'
},{
  formulation_id:6, ingredient_id: 2, percentage: '2.0'
},{
  formulation_id:6, ingredient_id: 3, percentage: '1.0'
},{
  formulation_id:6, ingredient_id: 16, percentage: '1.0'
},{
  formulation_id:6, ingredient_id: 26, percentage: '0.05'
},{
  formulation_id:7, ingredient_id: 15, percentage: '4.0'
},{
  formulation_id:7, ingredient_id: 26, percentage: '0.1'
},{
  formulation_id:7, ingredient_id: 16, percentage: '1.0'
},{
  formulation_id:7, ingredient_id: 14, percentage: '1.0'
},{
  formulation_id:7, ingredient_id: 31, percentage: '2.0'
},{
  formulation_id:8, ingredient_id: 17, percentage: '4.0'
},{
  formulation_id:8, ingredient_id: 15, percentage: '4.0'
},{
  formulation_id:8, ingredient_id: 16, percentage: '1.0'
},{
  formulation_id:8, ingredient_id: 26, percentage: '0.03'
},{
  formulation_id:9, ingredient_id: 7, percentage: '10.0'
},{
  formulation_id:9, ingredient_id: 17, percentage: '4.0'
},{
  formulation_id:9, ingredient_id: 13, percentage: '2.0'
},{
  formulation_id:9, ingredient_id: 3, percentage: '1.0'
},{
  formulation_id:10, ingredient_id: 20, percentage: '3.0'
},{
  formulation_id:10, ingredient_id: 17, percentage: '3.0'
},{
  formulation_id:10, ingredient_id: 15, percentage: '2.0'
},{
  formulation_id:10, ingredient_id: 5, percentage: '2.0'
},{
  formulation_id:10, ingredient_id: 6, percentage: '2.0'
},{
  formulation_id:10, ingredient_id: 14, percentage: '2.0'
},{
  formulation_id:10, ingredient_id: 1, percentage: '1.0'
},{
  formulation_id:10, ingredient_id: 16, percentage: '0.5'
},{
  formulation_id:10, ingredient_id: 26, percentage: '0.03'
},{
  formulation_id:11, ingredient_id: 6, percentage: '5.0'
},{
  formulation_id:11, ingredient_id: 20, percentage: '3.0'
},{
  formulation_id:11, ingredient_id: 14, percentage: '2.0'
},{
  formulation_id:11, ingredient_id: 26, percentage: '0.03'
},{
  formulation_id:12, ingredient_id: 25, percentage: '5.0'
},{
  formulation_id:12, ingredient_id: 7, percentage: '5.0'
},{
  formulation_id:12, ingredient_id: 6, percentage: '5.0'
},{
  formulation_id:12, ingredient_id: 10, percentage: '1.0'
},{
  formulation_id:12, ingredient_id: 14, percentage: '1.0'
},{
  formulation_id:12, ingredient_id: 26, percentage: '0.05'
},{
  formulation_id:13, ingredient_id: 15, percentage: '8.0'
},{
  formulation_id:13, ingredient_id: 26, percentage: '0.03'
},{
  formulation_id:13, ingredient_id: 16, percentage: '2.0'
},{
  formulation_id:13, ingredient_id: 17, percentage: '4.0'
},{
  formulation_id:14, ingredient_id: 29, percentage: '0.5'
},{
  formulation_id:14, ingredient_id: 30, percentage: '3.0'
},{
  formulation_id:14, ingredient_id: 38, percentage: '0.5'
},{
  formulation_id:14, ingredient_id: 31, percentage: '2.0'
},{
  formulation_id:14, ingredient_id: 28, percentage: '3.0'
},{
  formulation_id:14, ingredient_id: 32, percentage: '1.0'
},{
  formulation_id:14, ingredient_id: 33, percentage: '1.0'
},{
  formulation_id:15, ingredient_id: 29, percentage: '0.5'
},{
  formulation_id:15, ingredient_id: 38, percentage: '0.5'
},{
  formulation_id:15, ingredient_id: 31, percentage: '2.0'
},{
  formulation_id:15, ingredient_id: 28, percentage: '3.0'
},{
  formulation_id:15, ingredient_id: 34, percentage: '0.3'
},{
  formulation_id:15, ingredient_id: 32, percentage: '1.0'
},{
  formulation_id:15, ingredient_id: 20, percentage: '3.0'
},{
  formulation_id:15, ingredient_id: 35, percentage: '0.01'
},{
  formulation_id:16, ingredient_id: 25, percentage: '8.0'
},{
  formulation_id:16, ingredient_id: 21, percentage: '3.0'
},{
  formulation_id:16, ingredient_id: 20, percentage: '2.0'
},{
  formulation_id:16, ingredient_id: 23, percentage: '2.0'
},{
  formulation_id:16, ingredient_id: 13, percentage: '1.0'
},{
  formulation_id:16, ingredient_id: 27, percentage: '0.1'
},{
  formulation_id:17, ingredient_id: 2, percentage: '2.0'
},{
  formulation_id:17, ingredient_id: 3, percentage: '2.0'
},{
  formulation_id:17, ingredient_id: 16, percentage: '1.5'
},{
  formulation_id:17, ingredient_id: 10, percentage: '1.0'
},{
  formulation_id:17, ingredient_id: 26, percentage: '0.05'
},{
  formulation_id:18, ingredient_id: 36, percentage: '3.0'
},{
  formulation_id:18, ingredient_id: 3, percentage: '2.0'
},{
  formulation_id:18, ingredient_id: 31, percentage: '2.0'
},{
  formulation_id:18, ingredient_id: 13, percentage: '2.0'
},{
  formulation_id:18, ingredient_id: 27, percentage: '0.1'
},{
  formulation_id:18, ingredient_id: 16, percentage: '2.0'
},{
  formulation_id:18, ingredient_id: 29, percentage: '0.5'
},{
  formulation_id:19, ingredient_id: 7, percentage: '10.0'
},{
  formulation_id:19, ingredient_id: 20, percentage: '2.0'
},{
  formulation_id:19, ingredient_id: 19, percentage: '0.75'
},{
  formulation_id:20, ingredient_id: 39, percentage: '0.05'
},{
  formulation_id:20, ingredient_id: 15, percentage: '6.0'
},{
  formulation_id:20, ingredient_id: 32, percentage: '1.0'
},{
  formulation_id:20, ingredient_id: 3, percentage: '2.0'
},{
  formulation_id:20, ingredient_id: 13, percentage: '2.0'
},{
  formulation_id:21, ingredient_id: 27, percentage: '0.1'
},{
  formulation_id:21, ingredient_id: 16, percentage: '2.0'
},{
  formulation_id:21, ingredient_id: 14, percentage: '2.0'
},{
  formulation_id:21, ingredient_id: 28, percentage: '3.0'
},{
  formulation_id:21, ingredient_id: 2, percentage: '2.0'
},{
  formulation_id:21, ingredient_id: 1, percentage: '2.0'
},{
  formulation_id:22, ingredient_id: 25, percentage: '5.0'
},{
  formulation_id:22, ingredient_id: 7, percentage: '5.0'
},{
  formulation_id:22, ingredient_id: 10, percentage: '1.0'
},{
  formulation_id:22, ingredient_id: 14, percentage: '1.0'
},{
  formulation_id:22, ingredient_id: 26, percentage: '0.1'
},{
  formulation_id:22, ingredient_id: 16, percentage: '1.0'
},{
  formulation_id:23, ingredient_id: 36, percentage: '3.0'
},{
  formulation_id:23, ingredient_id: 3, percentage: '2.0'
},{
  formulation_id:23, ingredient_id: 32, percentage: '1.0'
},{
  formulation_id:23, ingredient_id: 13, percentage: '2.0'
},{
  formulation_id:23, ingredient_id: 21, percentage: '3.0'
},{
  formulation_id:23, ingredient_id: 20, percentage: '3.0'
},{
  formulation_id:24, ingredient_id: 29, percentage: '0.5'
},{
  formulation_id:24, ingredient_id: 30, percentage: '3.0'
},{
  formulation_id:24, ingredient_id: 31, percentage: '2.0'
},{
  formulation_id:24, ingredient_id: 28, percentage: '3.0'
},{
  formulation_id:24, ingredient_id: 32, percentage: '1.0'
},{
  formulation_id:24, ingredient_id: 33, percentage: '1.0'
},{
  formulation_id:24, ingredient_id: 26, percentage: '0.03'
},{
  formulation_id:24, ingredient_id: 20, percentage: '3.0'
},{
  formulation_id:25, ingredient_id: 29, percentage: '0.5'
},{
  formulation_id:25, ingredient_id: 22, percentage: '2.0'
},{
  formulation_id:25, ingredient_id: 31, percentage: '2.0'
},{
  formulation_id:25, ingredient_id: 28, percentage: '3.0'
},{
  formulation_id:25, ingredient_id: 34, percentage: '0.3'
},{
  formulation_id:25, ingredient_id: 32, percentage: '1.0'
},{
  formulation_id:25, ingredient_id: 20, percentage: '3.0'
},{
  formulation_id:25, ingredient_id: 35, percentage: '0.01'
},{
  formulation_id:25, ingredient_id: 26, percentage: '0.03'
},{
  formulation_id:26, ingredient_id: 13, percentage: '1.0'
},{
  formulation_id:26, ingredient_id: 20, percentage: '4.0'
},{
  formulation_id:26, ingredient_id: 26, percentage: '0.03'
},{
  formulation_id:26, ingredient_id: 3, percentage: '1.0'
},{
  formulation_id:27, ingredient_id: 7, percentage: '10.0'
},{
  formulation_id:27, ingredient_id: 17, percentage: '4.0'
},{
  formulation_id:27, ingredient_id: 13, percentage: '2.0'
},{
  formulation_id:27, ingredient_id: 3, percentage: '1.0'
},{
  formulation_id:27, ingredient_id: 16, percentage: '1.0'
},{
  formulation_id:28, ingredient_id: 15, percentage: '8.0'
},{
  formulation_id:28, ingredient_id: 26, percentage: '0.03'
},{
  formulation_id:28, ingredient_id: 16, percentage: '2.0'
},{
  formulation_id:28, ingredient_id: 17, percentage: '4.0'
},{
  formulation_id:28, ingredient_id: 36, percentage: '3.0'
},{
  formulation_id:29, ingredient_id: 19, percentage: '1.0'
},{
  formulation_id:29, ingredient_id: 20, percentage: '4.0'
},{
  formulation_id:29, ingredient_id: 16, percentage: '1.0'
},{
  formulation_id:29, ingredient_id: 7, percentage: '5.0'
},{
  formulation_id:30, ingredient_id: 2, percentage: '1.0'
},{
  formulation_id:30, ingredient_id: 12, percentage: '6.0'
},{
  formulation_id:30, ingredient_id: 16, percentage: '1.0'
},{
  formulation_id:30, ingredient_id: 14, percentage: '2.0'
},{
  formulation_id:30, ingredient_id: 1, percentage: '1.0'
},{
  formulation_id:31, ingredient_id: 15, percentage: '4.0'
},{
  formulation_id:31, ingredient_id: 16, percentage: '1.0'
},{
  formulation_id:31, ingredient_id: 17, percentage: '4.0'
},{
  formulation_id:31, ingredient_id: 36, percentage: '1.0'
},{
  formulation_id:31, ingredient_id: 12, percentage: '5.0'
},{
  formulation_id:32, ingredient_id: 23, percentage: '2.0'
},{
  formulation_id:32, ingredient_id: 20, percentage: '3.0'
},{
  formulation_id:32, ingredient_id: 37, percentage: '2.0'
},{
  formulation_id:32, ingredient_id: 13, percentage: '1.0'
},{
  formulation_id:32, ingredient_id: 27, percentage: '0.1'
}])

p "Create #{FormulationIngredient.count} formulation_ingredients"
