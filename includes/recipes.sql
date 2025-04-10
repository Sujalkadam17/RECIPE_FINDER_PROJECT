-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2025 at 03:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recipe_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `ingredients` text DEFAULT NULL,
  `instructions` text DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `title`, `ingredients`, `instructions`, `video_url`, `created_at`, `category`) VALUES
(1, 'Misal Pav', 'Sprouted moth beans, onion, tomato, farsan, pav, spices Follow video for better understanding.', '1. Cook sprouted beans with spices. 2. Prepare spicy gravy with onion, tomato. 3. Mix beans and gravy. 4. Serve hot with farsan and pav. Follow video for better understanding.', 'https://www.youtube.com/watch?v=kaJzwCD8uvY', '2025-04-09 07:06:03', 'Maharashtrian'),
(2, 'Puran Poli', 'Chana dal, jaggery, cardamom, wheat flour, ghee Follow video for better understanding.', '1. Boil chana dal and mash. 2. Cook with jaggery to form sweet filling. 3. Make dough and stuff filling. 4. Roll and roast with ghee. Follow video for better understanding.', 'https://www.youtube.com/watch?v=YuQG0s-5fpE', '2025-04-09 07:06:03', 'Maharashtrian'),
(3, 'Vada Pav', 'Potato, mustard seeds, green chili, garlic, pav, gram flour Follow video for better understanding.', '1. Make spiced mashed potato balls. 2. Coat in besan batter. 3. Deep fry. 4. Serve in pav with chutneys. Follow video for better understanding.', 'https://www.youtube.com/watch?v=r4saZD0J_gU', '2025-04-09 07:06:03', 'Maharashtrian'),
(4, 'Sambar', 'Toor dal, vegetables, tamarind, sambar powder, curry leaves Follow video for better understanding.', '1. Cook dal. 2. Sauté vegetables with spices. 3. Mix dal, tamarind, and vegetables. 4. Boil and season. Follow video for better understanding.', 'https://www.youtube.com/watch?v=IYvo1d5_SSw', '2025-04-09 07:06:03', 'South Indian'),
(5, 'Masala Dosa', 'Rice, urad dal, potato, mustard seeds, curry leaves, onion Follow video for better understanding.', '1. Soak and grind rice & dal for batter. 2. Prepare potato masala. 3. Ferment batter overnight. 4. Make dosas on tawa and fill with masala. Follow video for better understanding.', 'https://www.youtube.com/watch?v=J75VQSxOtdo', '2025-04-09 07:06:03', 'South Indian'),
(6, 'Idli', 'Rice, urad dal, salt Follow video for better understanding.', '1. Soak and grind rice & dal. 2. Ferment overnight. 3. Steam in idli plates. 4. Serve with chutney and sambar. Follow video for better understanding.', 'https://www.youtube.com/watch?v=izMbmJkiALc', '2025-04-09 07:06:03', 'South Indian'),
(7, 'Rajma Chawal', 'Kidney beans, rice, tomato, onion, garlic, spices Follow video for better understanding.', '1. Soak and cook rajma. 2. Prepare tomato-onion gravy. 3. Mix rajma and simmer. 4. Serve with steamed rice. Follow video for better understanding.', 'https://www.youtube.com/watch?v=asY7cq6j0xE', '2025-04-09 07:06:03', 'North Indian'),
(8, 'Butter Chicken', 'Chicken, butter, cream, tomato puree, spices Follow video for better understanding.', '1. Marinate chicken and cook. 2. Make creamy tomato gravy. 3. Combine chicken and simmer. 4. Garnish with cream. Follow video for better understanding.', 'https://www.youtube.com/watch?v=a03U45jFxOI', '2025-04-09 07:06:03', 'North Indian'),
(9, 'Chole Bhature', 'Chickpeas, onion, tomato, spices, flour, yogurt Follow video for better understanding.', '1. Cook chickpeas in spicy gravy. 2. Prepare dough and roll bhature. 3. Deep fry. 4. Serve with chole. Follow video for better understanding.', 'https://www.youtube.com/watch?v=QbyXsYOTJD4', '2025-04-09 07:06:03', 'North Indian'),
(10, 'Grilled Chicken Breast', 'Chicken breast, olive oil, pepper, garlic, herbs Follow video for better understanding.', '1. Marinate chicken with herbs and spices. 2. Grill until golden and cooked. 3. Serve with veggies. Follow video for better understanding.', 'https://www.youtube.com/watch?v=n2BrIfa3S0k', '2025-04-09 07:06:03', 'Gym Enthusiast'),
(11, 'Oats Protein Shake', 'Oats, banana, milk, peanut butter, whey protein Follow video for better understanding.', '1. Blend all ingredients until smooth. 2. Serve chilled. Follow video for better understanding.', 'https://www.youtube.com/watch?v=OrfmAAgKJmE', '2025-04-09 07:06:03', 'Gym Enthusiast'),
(12, 'Boiled Eggs Salad', 'Boiled eggs, spinach, tomato, olive oil, black pepper Follow video for better understanding.', '1. Slice boiled eggs. 2. Toss with spinach, tomato, olive oil, pepper. 3. Serve fresh. Follow video for better understanding.', 'https://www.youtube.com/watch?v=hNnBNv1oPRU', '2025-04-09 07:06:03', 'Gym Enthusiast'),
(13, 'Misal Pav', 'Sprouted moth beans, onion, tomato, farsan, pav, spices Follow video for better understanding.', '1. Cook sprouted beans with spices. 2. Prepare spicy gravy with onion, tomato. 3. Mix beans and gravy. 4. Serve hot with farsan and pav. Follow video for better understanding.', 'https://www.youtube.com/watch?v=kaJzwCD8uvY', '2025-04-09 07:06:03', 'Maharashtrian'),
(14, 'Puran Poli', 'Chana dal, jaggery, cardamom, wheat flour, ghee Follow video for better understanding.', '1. Boil chana dal and mash. 2. Cook with jaggery to form sweet filling. 3. Make dough and stuff filling. 4. Roll and roast with ghee. Follow video for better understanding.', 'https://www.youtube.com/watch?v=YuQG0s-5fpE', '2025-04-09 07:06:03', 'Maharashtrian'),
(15, 'Vada Pav', 'Potato, mustard seeds, green chili, garlic, pav, gram flour Follow video for better understanding.', '1. Make spiced mashed potato balls. 2. Coat in besan batter. 3. Deep fry. 4. Serve in pav with chutneys. Follow video for better understanding.', 'https://www.youtube.com/watch?v=r4saZD0J_gU', '2025-04-09 07:06:03', 'Maharashtrian'),
(16, 'Sambar', 'Toor dal, vegetables, tamarind, sambar powder, curry leaves Follow video for better understanding.', '1. Cook dal. 2. Sauté vegetables with spices. 3. Mix dal, tamarind, and vegetables. 4. Boil and season. Follow video for better understanding.', 'https://www.youtube.com/watch?v=IYvo1d5_SSw', '2025-04-09 07:06:03', 'South Indian'),
(17, 'Masala Dosa', 'Rice, urad dal, potato, mustard seeds, curry leaves, onion Follow video for better understanding.', '1. Soak and grind rice & dal for batter. 2. Prepare potato masala. 3. Ferment batter overnight. 4. Make dosas on tawa and fill with masala. Follow video for better understanding.', 'https://www.youtube.com/watch?v=J75VQSxOtdo', '2025-04-09 07:06:03', 'South Indian'),
(18, 'Idli', 'Rice, urad dal, salt Follow video for better understanding.', '1. Soak and grind rice & dal. 2. Ferment overnight. 3. Steam in idli plates. 4. Serve with chutney and sambar. Follow video for better understanding.', 'https://www.youtube.com/watch?v=izMbmJkiALc', '2025-04-09 07:06:03', 'South Indian'),
(19, 'Rajma Chawal', 'Kidney beans, rice, tomato, onion, garlic, spices Follow video for better understanding.', '1. Soak and cook rajma. 2. Prepare tomato-onion gravy. 3. Mix rajma and simmer. 4. Serve with steamed rice. Follow video for better understanding.', 'https://www.youtube.com/watch?v=asY7cq6j0xE', '2025-04-09 07:06:03', 'North Indian'),
(20, 'Butter Chicken', 'Chicken, butter, cream, tomato puree, spices Follow video for better understanding.', '1. Marinate chicken and cook. 2. Make creamy tomato gravy. 3. Combine chicken and simmer. 4. Garnish with cream. Follow video for better understanding.', 'https://www.youtube.com/watch?v=a03U45jFxOI', '2025-04-09 07:06:03', 'North Indian'),
(21, 'Chole Bhature', 'Chickpeas, onion, tomato, spices, flour, yogurt Follow video for better understanding.', '1. Cook chickpeas in spicy gravy. 2. Prepare dough and roll bhature. 3. Deep fry. 4. Serve with chole. Follow video for better understanding.', 'https://www.youtube.com/watch?v=QbyXsYOTJD4', '2025-04-09 07:06:03', 'North Indian'),
(22, 'Grilled Chicken Breast', 'Chicken breast, olive oil, pepper, garlic, herbs Follow video for better understanding.', '1. Marinate chicken with herbs and spices. 2. Grill until golden and cooked. 3. Serve with veggies. Follow video for better understanding.', 'https://www.youtube.com/watch?v=n2BrIfa3S0k', '2025-04-09 07:06:03', 'Gym Enthusiast'),
(23, 'Oats Protein Shake', 'Oats, banana, milk, peanut butter, whey protein Follow video for better understanding.', '1. Blend all ingredients until smooth. 2. Serve chilled. Follow video for better understanding.', 'https://www.youtube.com/watch?v=OrfmAAgKJmE', '2025-04-09 07:06:03', 'Gym Enthusiast'),
(24, 'Boiled Eggs Salad', 'Boiled eggs, spinach, tomato, olive oil, black pepper Follow video for better understanding.', '1. Slice boiled eggs. 2. Toss with spinach, tomato, olive oil, pepper. 3. Serve fresh. Follow video for better understanding.', 'https://www.youtube.com/watch?v=hNnBNv1oPRU', '2025-04-09 07:06:03', 'Gym Enthusiast'),
(25, 'Misal Pav', 'Sprouted moth beans, onion, tomato, farsan, pav, spices Follow video for better understanding.', '1. Cook sprouted beans with spices. 2. Prepare spicy gravy with onion, tomato. 3. Mix beans and gravy. 4. Serve hot with farsan and pav. Follow video for better understanding.', 'https://www.youtube.com/watch?v=kaJzwCD8uvY', '2025-04-09 07:06:03', 'Maharashtrian'),
(26, 'Puran Poli', 'Chana dal, jaggery, cardamom, wheat flour, ghee Follow video for better understanding.', '1. Boil chana dal and mash. 2. Cook with jaggery to form sweet filling. 3. Make dough and stuff filling. 4. Roll and roast with ghee. Follow video for better understanding.', 'https://www.youtube.com/watch?v=YuQG0s-5fpE', '2025-04-09 07:06:03', 'Maharashtrian'),
(27, 'Vada Pav', 'Potato, mustard seeds, green chili, garlic, pav, gram flour Follow video for better understanding.', '1. Make spiced mashed potato balls. 2. Coat in besan batter. 3. Deep fry. 4. Serve in pav with chutneys. Follow video for better understanding.', 'https://www.youtube.com/watch?v=r4saZD0J_gU', '2025-04-09 07:06:03', 'Maharashtrian'),
(28, 'Sambar', 'Toor dal, vegetables, tamarind, sambar powder, curry leaves Follow video for better understanding.', '1. Cook dal. 2. Sauté vegetables with spices. 3. Mix dal, tamarind, and vegetables. 4. Boil and season. Follow video for better understanding.', 'https://www.youtube.com/watch?v=IYvo1d5_SSw', '2025-04-09 07:06:03', 'South Indian'),
(29, 'Masala Dosa', 'Rice, urad dal, potato, mustard seeds, curry leaves, onion Follow video for better understanding.', '1. Soak and grind rice & dal for batter. 2. Prepare potato masala. 3. Ferment batter overnight. 4. Make dosas on tawa and fill with masala. Follow video for better understanding.', 'https://www.youtube.com/watch?v=J75VQSxOtdo', '2025-04-09 07:06:03', 'South Indian'),
(30, 'Idli', 'Rice, urad dal, salt Follow video for better understanding.', '1. Soak and grind rice & dal. 2. Ferment overnight. 3. Steam in idli plates. 4. Serve with chutney and sambar. Follow video for better understanding.', 'https://www.youtube.com/watch?v=izMbmJkiALc', '2025-04-09 07:06:03', 'South Indian'),
(31, 'Misal Pav', 'Sprouted moth beans, onions, tomatoes, ginger-garlic paste, goda masala, farsan, coriander, pav, lemon Follow video for better understanding.', '1. Cook sprouted beans with spices. 2. Prepare spicy tari. 3. Mix everything and garnish with farsan. 4. Serve with pav. Follow video for better understanding.', 'https://www.youtube.com/watch?v=kaJzwCD8uvY', '2025-04-09 12:44:22', 'Maharashtrian'),
(32, 'Thalipeeth', 'Multigrain flour, onion, green chili, coriander, carom seeds, salt, water, ghee Follow video for better understanding.', '1. Mix flour with chopped veggies and spices. 2. Knead dough. 3. Flatten and roast on tawa with ghee. Follow video for better understanding.', 'https://www.youtube.com/watch?v=7-PIbuOMNJI', '2025-04-09 12:44:22', 'Maharashtrian'),
(33, 'Kothimbir Vadi', 'Coriander leaves, besan, green chili, garlic, sesame seeds, oil, salt Follow video for better understanding.', '1. Make thick batter. 2. Steam mixture. 3. Slice and shallow fry until crisp. Follow video for better understanding.', 'https://www.youtube.com/watch?v=vYO2e40nbIg', '2025-04-09 12:44:22', 'Maharashtrian'),
(34, 'Puran Poli', 'Chana dal, jaggery, cardamom, nutmeg, wheat flour, ghee Follow video for better understanding.', '1. Cook dal and mix with jaggery and spices. 2. Stuff in dough. 3. Roll and roast with ghee. Follow video for better understanding.', 'https://www.youtube.com/watch?v=YuQG0s-5fpE', '2025-04-09 12:44:22', 'Maharashtrian'),
(35, 'Kanda Bhaji', 'Onion, besan, ajwain, turmeric, red chili powder, salt, oil Follow video for better understanding.', '1. Mix onion with besan and spices. 2. Deep fry till golden. Follow video for better understanding.', 'https://www.youtube.com/watch?v=QOpRsyLBEqw', '2025-04-09 12:44:22', 'Maharashtrian'),
(36, 'Rasam', 'Tomatoes, tamarind, rasam powder, mustard seeds, garlic, curry leaves, coriander Follow video for better understanding.', '1. Boil tamarind water with spices. 2. Add tomatoes and garlic. 3. Temper with mustard and curry leaves. Follow video for better understanding.', 'https://www.youtube.com/watch?v=tibgK4QXtyA', '2025-04-09 12:44:22', 'South Indian'),
(37, 'Pesarattu', 'Green gram, ginger, green chili, rice, cumin, salt, onion Follow video for better understanding.', '1. Soak and grind green gram. 2. Make dosa with chopped onions. 3. Serve with chutney. Follow video for better understanding.', 'https://www.youtube.com/watch?v=mDqkxZ3UVzc', '2025-04-09 12:44:22', 'South Indian'),
(38, 'Pongal', 'Rice, moong dal, pepper, cumin, ginger, ghee, curry leaves, cashews Follow video for better understanding.', '1. Cook rice and dal. 2. Temper with spices and ghee. 3. Mix well and serve. Follow video for better understanding.', 'https://www.youtube.com/watch?v=J75VQSxOtdo', '2025-04-09 12:44:22', 'South Indian'),
(39, 'Bisi Bele Bath', 'Rice, toor dal, vegetables, Bisi Bele Bath powder, tamarind, ghee, mustard seeds, curry leaves Follow video for better understanding.', '1. Cook rice and dal. 2. Cook veggies separately. 3. Mix with masala and temper. Follow video for better understanding.', 'https://www.youtube.com/watch?v=J75VQSxOtdo', '2025-04-09 12:44:22', 'South Indian'),
(40, 'Coconut Chutney', 'Grated coconut, green chili, roasted chana dal, ginger, salt, mustard, curry leaves Follow video for better understanding.', '1. Blend ingredients. 2. Temper with mustard and curry leaves. Follow video for better understanding.', 'https://www.youtube.com/watch?v=J75VQSxOtdo', '2025-04-09 12:44:22', 'South Indian'),
(41, 'Shahi Paneer', 'Paneer, onion, tomato, cashew, cream, butter, garam masala Follow video for better understanding.', '1. Cook onion-tomato-cashew gravy. 2. Blend and add paneer. 3. Finish with cream. Follow video for better understanding.', 'https://www.youtube.com/watch?v=J75VQSxOtdo', '2025-04-09 12:44:22', 'North Indian'),
(42, 'Rajma Masala', 'Kidney beans, onion, tomato, ginger-garlic, spices Follow video for better understanding.', '1. Soak and pressure cook beans. 2. Prepare masala base. 3. Add rajma and simmer. Follow video for better understanding.', 'https://www.youtube.com/watch?v=J75VQSxOtdo', '2025-04-09 12:44:22', 'North Indian'),
(43, 'Aloo Gobi', 'Potatoes, cauliflower, onion, tomato, turmeric, garam masala Follow video for better understanding.', '1. Sauté veggies with spices. 2. Cook till soft and dry. Follow video for better understanding.', 'https://www.youtube.com/watch?v=J75VQSxOtdo', '2025-04-09 12:44:22', 'North Indian'),
(44, 'Chole Bhature', 'Chickpeas, onion, tomato, chole masala, flour, yogurt Follow video for better understanding.', '1. Cook spicy chole. 2. Prepare dough for bhature and deep fry. Follow video for better understanding.', 'https://www.youtube.com/watch?v=QbyXsYOTJD4', '2025-04-09 12:44:22', 'North Indian'),
(45, 'Baingan Bharta', 'Eggplant, onion, tomato, garlic, green chili, coriander Follow video for better understanding.', '1. Roast and mash eggplant. 2. Cook with onion-tomato masala. Follow video for better understanding.', 'https://www.youtube.com/watch?v=J75VQSxOtdo', '2025-04-09 12:44:22', 'North Indian'),
(46, 'Protein Oats Pancake', 'Oats, banana, egg whites, whey protein, cinnamon Follow video for better understanding.', '1. Blend all ingredients. 2. Cook on non-stick pan. Follow video for better understanding.', 'https://www.youtube.com/watch?v=J75VQSxOtdo', '2025-04-09 12:44:22', 'Gym Enthusiast'),
(47, 'Boiled Egg Salad', 'Boiled eggs, cucumber, onion, tomato, olive oil, salt, pepper Follow video for better understanding.', '1. Chop and mix all ingredients. Follow video for better understanding.', 'https://www.youtube.com/watch?v=emcp1JKWz6A', '2025-04-09 12:44:22', 'Gym Enthusiast'),
(48, 'Grilled Chicken Breast', 'Chicken breast, olive oil, herbs, lemon juice, salt Follow video for better understanding.', '1. Marinate chicken. 2. Grill until cooked. Follow video for better understanding.', 'https://www.youtube.com/watch?v=n2BrIfa3S0k', '2025-04-09 12:44:22', 'Gym Enthusiast'),
(49, 'Soya Chunks Stir Fry', 'Soya chunks, onion, capsicum, garlic, soy sauce, pepper Follow video for better understanding.', '1. Boil and squeeze chunks. 2. Sauté with veggies and sauces. Follow video for better understanding.', 'https://www.youtube.com/watch?v=J75VQSxOtdo', '2025-04-09 12:44:22', 'Gym Enthusiast'),
(50, 'Paneer Stir Fry', 'Paneer, bell peppers, onion, black pepper, olive oil, salt Follow video for better understanding.', '1. Stir-fry all ingredients on high flame. Follow video for better understanding.', 'https://www.youtube.com/watch?v=J75VQSxOtdo', '2025-04-09 12:44:22', 'Gym Enthusiast'),
(51, 'Upma', 'Semolina (rava), mustard seeds, curry leaves, green chilies, onion', 'Roast rava. Temper spices and veggies. Add water and rava. Stir until thick. Follow video for better understanding.', 'https://www.youtube.com/watch?v=FeUjF1E_QeU', '2025-04-09 13:36:39', 'South Indian'),
(52, 'Tomato Rasam', 'Tomato, tamarind, garlic, curry leaves, black pepper, mustard seeds', 'Boil tamarind water, add tomatoes and spices. Temper and add. Follow video for better understanding.', 'https://www.youtube.com/watch?v=pJccj1k8D4E', '2025-04-09 13:36:39', 'South Indian'),
(53, 'Medu Vada', 'Urad dal, ginger, green chili, curry leaves, black pepper', 'Grind dal, mix spices, shape vadas and deep fry. Follow video for better understanding.', 'https://www.youtube.com/watch?v=VZHKUg-JUjQ', '2025-04-09 13:36:39', 'South Indian'),
(54, 'Vegetable Stew', 'Coconut milk, mixed vegetables, ginger, curry leaves', 'Cook veggies in coconut milk with spices. Follow video for better understanding.', 'https://www.youtube.com/watch?v=cGngB4y92MA', '2025-04-09 13:36:39', 'South Indian'),
(55, 'Ragi Dosa', 'Ragi flour, rice flour, curd, green chilies, coriander', 'Mix ingredients to make batter. Spread and cook like dosa. Follow video for better understanding.', 'https://www.youtube.com/watch?v=65hfhILV4rc', '2025-04-09 13:36:39', 'South Indian'),
(56, 'Paneer Butter Masala', 'Paneer, tomato, cream, butter, garam masala', 'Cook paneer in rich tomato-butter-cream gravy. Follow video for better understanding.', 'https://www.youtube.com/watch?v=kEHGKfOSZ3Y', '2025-04-09 13:36:39', 'North Indian'),
(57, 'Kadhi Pakora', 'Gram flour, yogurt, onions, spices, mustard seeds', 'Make pakoras. Simmer yogurt-besan mix and temper. Add pakoras. Follow video for better understanding.', 'https://www.youtube.com/watch?v=YIMTYq6ezcM', '2025-04-09 13:36:39', 'North Indian'),
(58, 'Aloo Paratha', 'Wheat flour, boiled potatoes, spices, ghee', 'Stuff spiced potatoes in dough. Roll and roast. Follow video for better understanding.', 'https://www.youtube.com/watch?v=kUHoW7p-Bw0', '2025-04-09 13:36:39', 'North Indian'),
(59, 'Bhindi Masala', 'Okra, onion, tomato, turmeric, cumin', 'Stir-fry okra with spices and onion-tomato base. Follow video for better understanding.', 'https://www.youtube.com/watch?v=GMCpUibN8cY', '2025-04-09 13:36:39', 'North Indian'),
(60, 'Matar Paneer', 'Paneer, green peas, onion, tomato, spices', 'Cook paneer and peas in spicy onion-tomato gravy. Follow video for better understanding.', 'https://www.youtube.com/watch?v=JZz35pKxH-4', '2025-04-09 13:36:39', 'North Indian'),
(61, 'Bharli Vangi', 'Small brinjals, peanut, coconut, goda masala', 'Stuff brinjals with masala and simmer. Follow video for better understanding.', 'https://www.youtube.com/watch?v=ZjjmvGYe4CU', '2025-04-09 13:36:39', 'Maharashtrian'),
(62, 'Sabudana Khichdi', 'Sabudana, potato, peanuts, cumin seeds, green chili', 'Soak sabudana. Fry with spices and peanuts. Follow video for better understanding.', 'https://www.youtube.com/watch?v=5fPS8AApNTY', '2025-04-09 13:36:39', 'Maharashtrian'),
(63, 'Zunka Bhakri', 'Besan, onion, green chili, mustard, ajwain', 'Cook besan with spices to make dry curry. Serve with bhakri. Follow video for better understanding.', 'https://www.youtube.com/watch?v=vcDq8AapPH4', '2025-04-09 13:36:39', 'Maharashtrian'),
(64, 'Sheera', 'Semolina, ghee, sugar, cardamom, dry fruits', 'Roast rava, cook with sugar and ghee. Add dry fruits. Follow video for better understanding.', 'https://www.youtube.com/watch?v=ZpgbQzzWEnE', '2025-04-09 13:36:39', 'Maharashtrian'),
(65, 'Tondli Bhaat', 'Tendli (ivy gourd), rice, goda masala, mustard seeds', 'Cook tendli and mix with masala rice. Follow video for better understanding.', 'https://www.youtube.com/watch?v=4ih4hNg_lZI', '2025-04-09 13:36:39', 'Maharashtrian'),
(66, 'Peanut Butter Banana Smoothie', 'Banana, peanut butter, milk, oats, protein powder', 'Blend all ingredients until smooth. Follow video for better understanding.', 'https://www.youtube.com/watch?v=_4MKZ5I5NE8', '2025-04-09 13:36:39', 'Gym Enthusiast'),
(67, 'Grilled Tofu Salad', 'Tofu, bell peppers, cucumber, lemon juice, olive oil', 'Grill tofu. Toss with fresh veggies. Follow video for better understanding.', 'https://www.youtube.com/watch?v=2pDAwHiQ9T4', '2025-04-09 13:36:39', 'Gym Enthusiast'),
(68, 'Egg White Omelette', 'Egg whites, spinach, tomato, onion, black pepper', 'Whisk egg whites and cook with veggies. Follow video for better understanding.', 'https://www.youtube.com/watch?v=U3gfQuORydI', '2025-04-09 13:36:39', 'Gym Enthusiast'),
(69, 'Protein Bars', 'Oats, peanut butter, honey, protein powder, dry fruits', 'Mix all and set in tray. Cut into bars. Follow video for better understanding.', 'https://www.youtube.com/watch?v=REMQl9Tj6Dw', '2025-04-09 13:36:39', 'Gym Enthusiast'),
(70, 'Quinoa Stir Fry', 'Quinoa, bell peppers, broccoli, olive oil, garlic, soy sauce', 'Cook quinoa. Stir fry with veggies and sauces. Follow video for better understanding.', 'https://www.youtube.com/watch?v=8az5sl8av8M', '2025-04-09 13:36:39', 'Gym Enthusiast'),
(71, 'Sabudana Khichdi', 'Sabudana, peanuts, potatoes, green chilies, cumin seeds, ghee, coriander, salt. Follow video for better understanding.', 'Soak sabudana for 4-5 hours, drain and mix with roasted peanut powder. Heat ghee, add cumin, green chilies, potatoes. Add sabudana and cook until transparent. Garnish with coriander. Follow video for better understanding.', 'https://www.youtube.com/watch?v=FgRQXgOm-Ng', '2025-04-09 13:37:02', 'maharashtrian'),
(72, 'Ukadiche Modak', 'Rice flour, jaggery, grated coconut, ghee, cardamom powder. Follow video for better understanding.', 'Prepare filling with jaggery and coconut. Make rice flour dough. Fill and shape modaks. Steam them until soft. Follow video for better understanding.', 'https://www.youtube.com/watch?v=AVXsd_gVt88', '2025-04-09 13:37:02', 'maharashtrian'),
(73, 'Poha', 'Flattened rice, mustard seeds, curry leaves, turmeric, onion, green chilies, lemon juice, coriander. Follow video for better understanding.', 'Rinse poha. Heat oil, temper mustard seeds and curry leaves. Sauté onions and chilies. Add turmeric and poha. Mix well, garnish with coriander and lemon. Follow video for better understanding.', 'https://www.youtube.com/watch?v=yW56wlCzSXA', '2025-04-09 13:37:02', 'maharashtrian'),
(74, 'Bharli Vangi', 'Small brinjals, peanuts, sesame seeds, coconut, jaggery, tamarind, goda masala. Follow video for better understanding.', 'Prepare masala stuffing. Slit brinjals and stuff them. Cook in a pan with water and oil until soft. Follow video for better understanding.', 'https://www.youtube.com/watch?v=KcIo7cuWfR0', '2025-04-09 13:37:02', 'maharashtrian'),
(75, 'Sheera', 'Semolina (rava), sugar, ghee, milk, cardamom, dry fruits. Follow video for better understanding.', 'Roast semolina in ghee. Add milk and cook. Add sugar and cardamom. Mix well until thick. Garnish with dry fruits. Follow video for better understanding.', 'https://www.youtube.com/watch?v=KPCaF1WmfG4', '2025-04-09 13:37:02', 'maharashtrian'),
(76, 'Upma', 'Semolina (rava), mustard seeds, curry leaves, green chilies, ginger, onion, water. Follow video for better understanding.', 'Roast rava. Temper mustard seeds, curry leaves, ginger, and onion. Add water and rava, cook until fluffy. Follow video for better understanding.', 'https://www.youtube.com/watch?v=gz5C3TwUqU0', '2025-04-09 13:37:02', 'south indian'),
(77, 'Appam', 'Rice, coconut, yeast, sugar, salt. Follow video for better understanding.', 'Soak rice, grind with coconut. Ferment overnight. Make appam on pan. Follow video for better understanding.', 'https://www.youtube.com/watch?v=Twog_zD6hQM', '2025-04-09 13:37:02', 'south indian'),
(78, 'Medu Vada', 'Urad dal, curry leaves, green chilies, ginger, salt, oil. Follow video for better understanding.', 'Soak and grind urad dal. Mix with chopped ingredients. Shape and deep fry. Follow video for better understanding.', 'https://www.youtube.com/watch?v=CN5kgU4nhz4', '2025-04-09 13:37:02', 'south indian'),
(79, 'Avial', 'Mixed vegetables, coconut, yogurt, curry leaves, coconut oil. Follow video for better understanding.', 'Cook vegetables. Add ground coconut paste and yogurt. Temper with curry leaves. Follow video for better understanding.', 'https://www.youtube.com/watch?v=3rBqKZVbU9U', '2025-04-09 13:37:02', 'south indian'),
(80, 'Vegetable Kurma', 'Mixed vegetables, coconut, fennel, cinnamon, cloves, onion, tomato, yogurt. Follow video for better understanding.', 'Cook vegetables. Grind spices. Prepare masala and mix with vegetables. Cook until thick. Follow video for better understanding.', 'https://www.youtube.com/watch?v=bK12SPhwXks', '2025-04-09 13:37:02', 'south indian'),
(81, 'Palak Paneer', 'Spinach, paneer, onion, garlic, ginger, tomato, garam masala. Follow video for better understanding.', 'Blanch and grind spinach. Cook with masala and paneer. Simmer well. Follow video for better understanding.', 'https://www.youtube.com/watch?v=ZTxDBt58e3Q', '2025-04-09 13:37:02', 'north indian'),
(82, 'Kadhi Pakora', 'Gram flour, yogurt, spices, onion, oil. Follow video for better understanding.', 'Make pakoras. Cook kadhi using yogurt and gram flour. Add pakoras and simmer. Temper. Follow video for better understanding.', 'https://www.youtube.com/watch?v=ccqKVQvWdzA', '2025-04-09 13:37:02', 'north indian'),
(83, 'Bhindi Masala', 'Okra, onion, tomato, spices. Follow video for better understanding.', 'Sauté bhindi. Add masala, onions, tomatoes. Cook till done. Follow video for better understanding.', 'https://www.youtube.com/watch?v=ebEOqijmX3I', '2025-04-09 13:37:02', 'north indian'),
(84, 'Paneer Tikka', 'Paneer, yogurt, spices, capsicum, onion. Follow video for better understanding.', 'Marinate paneer and veggies. Grill or bake. Follow video for better understanding.', 'https://www.youtube.com/watch?v=j_L1cPZglPo', '2025-04-09 13:37:02', 'north indian'),
(85, 'Jeera Rice', 'Basmati rice, cumin seeds, ghee, bay leaf. Follow video for better understanding.', 'Cook rice with cumin tempering. Serve hot. Follow video for better understanding.', 'https://www.youtube.com/watch?v=zVzRJD1v-Zg', '2025-04-09 13:37:02', 'north indian'),
(86, 'Grilled Tofu', 'Tofu, olive oil, herbs, salt, pepper. Follow video for better understanding.', 'Marinate tofu. Grill on both sides. Follow video for better understanding.', 'https://www.youtube.com/watch?v=2GzBqymBv44', '2025-04-09 13:37:02', 'gym enthusiast'),
(87, 'Greek Yogurt Smoothie', 'Greek yogurt, banana, berries, honey. Follow video for better understanding.', 'Blend all ingredients. Serve chilled. Follow video for better understanding.', 'https://www.youtube.com/watch?v=ULo6sL6gBI4', '2025-04-09 13:37:02', 'gym enthusiast'),
(88, 'Chickpea Salad', 'Boiled chickpeas, cucumber, tomato, onion, olive oil, lemon juice. Follow video for better understanding.', 'Mix all ingredients. Chill and serve. Follow video for better understanding.', 'https://www.youtube.com/watch?v=jBu4c5-SaMc', '2025-04-09 13:37:02', 'gym enthusiast'),
(89, 'Protein Khichdi', 'Moong dal, quinoa/rice, vegetables, spices. Follow video for better understanding.', 'Cook everything together. Simmer and serve. Follow video for better understanding.', 'https://www.youtube.com/watch?v=lEHi9-VbS2c', '2025-04-09 13:37:02', 'gym enthusiast'),
(90, 'Egg White Omelette', 'Egg whites, vegetables, pepper, salt, olive oil. Follow video for better understanding.', 'Cook egg whites with chopped vegetables. Fold and serve. Follow video for better understanding.', 'https://www.youtube.com/watch?v=VW7N-OL7N3M', '2025-04-09 13:37:02', 'gym enthusiast');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
