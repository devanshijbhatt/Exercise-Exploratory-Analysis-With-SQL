-- Printing all the data of the table
SELECT * 
FROM public."Fitness";

-- Printing all the exercise names
SELECT "Exercise"
FROM public."Fitness";

-- The frequency of each exercise
SELECT "Exercise", COUNT(*) AS Frequency
FROM public."Fitness"
GROUP BY "Exercise"
ORDER BY Frequency DESC;

-- Finding exercises which has a short YouTube demonstration only
SELECT COUNT("Exercise")
FROM public."Fitness"
WHERE "Short YouTube Demonstration" IS NOT NULL;

-- Finding exercises which has an in-depth YouTube explanation only
SELECT COUNT("Exercise")
FROM public."Fitness"
WHERE "In-Depth YouTube Explanation" IS NOT NULL;

-- Finding exercises which has both a short and in-depth YouTube demonstration
SELECT COUNT("Exercise")
FROM public."Fitness"
WHERE "Short YouTube Demonstration" IS NOT NULL AND "In-Depth YouTube Explanation" IS NOT NULL;

-- The frequency of each difficulty level
SELECT "DifficultyLevel", COUNT(*) AS Frequency
FROM public."Fitness"
GROUP BY "DifficultyLevel"
ORDER BY Frequency DESC;

-- Bifurgation of exercise by difficulty level
SELECT "Exercise", "DifficultyLevel", COUNT(*) AS Frequency
FROM public."Fitness"
GROUP BY "Exercise", "DifficultyLevel"
ORDER BY Frequency DESC;

-- Finding which muscle group is targeted the most
SELECT "Target Muscle Group", COUNT(*) AS Frequency
FROM public."Fitness"
WHERE "Target Muscle Group" IS NOT NULL
GROUP BY "Target Muscle Group"
ORDER BY Frequency ASC;

-- The top 5 prime mover muscles
SELECT "Prime Mover Muscle", COUNT(*) AS Frequency
FROM public."Fitness"
WHERE "Prime Mover Muscle" IS NOT NULL
GROUP BY "Prime Mover Muscle"
ORDER BY Frequency DESC
LIMIT 5;

-- Most used equipment
SELECT "Primary Equipment", COUNT(*) AS Frequency
FROM public."Fitness"
WHERE "Primary Equipment" IS NOT NULL
GROUP BY "Primary Equipment"
ORDER BY Frequency DESC;

-- Finding exercises which does not require equipment
SELECT COUNT(*) AS NoEquipmentCount
FROM public."Fitness"
WHERE "Primary Equipment" IS NULL;

--To see the bifurgation of exercises by difficulty level and target muscle group
SELECT 
    "DifficultyLevel",
    "Target Muscle Group",
    COUNT(DISTINCT "Exercise") AS exercise_count
FROM 
    public."Fitness"
GROUP BY 
    "Target Muscle Group", "DifficultyLevel"
ORDER BY 
    "Target Muscle Group", "DifficultyLevel";

-- Listing distinct postures
SELECT DISTINCT "Posture"
FROM public."Fitness"
WHERE "Posture" IS NOT NULL;

-- To see the partition of the number of exercises by body region
SELECT COUNT(*) AS no_excercise, "Body Region"
FROM public."Fitness"
WHERE "Body Region" IS NOT NULL
GROUP BY "Body Region"
ORDER BY no_excercise DESC;

-- Finding a relation between each target muscle group by posture
SELECT DISTINCT "Target Muscle Group", COUNT(*) AS frequency, "Posture"
FROM public."Fitness"
WHERE "Target Muscle Group" IS NOT NULL AND "Posture" IS NOT NULL
GROUP BY "Target Muscle Group", "Posture"
ORDER BY frequency DESC;
