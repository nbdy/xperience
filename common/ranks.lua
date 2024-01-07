-- Original:
-- 1 XP = 0
-- 2 XP = 800
-- 3 XP = 2100
-- 4 XP = 3800
-- 5 XP = 6100
-- 10   = 24000
-- 20   = 84700
-- 30   = 177100
-- 40   = 299000
-- 50   = 448800
-- 100  = 1584350
-- 200  = 4691850
-- 300  = 8299350
-- 400  = 12406850
-- 500  = 17014350
-- 999  = 47478300
-- Curve: 27.6412x² + 20261.5x - 274830
--  Found with https://www.dcode.fr/function-equation-finder
-- Struct { XP = N, Action = function(rankUp, prevRank, player) }
Config.Ranks = {}

function getRankXP(rank) return (27.6412 * rank)^2 + (20261.5 * rank) - 274830 end

function Config:InitRanks()
    for i=1,999 do Config.Ranks[i] = { XP = getRankXP(i) } end
end
