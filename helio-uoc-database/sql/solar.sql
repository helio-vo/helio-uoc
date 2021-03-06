--solar.sql

BEGIN;
DROP TABLE solar_cat;
COMMIT;
CREATE TABLE solar_cat (
        solar_cat_id  SERIAL,
        Observatory VARCHAR(8),
        Telescope VARCHAR(8),
        Orbit VARCHAR(8),
        InstrumentType VARCHAR(32),
        SamplingMethod VARCHAR(32),
        DataType VARCHAR(16),
        ObservationMode VARCHAR(32),
        DomainType VARCHAR(16),
        EnergyRegime VARCHAR(8),
        PhysicalParam VARCHAR(32),
        Contact VARCHAR(64),
        Instrument VARCHAR(8),
        Date_obs TIMESTAMP,
        Date_end TIMESTAMP,
        Filename VARCHAR(128),
        Sci_Obj VARCHAR(128),
        Object VARCHAR(8),
        Obj_ID VARCHAR(32),
        Obs_prog VARCHAR(128),
        CoordSystem VARCHAR(16),
        LocationX INTEGER,
        LocationY INTEGER,
        CoordinateNameX  VARCHAR(8),
        CoordinateNameY VARCHAR(8),
        CoordinateNameW VARCHAR(8),
        SpatialSamplingX FLOAT,
        SpatialSamplingY FLOAT,
        SpatialSamplingLAM1 FLOAT,
        SpatialSamplingLAM2 FLOAT,
        SpatialSamplingLAM3 FLOAT,
        SpatialSamplingLAM4 FLOAT,
        AreaCoveredDX INTEGER,
        AreaCoveredDY INTEGER,
        Naxis1 INTEGER,
        Naxis2 INTEGER,
        Naxis3 INTEGER,
        Naxis4 INTEGER,
        Filter1 VARCHAR(16),
        Filter2 VARCHAR(16),
        Filter3 VARCHAR(16),
        Filter4 VARCHAR(16),
        Filter5 VARCHAR(16),
        Filter6 VARCHAR(16),
        Filter7 VARCHAR(16),
        Filter8 VARCHAR(16),
        Filter9 VARCHAR(16),
        Filter10 VARCHAR(16),
        Filter11 VARCHAR(16),
        Filter12 VARCHAR(16),
        Filter13 VARCHAR(16),
        Filter14 VARCHAR(16),
        Filter15 VARCHAR(16),
        Filter16 VARCHAR(16),
        Filter17 VARCHAR(16),
        Filter18 VARCHAR(16),
        Filter19 VARCHAR(16),
        Filter20 VARCHAR(16),
        Filter21 VARCHAR(16),
        Filter22 VARCHAR(16),
        Filter23 VARCHAR(16),
        Filter24 VARCHAR(16),
        Wavmin1 FLOAT,
        Wavmin2 FLOAT,
        Wavmin3 FLOAT,
        Wavmin4 FLOAT,
        Wavmin5 FLOAT,
        Wavmin6 FLOAT,
        Wavmin7 FLOAT,
        Wavmin8 FLOAT,
        Wavmin9 FLOAT,
        Wavmin10 FLOAT,
        Wavmin11 FLOAT,
        Wavmin12 FLOAT,
        Wavmin13 FLOAT,
        Wavmin14 FLOAT,
        Wavmin15 FLOAT,
        Wavmin16 FLOAT,
        Wavmin17 FLOAT,
        Wavmin18 FLOAT,
        Wavmin19 FLOAT,
        Wavmin20 FLOAT,
        Wavmin21 FLOAT,
        Wavmin22 FLOAT,
        Wavmin23 FLOAT,
        Wavmin24 FLOAT,
        Wavmax1 FLOAT,
        Wavmax2 FLOAT,
        Wavmax3 FLOAT,
        Wavmax4 FLOAT,
        Wavmax5 FLOAT,
        Wavmax6 FLOAT,
        Wavmax7 FLOAT,
        Wavmax8 FLOAT,
        Wavmax9 FLOAT,
        Wavmax10 FLOAT,
        Wavmax11 FLOAT,
        Wavmax12 FLOAT,
        Wavmax13 FLOAT,
        Wavmax14 FLOAT,
        Wavmax15 FLOAT,
        Wavmax16 FLOAT,
        Wavmax17 FLOAT,
        Wavmax18 FLOAT,
        Wavmax19 FLOAT,
        Wavmax20 FLOAT,
        Wavmax21 FLOAT,
        Wavmax22 FLOAT,
        Wavmax23 FLOAT,
        Wavmax24 FLOAT,
        Slit_num INTEGER,
        Exp_time FLOAT,
        JD1 FLOAT,
        JD2 FLOAT, 
        SpectSampling VARCHAR(32),
PRIMARY KEY (solar_cat_id));

REVOKE ALL ON TABLE solar_cat FROM apache;
REVOKE ALL ON TABLE solar_cat FROM guest;
REVOKE ALL ON TABLE solar_cat FROM root;

GRANT SELECT ON TABLE solar_cat TO apache;
GRANT SELECT ON TABLE solar_cat TO guest;
GRANT ALL ON TABLE solar_cat TO root;

BEGIN;
DELETE FROM solar_cat;
COPY solar_cat (Observatory,Telescope,Orbit,InstrumentType,SamplingMethod,DataType,ObservationMode,DomainType,EnergyRegime,PhysicalParam,Contact,Instrument,Date_obs,Date_end,Filename,Sci_Obj,Object,Obj_ID,Obs_prog,CoordSystem,LocationX,LocationY,CoordinateNameX,CoordinateNameY,CoordinateNameW,SpatialSamplingX,SpatialSamplingY,SpatialSamplingLAM1,SpatialSamplingLAM2,SpatialSamplingLAM3,SpatialSamplingLAM4,AreaCoveredDX,AreaCoveredDY,Naxis1,Naxis2,Naxis3,Naxis4, Filter1, Filter2, Filter3, Filter4, Filter5, Filter6, Filter7, Filter8, Filter9, Filter10, Filter11, Filter12, Filter13, Filter14, Filter15, Filter16, Filter17, Filter18, Filter19, Filter20, Filter21, Filter22, Filter23, Filter24, Wavmin1, Wavmin2, Wavmin3, Wavmin4, Wavmin5, Wavmin6, Wavmin7, Wavmin8, Wavmin9, Wavmin10, Wavmin11, Wavmin12, Wavmin13, Wavmin14, Wavmin15, Wavmin16, Wavmin17, Wavmin18, Wavmin19, Wavmin20, Wavmin21, Wavmin22, Wavmin23, Wavmin24, Wavmax1, Wavmax2, Wavmax3, Wavmax4, Wavmax5, Wavmax6, Wavmax7, Wavmax8, Wavmax9, Wavmax10, Wavmax11, Wavmax12, Wavmax13, Wavmax14, Wavmax15, Wavmax16, Wavmax17, Wavmax18, Wavmax19, Wavmax20, Wavmax21, Wavmax22, Wavmax23, Wavmax24,Slit_num,Exp_time,JD1,JD2, SpectSampling) FROM '/var/www/hec/temp/SOLAR.postgres.converted';
COMMIT;
