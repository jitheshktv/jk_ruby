lander = lander.locate(lander_id) and lander.recall

lander = lander.locate(lander_id)
lander.recall if lander

---------------------------------------------------
if engine.cut_out?
  engine.restart or enable_emergency_power
end

if engine.cut_out?
  then enable_emergency_power unless engine.restart
end

# unless counter part of if.
----------------------------------------------------

if xyz then abcd else pqrs end

if xyz
  abcd
else
  pqrs
end

mno = if xyz then abcd else pqrs end

-----------------------------------------------------
case abcd
  when "xyz"
    100
  when "pqr"
    200
end

case abcd
  when "xyz" then 100
  when "abcd" then 200
end

pqr = case abcd
        when "xyz" then 100
        when "abcd" then 200
        else 300
      end

-----------------------------------------------------------