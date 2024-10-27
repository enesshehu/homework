-- Update the gender of a pet
UPDATE petPet
SET gender = 'F'
WHERE petname = 'Fluffy';

-- Add a remark to an existing event
UPDATE petEvent
SET remark = 'Annual check-up'
WHERE petname = 'Fluffy' AND eventdate = '2023-05-01';

-- Correct the species name
UPDATE petPet
SET species = 'Canine'
WHERE petname = 'Buddy';

-- Modify the death date (e.g., if the pet’s status changed)
UPDATE petPet
SET death = NULL
WHERE petname = 'Buddy';
