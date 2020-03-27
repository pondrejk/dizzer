
create table
  grid_averages_250a
as
select
  brno_250a.id,
  avg(grid_2018.children) as children,
  avg(grid_2018.culture) as culture,
  avg(grid_2018.health) as health,
  avg(grid_2018.church) as church,
  avg(grid_2018.parks) as parks,
  avg(grid_2018.social) as social,
  avg(grid_2018.sport) as sport,
  avg(grid_2018.transport) as transport,
  avg(grid_2018.crime) as crime,
  avg(grid_2018.prices) as prices,
  avg(grid_2018.noise) as noise,
  count(*) as count
from
  brno_250a
join
  grid_2018
on
  st_intersects(grid_2018.wkb_geometry, brno_250a.wkb_geometry)
group by
    brno_250a.id