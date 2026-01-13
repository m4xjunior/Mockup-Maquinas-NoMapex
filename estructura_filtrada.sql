    "id_tipoconfigTabla" int,
    "id_configTabla" int NOT NULL
);
    "Id_cal_plancontrol" int IDENTITY(1,1) NOT NULL,
    "Id_fase" bigint NOT NULL,
    "Id_maquina" bigint NOT NULL,
    "Cod_cal_plancontrol" nvarchar(50) NOT NULL,
    "Desc_cal_plancontrol" nvarchar(200) NOT NULL,
    "Id_cal_tipocontrol" int NOT NULL,
    "Id_tipooperario" int NOT NULL,
    "Id_cal_grupocontrol" int NOT NULL,
    "Valor_MAX1" decimal(10,2),
    "Valor_MAX2" decimal(10,2),
    "Valor_MIN1" decimal(10,2),
    "Valor_MIN2" decimal(10,2),
    "Valor_nominal" decimal(10,2) NOT NULL,
    "Valor_nominal_alfanumerico" nvarchar(50),
    "Valor_list" nvarchar(max),
    "NumControlesSPC" int NOT NULL,
    "Frec_Ciclos_maquina" int NOT NULL,
    "Frec_Seg_maquina" int NOT NULL,
    "Approval" smallint NOT NULL,
    "InProcess" smallint NOT NULL,
    "LastControl" smallint NOT NULL,
    "Observaciones" nvarchar(max),
    "Activo" smallint NOT NULL,
    "Orden" smallint NOT NULL,
    "Cod_APPCC" varchar(250),
    "Ponderacion" decimal(10,2),
    "RequiereValidacion" smallint,
    "Imagen1" varchar(300),
    "Valor_list_resultado" nvarchar(max),
    "Fecha_ini" datetime,
    "Fecha_fin" datetime,
    "UnidadMedida" nvarchar(50),
    "Clonable" tinyint,
    "NumVersion" int,
    "Estado" tinyint,
    "Formula" nvarchar(500),
    "Valor_defecto" nvarchar(100),
    "Parametros" nvarchar(2000),
    "Cod_df" nvarchar(45),
    "NumValoresFueraSPC" int,
    "Frec_seg_maquina_marcha" int NOT NULL,
    "Id_turno" int NOT NULL,
    "Id_cal_tipoplan" int,
    "SqlValidacionResultado" nvarchar(max),
    "Id_tipoproducto" int,
    "PathImportarResultado" nvarchar(500),
    "esSlider" tinyint NOT NULL,
    "esPreserie" smallint,
    "Paros_Mantenimiento" smallint,
    "Paros_Ajustes_Produccion" smallint,
    "Paros_Produccion_tiempo" smallint
);
    "Id_prd_erp" int IDENTITY(1,1) NOT NULL,
    "Id_operacion" int NOT NULL,
    "Tipooperacion" nchar(2) NOT NULL,
    "DH_generacion" datetime NOT NULL,
    "DH_proceso" datetime,
    "Ack" tinyint NOT NULL,
    "Parametro1" varchar(50),
    "Parametro2" varchar(100),
    "Parametro3" varchar(50),
    "Parametro4" varchar(50),
    "Parametro5" varchar(200),
    "Parametro6" varchar(50),
    "Parametro7" varchar(50),
    "Parametro8" varchar(50),
    "Parametro9" varchar(50),
    "Parametro10" varchar(50),
    "Parametro11" varchar(1000),
    "Parametro12" varchar(100),
    "Parametro13" varchar(100),
    "Parametro14" varchar(50),
    "Parametro15" varchar(50),
    "Parametro16" varchar(50),
    "Parametro17" varchar(50),
    "Parametro18" varchar(50),
    "Parametro19" varchar(50),
    "Parametro20" varchar(50),
    "Parametro21" varchar(50),
    "Parametro22" varchar(50),
    "Parametro23" varchar(50),
    "Parametro24" varchar(50),
    "Parametro25" varchar(50),
    "Parametro26" varchar(50),
    "Parametro27" varchar(50),
    "Parametro28" varchar(50),
    "Parametro29" varchar(50),
    "Parametro30" varchar(25),
    "Parametro31" varchar(250),
    "Parametro32" varchar(50),
    "Parametro33" varchar(50),
    "Parametro34" varchar(25),
    "Parametro35" varchar(250),
    "Parametro36" varchar(50),
    "Parametro37" varchar(50),
    "Parametro38" varchar(50),
    "Parametro39" varchar(50),
    "Parametro40" varchar(50),
    "Parametro41" varchar(50),
    "Parametro42" varchar(50),
    "Parametro43" varchar(50),
    "Parametro44" varchar(2),
    "Parametro45" varchar(50),
    "Parametro46" varchar(50),
    "Parametro47" varchar(50),
    "Parametro48" varchar(150),
    "Parametro49" varchar(1),
    "Parametro50" varchar(50),
    "Parametro51" varchar(25),
    "Parametro52" varchar(50),
    "Parametro53" varchar(50),
    "Parametro54" varchar(50),
    "Parametro55" varchar(50),
    "Parametro56" varchar(50),
    "Parametro57" varchar(50),
    "Parametro58" varchar(50),
    "Parametro59" varchar(50),
    "Parametro60" varchar(50),
    "Parametro61" varchar(50),
    "Parametro62" varchar(50),
    "Parametro63" varchar(50),
    "Parametro64" varchar(50),
    "Parametro65" varchar(50),
    "Parametro66" varchar(50),
    "Parametro67" varchar(50),
    "Parametro68" varchar(50),
    "Parametro69" varchar(50),
    "Parametro70" varchar(50),
    "Parametro71" varchar(50),
    "Parametro72" varchar(25),
    "Parametro73" varchar(50),
    "Parametro74" varchar(250),
    "Parametro75" varchar(50),
    "Parametro76" varchar(50),
    "Parametro77" varchar(50),
    "Parametro78" varchar(50),
    "Parametro79" varchar(50),
    "Parametro80" varchar(50),
    "Parametro81" varchar(50),
    "Parametro82" varchar(50),
    "Parametro83" varchar(50),
    "Parametro84" varchar(50),
    "Parametro85" varchar(50),
    "Parametro86" varchar(50),
    "Parametro87" varchar(50),
    "Parametro88" varchar(50),
    "Parametro89" varchar(50),
    "Parametro90" varchar(250),
    "Parametro91" varchar(250),
    "Parametro92" varchar(250),
    "Parametro93" varchar(250),
    "Parametro94" varchar(250),
    "Parametro95" varchar(250),
    "Parametro96" varchar(250),
    "Parametro97" varchar(250),
    "Parametro98" varchar(250),
    "Parametro99" varchar(250),
    "Parametro100" varchar(250),
    "Parametro101" varchar(250),
    "Parametro102" varchar(250),
    "Parametro103" varchar(250),
    "Parametro104" varchar(250),
    "Parametro105" varchar(250),
    "Parametro106" varchar(250),
    "Parametro107" varchar(250),
    "Parametro108" varchar(250),
    "Parametro109" varchar(250),
    "Parametro110" varchar(50),
    "ERROR" ntext
);
    "Id_actividad" int IDENTITY(1,1) NOT NULL,
    "Cod_actividad" nvarchar(25),
    "Desc_actividad" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "Actividadof" int NOT NULL,
    "Paromaquina" int,
    "Color" int,
    "Operarioasociado" smallint NOT NULL,
    "Reservado" smallint NOT NULL,
    "Rendimientoproducto" smallint NOT NULL,
    "Contadormaquina" int NOT NULL,
    "CalculoMtbf" smallint NOT NULL,
    "replicarActividad" smallint NOT NULL,
    "MinLevelProd" tinyint NOT NULL,
    "MinLevelMant" tinyint NOT NULL,
    "MinLevelCal" int NOT NULL,
    "VelocidadReducida" tinyint NOT NULL,
    "desc_actividad_TranslationKey" varchar(49),
    PRIMARY KEY(Id_actividad)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_actividadoperario" int IDENTITY(1,1) NOT NULL,
    "Cod_actividadoperario" nvarchar(25),
    "Desc_actividadoperario" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "ActividadMOD" smallint NOT NULL,
    "id_Actividad" int NOT NULL,
    "Orden" smallint,
    "desc_actividadoperario_TranslationKey" varchar(65),
    "Global" tinyint NOT NULL,
    PRIMARY KEY(Id_actividadoperario)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_actividadoperario_maquina" int IDENTITY(1,1) NOT NULL,
    "Id_actividadoperario" int NOT NULL,
    "Id_maquina" int NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_actividadoperario_maquina),
    CONSTRAINT FK_cfg_actividadoperario_maquina_cfg_actividadoperario FOREIGN key("Id_actividadoperario") REFERENCES cfg_actividadoperario("Id_actividadoperario"),
    CONSTRAINT FK_cfg_actividadoperario_maquina_cfg_maquina FOREIGN key("Id_maquina") REFERENCES cfg_maquina("Id_maquina")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_cfg_agentTask" int IDENTITY(1,1) NOT NULL,
    "ComputerName" nvarchar(50) NOT NULL,
    "idPrograma" bigint NOT NULL,
    id_dq bigint NOT NULL,
    "ScheduleHours" varchar(100),
    "ScheduleMinutes" varchar(100),
    "ScheduleDays" varchar(100),
    "ScheduleWeekDays" varchar(100),
    "ScheduleEverySeconds" int,
    "ServiceName" nvarchar(250),
    "InitialDate" datetime NOT NULL,
    "Activo" smallint NOT NULL,
    "TotalExecutions" bigint NOT NULL,
    "TotalTimeMs" decimal(18,2) NOT NULL,
    "TotalExecutionErrors" bigint NOT NULL,
    "LastExecution" datetime,
    "MinPhysicalMemoryUsage" bigint NOT NULL,
    "MaxPhysicalMemoryUsage" bigint NOT NULL,
    "LastPhysicalMemoryUsage" bigint NOT NULL,
    "MinThreads" int NOT NULL,
    "MaxThreads" int NOT NULL,
    "LastThreads" int NOT NULL,
    "MinHandles" int NOT NULL,
    "MaxHandles" int NOT NULL,
    "LastHandles" int NOT NULL,
    PRIMARY KEY(id_cfg_agentTask)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_analisisClasificacion" int IDENTITY(1,1) NOT NULL,
    "cod_analisisClasificacion" nvarchar(50),
    "desc_analisisClasificacion" nvarchar(200),
    color int,
    orden int NOT NULL,
    activo smallint NOT NULL,
    PRIMARY KEY(id_analisisClasificacion)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_analisisEstado" int IDENTITY(1,1) NOT NULL,
    "cod_analisisEstado" nvarchar(50),
    "desc_analisisEstado" nvarchar(200),
    color int,
    activo smallint NOT NULL,
    "Inicial" smallint NOT NULL,
    "Final" smallint NOT NULL,
    PRIMARY KEY(id_analisisEstado)
);
    "id_AnalisisOrigen" int IDENTITY(1,1) NOT NULL,
    "cod_AnalisisOrigen" nvarchar(50),
    "desc_AnalisisOrigen" nvarchar(200),
    color int,
    activo smallint NOT NULL,
    "Tipo" smallint NOT NULL,
    "id_tipoAnalisis" int NOT NULL,
    PRIMARY KEY(id_AnalisisOrigen)
);
EXEC sp_addextendedproperty
    "Id_appcc" int IDENTITY(1,1) NOT NULL,
    "Cod_appcc" nvarchar(25) NOT NULL,
    "Desc_appcc" nvarchar(50) NOT NULL,
    "Detalle" nvarchar(500) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_appcc)
);
    "Id_appcc_control" int IDENTITY(1,1) NOT NULL,
    "Id_appcc" int NOT NULL,
    "Cod_appcc_control" nvarchar(25) NOT NULL,
    "Desc_appcc_control" nvarchar(50) NOT NULL,
    "Frecuencia_Dias" int NOT NULL,
    "FrecuenciaDiaSemana" int NOT NULL,
    "FrecuenciaDiaMes" int NOT NULL,
    "Responsable" nvarchar(100) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_appcc_control)
);
    "Id_appcc_control_parametro" int IDENTITY(1,1) NOT NULL,
    "Id_appcc_control" int NOT NULL,
    "Cod_appcc_control_parametro" nvarchar(25) NOT NULL,
    "Desc_appcc_control_parametro" nvarchar(50) NOT NULL,
    "CriterioApto" nvarchar(100) NOT NULL,
    "Observaciones" nvarchar(4000),
    "Proxima_Fecha" datetime NOT NULL,
    "Ultimo_Fecha" datetime NOT NULL,
    "Ultimo_Apto" smallint NOT NULL,
    "Ultimo_Observaciones" nvarchar(4000),
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_appcc_control_parametro)
);
    "Id_appcc_peligro" int IDENTITY(1,1) NOT NULL,
    "Id_appcc" int NOT NULL,
    "Cod_appcc_peligro" nvarchar(25) NOT NULL,
    "Desc_appcc_peligro" nvarchar(50) NOT NULL,
    "Detalle" nvarchar(1000) NOT NULL,
    "NivelOjetivo" nvarchar(500) NOT NULL,
    "Vigilancia" nvarchar(500) NOT NULL,
    "Frecuencia" nvarchar(500) NOT NULL,
    "Registro" nvarchar(500) NOT NULL,
    "MedidasPreventivas" nvarchar(4000) NOT NULL,
    "MedidasCorrectoras" nvarchar(4000) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_appcc_peligro)
);
    "Id_area" int IDENTITY(1,1) NOT NULL,
    "Cod_area" nvarchar(25) NOT NULL,
    "Desc_area" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "Id_fabrica" int NOT NULL,
    "Id_horario" int NOT NULL,
    orden tinyint NOT NULL,
    "desc_area_TranslationKey" varchar(39),
    PRIMARY KEY(Id_area),
    CONSTRAINT FK_cfg_area_cfg_fabrica FOREIGN key("Id_fabrica") REFERENCES cfg_fabrica("Id_fabrica"),
    CONSTRAINT FK_cfg_area_cfg_horario FOREIGN key("Id_horario") REFERENCES cfg_horario("Id_horario")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_areaplanning int IDENTITY(1,1) NOT NULL,
    cod_areaplanning nvarchar(50) NOT NULL,
    desc_areaplanning nvarchar(150),
    activo tinyint NOT NULL,
    "ordenGantt" int NOT NULL,
    PRIMARY KEY(id_areaplanning)
);
    id_atributo int IDENTITY(1,1) NOT NULL,
    cod_atributo nvarchar(50) NOT NULL,
    desc_atributo nvarchar(150) NOT NULL,
    tiempocambio int NOT NULL,
    activo tinyint NOT NULL,
    "RotarSecuencia" tinyint NOT NULL,
    "ManualAutomatico" tinyint NOT NULL,
    "PreparacionDiscontinua" tinyint NOT NULL,
    "MatrizCambios" tinyint NOT NULL,
    PRIMARY KEY(id_atributo)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_atributovalor int IDENTITY(1,1) NOT NULL,
    id_atributo int NOT NULL,
    cod_valor nvarchar(25) NOT NULL,
    desc_valor nvarchar(250) NOT NULL,
    orden int NOT NULL,
    tiempocambio int NOT NULL,
    activo tinyint NOT NULL,
    max_disponible int NOT NULL,
    orden_inicial int NOT NULL,
    PRIMARY KEY(id_atributovalor),
    CONSTRAINT FK_atributovalor_atributo FOREIGN key(id_atributo) REFERENCES cfg_atributo(id_atributo)
);
    id_baliza int IDENTITY(1,1) NOT NULL,
    "id_tipoBaliza" int NOT NULL,
    cod_baliza nvarchar(50) NOT NULL,
    desc_baliza nvarchar(250),
    ip nvarchar(20) NOT NULL,
    puerto nvarchar(10) NOT NULL,
    "connectTimeout" int NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_baliza),
    CONSTRAINT FK_cfg_baliza_cfg_tipobaliza FOREIGN key("id_tipoBaliza") REFERENCES "cfg_tipoBaliza"("id_tipoBaliza")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_baliza_evento int IDENTITY(1,1) NOT NULL,
    "id_eventoBaliza" int NOT NULL,
    "id_tipoBaliza" int NOT NULL,
    activo tinyint NOT NULL,
    "led1Color" nvarchar(50),
    "led2Color" nvarchar(50),
    "led3Color" nvarchar(50),
    "led4Color" nvarchar(50),
    "led5Color" nvarchar(50),
    "blinkingControl" nvarchar(50),
    "buzzerPattern" nvarchar(50),
    PRIMARY KEY(id_baliza_evento),
    CONSTRAINT FK_cfg_baliza_evento_cfg_eventoBaliza FOREIGN key("id_eventoBaliza") REFERENCES "cfg_eventoBaliza"("id_eventoBaliza"),
    CONSTRAINT FK_cfg_baliza_evento_cfg_tipoBaliza FOREIGN key("id_tipoBaliza") REFERENCES "cfg_tipoBaliza"("id_tipoBaliza")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_cal_grupocontrol" int IDENTITY(1,1) NOT NULL,
    "Cod_cal_grupocontrol" nvarchar(25) NOT NULL,
    "Desc_cal_grupocontrol" nvarchar(50) NOT NULL,
    "esGrupo" smallint NOT NULL,
    "Modo" smallint NOT NULL,
    "Ciclos_maquina" int NOT NULL,
    "Seg_maquina" int NOT NULL,
    "Approval" smallint NOT NULL,
    "InProcess" smallint NOT NULL,
    "LastControl" smallint NOT NULL,
    "Observaciones" nvarchar(max) NOT NULL,
    "Activo" smallint NOT NULL,
    "esObligatorio" tinyint NOT NULL,
    "esCompleto" tinyint NOT NULL,
    "esCorrecto" tinyint NOT NULL,
    "Comentario_nok" tinyint NOT NULL,
    "Email_nok" tinyint NOT NULL,
    "NivelAutorizacionCriticidadBaja" tinyint NOT NULL,
    "NivelAutorizacionCriticidadMedia" tinyint NOT NULL,
    "NivelAutorizacionCriticidadAlta" tinyint NOT NULL,
    "FinalNC" int NOT NULL,
    "id_tipoAnalisis" int NOT NULL,
    "desc_cal_grupocontrol_TranslationKey" varchar(63),
    PRIMARY KEY(Id_cal_grupocontrol)
);
EXEC sp_addextendedproperty
    id_cal_grupocontrol_tipoplan int IDENTITY(1,1) NOT NULL,
    id_cal_grupocontrol int NOT NULL,
    id_cal_tipoplan int NOT NULL,
    PRIMARY KEY(id_cal_grupocontrol_tipoplan),
    CONSTRAINT FK_cfg_cal_grupocontrol_tipoplan_id_cal_grupocontrol FOREIGN key(id_cal_grupocontrol) REFERENCES cfg_cal_grupocontrol("Id_cal_grupocontrol"),
    CONSTRAINT FK_cfg_cal_grupocontrol_tipoplan_id_cal_tipoplan FOREIGN key(id_cal_tipoplan) REFERENCES cfg_cal_tipoplan("Id_cal_tipoplan")
);
    "Id_cal_grupotrendex" int IDENTITY(1,1) NOT NULL,
    "Cod_cal_grupotrendex" nvarchar(25) NOT NULL,
    "Desc_cal_grupotrendex" nvarchar(50),
    "Id_tipodato" int NOT NULL,
    "Activo" tinyint NOT NULL,
    PRIMARY KEY(Id_cal_grupotrendex),
    CONSTRAINT FK_cfg_cal_grupotrendex_cfg_tipodato FOREIGN key("Id_tipodato") REFERENCES cfg_tipodato("Id_tipodato")
);
    "Id_cal_grupotrendex_graf" int IDENTITY(1,1) NOT NULL,
    "Id_cal_grupotrendex" int NOT NULL,
    "Id_graf" int NOT NULL,
    "Activo" tinyint NOT NULL,
    PRIMARY KEY(Id_cal_grupotrendex_graf),
    CONSTRAINT FK_cfg_cal_grupotrendex_cfg_cal_grupotrendex_graf FOREIGN key("Id_cal_grupotrendex") REFERENCES cfg_cal_grupotrendex("Id_cal_grupotrendex"),
    CONSTRAINT FK_cfg_cal_grupotrendex_cfg_graf FOREIGN key("Id_graf") REFERENCES cfg_graf("Id_graf")
);
    "Id_cal_instrumentomedida" int IDENTITY(1,1) NOT NULL,
    "Cod_cal_instrumentomedida" nvarchar(25) NOT NULL,
    "Desc_cal_instrumentomedida" nvarchar(50) NOT NULL,
    "Orden" smallint NOT NULL,
    "Fecha_ultima" datetime,
    "Fecha_proxima" datetime,
    "Activo" smallint NOT NULL,
    "Id_area" int NOT NULL,
    "Observaciones" nvarchar(max) NOT NULL,
    "Fecha_alta" datetime,
    "Id_cal_tipoim" int,
    "Usos_actual" int NOT NULL,
    "Fecha_prox" datetime,
    "Usos_Prox" bigint NOT NULL,
    "Usos_acum" bigint NOT NULL,
    "Frec_usos" bigint NOT NULL,
    "Frec_dias" bigint NOT NULL,
    "Ultimo_comentario" nvarchar(500),
    "FechaInicioBackup" datetime,
    "FechaProximaCalBackup" datetime,
    localizacion varchar(50),
    marca varchar(50),
    numserie varchar(50),
    modelo varchar(50),
    "rangoUtilizacion" varchar(50),
    precision varchar(50),
    "limiteAceptacion" varchar(50),
    calibracion_ex_in varchar(50),
    instruccion_calibracion varchar(50),
    imagen nvarchar(500),
    usuarios_notificacion nvarchar(max),
    tipo nvarchar(100),
    usuario_baja int,
    fecha_baja datetime,
    comentario_baja nvarchar(max),
    "desc_cal_instrumentomedida_TranslationKey" varchar(73),
    "observaciones_TranslationKey" varchar(60),
    PRIMARY KEY(Id_cal_instrumentomedida),
    CONSTRAINT FK_cfg_cal_instrumentomedida_cfg_cal_tipoim FOREIGN key("Id_cal_tipoim") REFERENCES cfg_cal_tipoim("Id_cal_tipoim")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_cal_instrumentomedida_tipocalibracion int IDENTITY(1,1) NOT NULL,
    id_cal_instrumentomedida int NOT NULL,
    id_cal_tipocalibracion int NOT NULL,
    frec_dias int NOT NULL,
    fecha_proxima datetime NOT NULL,
    fecha_ultima datetime NOT NULL,
    PRIMARY KEY(id_cal_instrumentomedida_tipocalibracion)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_cal_noconformidad_estado" int IDENTITY(1,1) NOT NULL,
    "Cod_cal_noconformidad_estado" nvarchar(25) NOT NULL,
    "Desc_cal_noconformidad_estado" nvarchar(50) NOT NULL,
    "Orden" smallint,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_cal_noconformidad_estado)
);
    "Id_cal_plancontrol" int IDENTITY(1,1) NOT NULL,
    "Id_fase" bigint NOT NULL,
    "Id_maquina" bigint NOT NULL,
    "Cod_cal_plancontrol" nvarchar(50) NOT NULL,
    "Desc_cal_plancontrol" nvarchar(200) NOT NULL,
    "Id_cal_tipocontrol" int NOT NULL,
    "Id_tipooperario" int NOT NULL,
    "Id_cal_grupocontrol" int NOT NULL,
    "Valor_MAX1" decimal(10,2),
    "Valor_MAX2" decimal(10,2),
    "Valor_MIN1" decimal(10,2),
    "Valor_MIN2" decimal(10,2),
    "Valor_nominal" decimal(10,2) NOT NULL,
    "Valor_nominal_alfanumerico" nvarchar(50),
    "Valor_list" nvarchar(max),
    "NumControlesSPC" int NOT NULL,
    "Frec_Ciclos_maquina" int NOT NULL,
    "Frec_Seg_maquina" int NOT NULL,
    "Approval" smallint NOT NULL,
    "InProcess" smallint NOT NULL,
    "LastControl" smallint NOT NULL,
    "Observaciones" nvarchar(max),
    "Activo" smallint NOT NULL,
    "Orden" smallint NOT NULL,
    "Cod_APPCC" varchar(250),
    "Ponderacion" decimal(10,2),
    "RequiereValidacion" smallint,
    "Imagen1" varchar(300),
    "Valor_list_resultado" nvarchar(max),
    "Fecha_ini" datetime,
    "Fecha_fin" datetime,
    "UnidadMedida" nvarchar(50),
    "Clonable" tinyint,
    "NumVersion" int,
    "Estado" tinyint,
    "Formula" nvarchar(500),
    "Valor_defecto" nvarchar(100),
    "Parametros" nvarchar(2000),
    "Cod_df" nvarchar(45),
    "NumValoresFueraSPC" int,
    "Frec_seg_maquina_marcha" int NOT NULL,
    "Id_turno" int NOT NULL,
    "Id_cal_tipoplan" int,
    "SqlValidacionResultado" nvarchar(max),
    "Id_tipoproducto" int,
    "PathImportarResultado" nvarchar(500),
    "esSlider" tinyint NOT NULL,
    "esPreserie" smallint,
    "Paros_Mantenimiento" smallint,
    "Paros_Ajustes_Produccion" smallint,
    "Paros_Produccion_tiempo" smallint,
    "desc_cal_plancontrol_TranslationKey" varchar(61),
    "id_cal_plancontrolVersion" int NOT NULL,
    "ModoSPC" int NOT NULL,
    "id_tipoUtillaje" int NOT NULL,
    id_cal_tipocalibracion int,
    id_cal_instrumentomedida int,
    id_area int,
    id_mnt_proc int,
    "generaNoConformidad" smallint NOT NULL,
    "id_tipoAnalisis" int NOT NULL,
    id_tipomaquina int NOT NULL,
    id_cal_auditoria int,
    id_mnt_tipooperacion int NOT NULL,
    id_mnt_estadooperacion int NOT NULL,
    id_mnt_tipoelemento int NOT NULL,
    id_lpa_auditoria int NOT NULL,
    id_cal_tipomuestra int,
    "Id_cal_grupotrendex" int,
    "Id_graf" int,
    "id_chk_checklistPlan" int NOT NULL,
    "frec_seg_iniTurno" int,
    "frec_seg_finTurno" int,
    id_unique varchar(389),
    PRIMARY KEY(Id_cal_plancontrol),
    CONSTRAINT FK_cfg_cal_plancontrol_cfg_cal_tipocontrol FOREIGN key("Id_cal_tipocontrol") REFERENCES cfg_cal_tipocontrol("Id_cal_tipocontrol"),
    CONSTRAINT FK_cfg_cal_plancontrol_cfg_cal_grupocontrol FOREIGN key("Id_cal_grupocontrol") REFERENCES cfg_cal_grupocontrol("Id_cal_grupocontrol"),
    CONSTRAINT FK_cfg_cal_plancontrol_cfg_cal_grupotrendex FOREIGN key("Id_cal_grupotrendex") REFERENCES cfg_cal_grupotrendex("Id_cal_grupotrendex"),
    CONSTRAINT FK_cfg_cal_plancontrol_cfg_graf FOREIGN key("Id_graf") REFERENCES cfg_graf("Id_graf")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_cal_plancontrol" int IDENTITY(1,1) NOT NULL,
    "Id_fase" bigint NOT NULL,
    "Id_maquina" bigint NOT NULL,
    "Cod_cal_plancontrol" nvarchar(50) NOT NULL,
    "Desc_cal_plancontrol" nvarchar(200) NOT NULL,
    "Id_cal_tipocontrol" int NOT NULL,
    "Id_tipooperario" int NOT NULL,
    "Id_cal_grupocontrol" int NOT NULL,
    "Valor_MAX1" decimal(10,2),
    "Valor_MAX2" decimal(10,2),
    "Valor_MIN1" decimal(10,2),
    "Valor_MIN2" decimal(10,2),
    "Valor_nominal" decimal(10,2) NOT NULL,
    "Valor_nominal_alfanumerico" nvarchar(50),
    "Valor_list" nvarchar(max),
    "NumControlesSPC" int NOT NULL,
    "Frec_Ciclos_maquina" int NOT NULL,
    "Frec_Seg_maquina" int NOT NULL,
    "Approval" smallint NOT NULL,
    "InProcess" smallint NOT NULL,
    "LastControl" smallint NOT NULL,
    "Observaciones" nvarchar(max),
    "Activo" smallint NOT NULL,
    "Orden" smallint NOT NULL,
    "Cod_APPCC" varchar(250),
    "Ponderacion" decimal(10,2),
    "RequiereValidacion" smallint,
    "Imagen1" varchar(300),
    "Valor_list_resultado" nvarchar(max),
    "Fecha_ini" datetime,
    "Fecha_fin" datetime,
    "UnidadMedida" nvarchar(50),
    "Clonable" tinyint,
    "NumVersion" int,
    "Estado" tinyint,
    "Formula" nvarchar(500),
    "Valor_defecto" nvarchar(100),
    "Parametros" nvarchar(2000),
    "Cod_df" nvarchar(45),
    "NumValoresFueraSPC" int,
    "Frec_seg_maquina_marcha" int NOT NULL,
    "Id_turno" int NOT NULL,
    "Id_cal_tipoplan" int,
    "SqlValidacionResultado" nvarchar(max),
    "Id_tipoproducto" int,
    "PathImportarResultado" nvarchar(500),
    "esSlider" tinyint NOT NULL,
    "esPreserie" smallint,
    "Paros_Mantenimiento" smallint,
    "Paros_Ajustes_Produccion" smallint,
    "Paros_Produccion_tiempo" smallint
);
    id_cal_plancontrol_im int IDENTITY(1,1) NOT NULL,
    id_cal_plancontrol bigint NOT NULL,
    id_cal_instrumentomedida int NOT NULL,
    "id_cal_instrumentomedidaOrigen" int NOT NULL,
    orden int NOT NULL,
    PRIMARY KEY(id_cal_plancontrol_im),
    CONSTRAINT FK_cfg_cal_plancontrol_im_id_cal_plancontrol FOREIGN key(id_cal_plancontrol) REFERENCES cfg_cal_plancontrol("Id_cal_plancontrol"),
    CONSTRAINT FK_cfg_cal_plancontrol_im_id_cal_instrumentomedida FOREIGN key(id_cal_instrumentomedida) REFERENCES cfg_cal_instrumentomedida("Id_cal_instrumentomedida")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_cal_plancontrol_tipoim int IDENTITY(1,1) NOT NULL,
    id_cal_plancontrol bigint NOT NULL,
    id_cal_tipoim int NOT NULL,
    PRIMARY KEY(id_cal_plancontrol_tipoim),
    CONSTRAINT FK_cfg_cal_plancontrol_tipoim_id_cal_plancontrol FOREIGN key(id_cal_plancontrol) REFERENCES cfg_cal_plancontrol("Id_cal_plancontrol"),
    CONSTRAINT FK_cfg_cal_plancontrol_tipoim_id_cal_tipoim FOREIGN key(id_cal_tipoim) REFERENCES cfg_cal_tipoim("Id_cal_tipoim")
);
    id_cal_plancontrolvalidacion int IDENTITY(1,1) NOT NULL,
    id_origen int NOT NULL,
    id_cal_tipoplan int NOT NULL,
    id_fase int,
    id_maquina int,
    numversion int NOT NULL,
    id_usuario_ing int,
    id_usuario_prod int,
    id_usuario_cal int,
    fecha_ing datetime,
    fecha_prod datetime,
    fecha_cal datetime,
    PRIMARY KEY(id_cal_plancontrolvalidacion)
);
    "Id_cal_plancontrolVersion" int IDENTITY(1,1) NOT NULL,
    "Version" int,
    "Fecha_ini" datetime,
    "Fecha_fin" datetime,
    "Fecha_creacion" datetime NOT NULL,
    "id_usuarioCreacion" int,
    "id_usuarioActivacion" int,
    "Comentarios" nvarchar(max),
    "Estado" int NOT NULL,
    id_cal_tipoplan int NOT NULL,
    "Id_fase" int,
    "Id_maquina" bigint NOT NULL,
    "Id_turno" int NOT NULL,
    "Id_tipoproducto" int,
    "Id_area" int,
    id_cal_instrumentomedida int,
    id_cal_tipocalibracion int,
    id_proveedor int NOT NULL,
    id_producto int NOT NULL,
    id_tipomaquina int NOT NULL,
    id_cal_auditoria int,
    id_lpa_auditoria int NOT NULL,
    id_cal_tipomuestra int,
    PRIMARY KEY(Id_cal_plancontrolVersion)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_cal_resultado int IDENTITY(1,1) NOT NULL,
    cod_cal_resultado nvarchar(150) NOT NULL,
    desc_cal_resultado nvarchar(500) NOT NULL,
    "id_cal_tipoControl" int NOT NULL,
    activo tinyint NOT NULL,
    "desc_cal_resultado_TranslationKey" varchar(57),
    correcto tinyint NOT NULL,
    PRIMARY KEY(id_cal_resultado)
);
EXEC sp_addextendedproperty
    id_cal_tipocalibracion int IDENTITY(1,1) NOT NULL,
    cod_cal_tipocalibracion nvarchar(50),
    desc_cal_tipocalibracion nvarchar(100),
    activo tinyint,
    "desc_cal_tipocalibracion_TranslationKey" varchar(69),
    PRIMARY KEY(id_cal_tipocalibracion)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_cal_tipocontrol" int IDENTITY(1,1) NOT NULL,
    "Cod_cal_tipocontrol" nvarchar(25) NOT NULL,
    "Desc_cal_tipocontrol" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "Tipo_referencia" tinyint NOT NULL,
    "Cod_df" nvarchar(45),
    "Id_cal_tipocontrol_std" int NOT NULL,
    "NumValoresFueraSPC" int,
    "pkg_LabSample" tinyint NOT NULL,
    "Id_tipodato" int,
    "desc_cal_tipocontrol_TranslationKey" varchar(61),
    PRIMARY KEY(Id_cal_tipocontrol),
    CONSTRAINT FK_cfg_cal_tipocontrol_cfg_tipodato FOREIGN key("Id_tipodato") REFERENCES cfg_tipodato("Id_tipodato")
);
EXEC sp_addextendedproperty
    "Id_cal_tipoim" int IDENTITY(1,1) NOT NULL,
    "Cod_cal_tipoim" nvarchar(50) NOT NULL,
    "Desc_cal_tipoim" nvarchar(100),
    "Activo" tinyint NOT NULL,
    "Coste" decimal(9,2),
    "desc_cal_tipoim_TranslationKey" varchar(51),
    PRIMARY KEY(Id_cal_tipoim)
);
    id_cal_tipomuestra int IDENTITY(1,1) NOT NULL,
    cod_cal_tipomuestra nvarchar(50) NOT NULL,
    desc_cal_tipomuestra nvarchar(250),
    "Activo" tinyint NOT NULL,
    id_prn_etiqueta int NOT NULL,
    auditoria tinyint NOT NULL,
    PRIMARY KEY(id_cal_tipomuestra)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_cal_tipoplan" int IDENTITY(1,1) NOT NULL,
    "Cod_cal_tipoplan" nvarchar(50) NOT NULL,
    "Desc_cal_tipoplan" nvarchar(200),
    "Activo" tinyint NOT NULL,
    "DQCfgTipoPlanControl" varchar(max) NOT NULL,
    "VinculadoProduccion" tinyint NOT NULL,
    "PermitePlanParcial" tinyint NOT NULL,
    "ControlGrupoCompleto" tinyint NOT NULL,
    "ControlGrupoObligatorio" tinyint NOT NULL,
    "PedirOperario" tinyint NOT NULL,
    "CerrarFormularioVacio" tinyint NOT NULL,
    "MostarBotonGrafica" tinyint NOT NULL,
    "DFGrafica" varchar(100),
    "MostrarBotonHistorico" tinyint NOT NULL,
    "DFHistorico" varchar(100),
    "DQCfgPlanControl" varchar(max) NOT NULL,
    "DQCfgTipoPlanControl_Clave" varchar(max) NOT NULL,
    "DQHisPlanControl" varchar(max) NOT NULL,
    "MantenerPlanConNuevaVersion" tinyint NOT NULL,
    "MostarBotonGraficaDetalle" tinyint NOT NULL,
    "DFGraficaDetalle" varchar(100),
    "NuevaMuestra" tinyint NOT NULL,
    "DQGrupo" varchar(max),
    "DQDatosAdicionales" varchar(max),
    "DQInstrMedida" varchar(max),
    "GestionHisCalidadAlGuardar" tinyint NOT NULL,
    "GrupoCompletoConPlanParcial" tinyint NOT NULL,
    "DQCopiarCalidadDesplegable" varchar(max),
    "DQCopiarCalidadOrigen" varchar(max),
    "PrimeraAlarmaEnFeq" tinyint NOT NULL,
    "CamposActualizarCabecera" ntext,
    "DQAlarma" nvarchar(max),
    "DQGraficaGeneral" nvarchar(max),
    "DQGraficaDetalle" nvarchar(max),
    "DQElementList" nvarchar(max) NOT NULL,
    "ControlVersiones" tinyint NOT NULL,
    "DQControlVersiones" ntext NOT NULL,
    "NivelUsuarioAutorizadorVersion" int NOT NULL,
    "MinLevelQuality" int NOT NULL,
    "DFAutorizacionPlan" nvarchar(100) NOT NULL,
    "SQLGenerateHeaders" tinyint NOT NULL,
    "GeneraNoConformidad" smallint NOT NULL,
    "MultiWO" tinyint NOT NULL,
    "MultiValueParamList" nvarchar(max) NOT NULL,
    "PreviewPanelWidth" int NOT NULL,
    "PreviewPanel" bit NOT NULL,
    "DqInspectionPlanTitle" nvarchar(max) NOT NULL,
    "PreviewImagePrcHeight" int NOT NULL,
    "DQInstrMedidaPlanta" nvarchar(max) NOT NULL,
    grupo_config_tipoplan nvarchar(25),
    "GenerateHeadersInWS" tinyint NOT NULL,
    orden_lanzamiento int NOT NULL,
    "DQInstrMedidaHis" nvarchar(max) NOT NULL,
    "GestionCavidad" tinyint NOT NULL,
    "DQMapexQualityVersions" ntext NOT NULL,
    "permiteSemaforo" tinyint NOT NULL,
    PRIMARY KEY(Id_cal_tipoplan)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_cal_tipoplan_clave" int IDENTITY(1,1) NOT NULL,
    "Id_cal_tipoplan" int,
    "Campoclave" varchar(100) NOT NULL,
    "SelectClave" varchar(max) NOT NULL,
    "ClaveEntidadRelacionada" tinyint NOT NULL,
    PRIMARY KEY(Id_cal_tipoplan_clave),
    CONSTRAINT FK_cfg_cal_tipoplan_clave_cfg_cal_tipoplan FOREIGN key("Id_cal_tipoplan") REFERENCES cfg_cal_tipoplan("Id_cal_tipoplan")
);
    id_cal_tiporesultado int IDENTITY(1,1) NOT NULL,
    cod_cal_tiporesultado nvarchar(50) NOT NULL,
    desc_cal_tiporesultado nvarchar(100) NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_cal_tiporesultado)
);
    "Id_cal_unidadmedida" int IDENTITY(1,1) NOT NULL,
    "Cod_cal_unidadmedida" nvarchar(25) NOT NULL,
    "Desc_cal_unidadmedida" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_cal_unidadmedida)
);
    "Id_Calendario" int IDENTITY(1,1) NOT NULL,
    "Cod_Calendario" nvarchar(25) NOT NULL,
    "Desc_Calendario" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "desc_calendario_TranslationKey" varchar(51),
    PRIMARY KEY(Id_Calendario)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_Calendario_Dia_Productivo" datetime NOT NULL,
    "Id_Calendario" int NOT NULL,
    "Id_Operario" int NOT NULL,
    "Id_TipoDia" smallint NOT NULL,
    "Hora_Inicio1" datetime NOT NULL,
    "Hora_Fin1" datetime NOT NULL,
    "Hora_Inicio2" datetime,
    "Hora_Fin2" datetime,
    "Hora_Inicio_Descanso1" datetime,
    "Hora_Fin_Descanso1" datetime,
    "Segundos_Produccion" bigint NOT NULL,
    "Segundos_Descanso" bigint NOT NULL,
    "Id_maquina" int NOT NULL,
    "Observaciones" nvarchar(200),
    "Id_horario" int,
    "Hora_Inicio_Descanso2" datetime,
    "Hora_Fin_Descanso2" datetime,
    "Hora_Inicio_Descanso3" datetime,
    "Hora_Fin_Descanso3" datetime,
    "Hora_Inicio_Descanso4" datetime,
    "Hora_Fin_Descanso4" datetime,
    "NumDescansos" tinyint NOT NULL,
    "Segundos_Naturales_Produccion" bigint NOT NULL,
    PRIMARY KEY(Id_Calendario_Dia_Productivo,Id_Calendario,Id_Operario,Id_maquina),
    CONSTRAINT FK_cfg_calendario_dia_productivo_cfg_tipodia FOREIGN key("Id_TipoDia") REFERENCES cfg_tipodia("Id_tipodia"),
    CONSTRAINT FK_cfg_calendario_dia_productivo_cfg_horario FOREIGN key("Id_horario") REFERENCES cfg_horario("Id_horario")
);
    "Id_calendario_dia_productivohoras" int IDENTITY(1,1) NOT NULL,
    "Id_calendario_dia_productivo" datetime NOT NULL,
    "Id_calendario" int NOT NULL,
    "Id_operario" int NOT NULL,
    "Id_maquina" int NOT NULL,
    "Hora_inicio" datetime NOT NULL,
    "Hora_fin" datetime NOT NULL,
    "Observaciones" nvarchar(500),
    "Id_tipodia" int NOT NULL,
    PRIMARY KEY(Id_calendario_dia_productivohoras)
);
    "id_chk_checklistPlan" int IDENTITY(1,1) NOT NULL,
    "cod_chk_checklistPlan" nvarchar(250) NOT NULL,
    "desc_chk_checklistPlan" nvarchar(500) NOT NULL,
    id_chk_proceso int NOT NULL,
    "id_chk_tipoChecklistPlan" int NOT NULL,
    id_tipooperario int NOT NULL,
    "id_his_calendarioSerie" int NOT NULL,
    caducidad int NOT NULL,
    plazo int NOT NULL,
    automatico int NOT NULL,
    color int NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_chk_checklistPlan),
    CONSTRAINT FK_cfg_chk_checklistPlan_cfg_chk_proceso FOREIGN key(id_chk_proceso) REFERENCES cfg_chk_proceso(id_chk_proceso),
    CONSTRAINT FK_cfg_chk_checklistPlan_cfg_chk_tipoChecklistPlan FOREIGN key("id_chk_tipoChecklistPlan") REFERENCES "cfg_chk_tipoChecklistPlan"("id_chk_tipoChecklistPlan"),
    CONSTRAINT FK_cfg_chk_checklistPlan_cfg_tipooperario FOREIGN key(id_tipooperario) REFERENCES cfg_tipooperario("Id_tipooperario")
);
    "id_chk_checklistPlan_maquina" int IDENTITY(1,1) NOT NULL,
    "id_chk_checklistPlan" int NOT NULL,
    id_maquina int NOT NULL,
    activo tinyint NOT NULL,
    "fechaInicio" datetime NOT NULL,
    PRIMARY KEY(id_chk_checklistPlan_maquina),
    CONSTRAINT FK_cfg_chk_checklistPlan_maquina_cfg_chk_checklistPlan FOREIGN key("id_chk_checklistPlan") REFERENCES "cfg_chk_checklistPlan"("id_chk_checklistPlan"),
    CONSTRAINT FK_cfg_chk_checklistPlan_maquina_cfg_chk_cfg_maquina FOREIGN key(id_maquina) REFERENCES cfg_maquina("Id_maquina")
);
    id_chk_proceso int IDENTITY(1,1) NOT NULL,
    cod_chk_proceso nvarchar(250) NOT NULL,
    desc_chk_proceso nvarchar(500) NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_chk_proceso)
);
    "id_chk_tipoChecklistPlan" int IDENTITY(1,1) NOT NULL,
    "cod_chk_tipoChecklistPlan" nvarchar(250) NOT NULL,
    "desc_chk_tipoChecklistPlan" nvarchar(500) NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_chk_tipoChecklistPlan)
);
    "Id_cliente" int IDENTITY(1,1) NOT NULL,
    "Cod_cliente" nvarchar(100),
    "Desc_cliente" nvarchar(250),
    "Activo" smallint NOT NULL,
    "NIF" nvarchar(50) NOT NULL,
    "Nombre_contacto" nvarchar(50) NOT NULL,
    "Telefono" nvarchar(50) NOT NULL,
    "Fax" nvarchar(50) NOT NULL,
    "Email" nvarchar(50) NOT NULL,
    "Direccion" nvarchar(100) NOT NULL,
    "Observaciones" nvarchar(250) NOT NULL,
    PRIMARY KEY(Id_cliente),
    CONSTRAINT CK_cfg_cliente CHECK ([Cod_cliente] IS NOT NULL AND rtrim(ltrim([Cod_cliente]))<>'')
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_clienteplanta int IDENTITY(1,1) NOT NULL,
    id_cliente int NOT NULL,
    cod_clienteplanta nvarchar(50),
    desc_clienteplanta nvarchar(150),
    longitud nvarchar(50),
    latitud nvarchar(50),
    activo tinyint NOT NULL,
    PRIMARY KEY(id_clienteplanta),
    CONSTRAINT FK_cliente_planta_cliente FOREIGN key(id_cliente) REFERENCES cfg_cliente("Id_cliente")
);
    id_config int IDENTITY(1,1) NOT NULL,
    cod_config nvarchar(100) NOT NULL,
    desc_config nvarchar(max) NOT NULL,
    "id_ConfigModulo" int NOT NULL,
    "id_tipoConfigControl" int NOT NULL,
    "cod_Agrupacion" nvarchar(100) NOT NULL,
    orden int NOT NULL,
    "DefaultValue" nvarchar(max) NOT NULL,
    "sqlList" nvarchar(max) NOT NULL,
    "id_TipoConfigTabla" int NOT NULL,
    "sp_Selector" nvarchar(500) NOT NULL,
    "Core" bit NOT NULL,
    "LastUpdate" datetime NOT NULL,
    "LastNetUser" nvarchar(100),
    "LastUser" nvarchar(100),
    "Activo" smallint NOT NULL,
    "MinLevelVisibility" smallint NOT NULL,
    "MinLevelEdit" smallint NOT NULL,
    "ProjectValue" nvarchar(max),
    cod_package nvarchar(50),
    PRIMARY KEY(id_config),
    CONSTRAINT FK_cfg_Config_cfg_ConfigModulo FOREIGN key("id_ConfigModulo") REFERENCES "cfg_ConfigModulo"("id_ConfigModulo"),
    CONSTRAINT FK_cfg_Config_cfg_tipoConfigControl FOREIGN key("id_tipoConfigControl") REFERENCES "cfg_tipoConfigControl"("id_TipoConfigControl"),
    CONSTRAINT FK_cfg_Config_cfg_tipoConfigTabla FOREIGN key("id_TipoConfigTabla") REFERENCES "cfg_tipoConfigTabla"("id_TipoConfigTabla")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
        En Preparación, necesitará tener una firma concreta y su nombre empezar con un prefijo concreto.
        Nos mostrará Varias tablas(en tabuladores) con registros seleccionables i otros que no( por los otros valores actuales del elemento, sirve de chequeo de valores ya qe si es tipo selector no se podrá seleccionar un valor que no esté en este).';
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_ConfigModulo" int NOT NULL,
    "cod_ConfigModulo" nvarchar(100) NOT NULL,
    "desc_ConfigModulo" nvarchar(500) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(id_ConfigModulo)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_configTabla" int NOT NULL,
    "cod_Tabla" nvarchar(200) NOT NULL,
    "id_TipoConfigTabla" int NOT NULL,
    orden int NOT NULL,
    "SQL_List" nvarchar(max) NOT NULL,
    "SQL_Valor" nvarchar(max) NOT NULL,
    PRIMARY KEY(id_configTabla),
    CONSTRAINT FK_cfg_configTabla_cfg_tipoConfigTabla FOREIGN key("id_TipoConfigTabla") REFERENCES "cfg_tipoConfigTabla"("id_TipoConfigTabla")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
        Importante que el orden empiece en 1 y vaya de 1 en uno, sin saltos ni repeticiones';
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
        ---------------------------------------------------------------------
        Select que tiene que retornar idFinal (id del ultimo nivel de tablas(ej cfg_maquina) con el idNivel que seria el id de la tabla de este registro(ej: cfg_tipoMaquina, cfg_area)
        --cfg_maquina, orden 3(Ultimo nivel)
        tiene que retornar el id_maquina en idFinal e idNivel
        --cfg_tipomaquina, orden 2
        tiene que retornar como idFinal el id_maquina y como idNivel su id o sea id_tipomaquina
        --cfg_area, orden 1
        tiene que retornar como idFinal el id_maquina y como idNivel su id o sea id_area
    "id_ConfigTablaRelations" int IDENTITY(1,1) NOT NULL,
    "id_configTablaFinal" int NOT NULL,
    "id_configTabla" int NOT NULL,
    "SQL_Valor" nvarchar(max) NOT NULL,
    CONSTRAINT FK_cfg_configTablaRelations_cfg_configTabla FOREIGN key("id_configTablaFinal") REFERENCES "cfg_ConfigTabla"("id_configTabla"),
    CONSTRAINT FK_cfg_configTablaRelations_cfg_configTabla1 FOREIGN key("id_configTabla") REFERENCES "cfg_ConfigTabla"("id_configTabla")
);
EXEC sp_addextendedproperty
        Es importante que esté bien generada y que los sqls nunca devuelvan mas de un idFinal al ejecutar la consulta';
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_consolidation int IDENTITY(1,1) NOT NULL,
    cod_consolidation nvarchar(250) NOT NULL,
    desc_consolidation nvarchar(500),
    "DQconsolidation" nvarchar(max),
    "DQexport" nvarchar(max),
    enable_consolidation tinyint NOT NULL,
    enable_export tinyint NOT NULL,
    "consolidationMode" nvarchar(50) NOT NULL,
    PRIMARY KEY(id_consolidation)
);
EXEC sp_addextendedproperty
    "Id_defecto" int IDENTITY(1,1) NOT NULL,
    "Cod_defecto" nvarchar(25) NOT NULL,
    "Desc_defecto" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "Id_tipodefecto" int NOT NULL,
    "Imagen" varbinary(max),
    "esNOK" smallint NOT NULL,
    "esRetrabajo" smallint NOT NULL,
    "desc_defecto_TranslationKey" varchar(45),
    "generaNoConformidad" smallint NOT NULL,
    heatmap tinyint NOT NULL,
    "Global" tinyint NOT NULL,
    PRIMARY KEY(Id_defecto),
    CONSTRAINT FK_cfg_defecto_cfg_tipodefecto FOREIGN key("Id_tipodefecto") REFERENCES cfg_tipodefecto("Id_tipodefecto")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_divisa" int IDENTITY(1,1) NOT NULL,
    cod_divisa nvarchar(25) NOT NULL,
    desc_divisa nvarchar(50) NOT NULL,
    activo tinyint NOT NULL,
    observaciones nvarchar(500),
    PRIMARY KEY(Id_divisa)
);
    "Id_doc_tabla" int IDENTITY(1,1) NOT NULL,
    "Cod_doc_tabla" nvarchar(50) NOT NULL,
    "Desc_doc_tabla" nvarchar(50),
    "Activo" smallint NOT NULL,
    "Orden" smallint,
    PRIMARY KEY(Id_doc_tabla)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_doc_tipodoc" int IDENTITY(1,1) NOT NULL,
    "Cod_doc_tipodoc" nvarchar(25) NOT NULL,
    "Desc_doc_tipodoc" nvarchar(50),
    "Cod_doc_tabla" nvarchar(25),
    "Activo" smallint NOT NULL,
    "Ruta" varchar(1000),
    "DiasRevision" int,
    PRIMARY KEY(Id_doc_tipodoc)
);
EXEC sp_addextendedproperty
    "Id_empresa" int IDENTITY(1,1) NOT NULL,
    "Cod_empresa" nvarchar(25) NOT NULL,
    "Desc_empresa" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "Direccion" nvarchar(250),
    "CodigoPostal" nvarchar(50),
    "Poblacion" nvarchar(50),
    "Provincia" nvarchar(50),
    "Telefono" nvarchar(50),
    "Fax" nvarchar(50),
    "NIF" nvarchar(50),
    PRIMARY KEY(Id_empresa)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_EquipoOperario" int IDENTITY(1,1) NOT NULL,
    "Cod_equipooperario" varchar(50) NOT NULL,
    "Desc_equipooperario" varchar(50) NOT NULL,
    "Activo" tinyint NOT NULL,
    PRIMARY KEY(Id_EquipoOperario)
);
    "Id_escenario" int IDENTITY(1,1) NOT NULL,
    "Cod_escenario" nvarchar(25),
    "Desc_escenario" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_escenario)
);
    id_especificacion int IDENTITY(1,1) NOT NULL,
    cod_especificacion nvarchar(50) NOT NULL,
    desc_especificacion nvarchar(150) NOT NULL,
    id_cal_tipocontrol int NOT NULL,
    "unidadMedida" nvarchar(50),
    observaciones nvarchar(max),
    activo tinyint NOT NULL,
    PRIMARY KEY(id_especificacion),
    CONSTRAINT FK_cfg_especificacion_cfg_cal_tipocontrol FOREIGN key(id_cal_tipocontrol) REFERENCES cfg_cal_tipocontrol("Id_cal_tipocontrol")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_estadoFormula" int IDENTITY(1,1) NOT NULL,
    "cod_estadoFormula" nvarchar(25) NOT NULL,
    "desc_estadoFormula" nvarchar(250) NOT NULL,
    color nvarchar(12),
    activo tinyint NOT NULL,
    PRIMARY KEY(id_estadoFormula)
);
    "id_estadoFormulaPaso" int IDENTITY(1,1) NOT NULL,
    "cod_estadoFormulaPaso" nvarchar(25) NOT NULL,
    "desc_estadoFormulaPaso" nvarchar(250) NOT NULL,
    color nvarchar(12),
    "permite_siguientePaso" tinyint NOT NULL,
    "permite_pasoAnterior" tinyint NOT NULL,
    "permite_iniciarPaso" tinyint NOT NULL,
    "permite_finalizarPaso" tinyint NOT NULL,
    "permite_pausarPaso" tinyint NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_estadoFormulaPaso)
);
    "Id_estadoof" int IDENTITY(1,1) NOT NULL,
    "Cod_estadoof" nvarchar(25) NOT NULL,
    "Desc_estadoof" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "Color" nvarchar(12),
    "ColorPlanificador" int,
    "estadoPendiente" smallint NOT NULL,
    "Reservado" smallint NOT NULL,
    "desc_estadoof_TranslationKey" varchar(47),
    PRIMARY KEY(Id_estadoof)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_estadoUtillaje" int IDENTITY(1,1) NOT NULL,
    "cod_estadoUtillaje" nvarchar(50) NOT NULL,
    "desc_estadoUtillaje" nvarchar(250),
    color int,
    disponible tinyint NOT NULL,
    "Activo" tinyint NOT NULL,
    "permiteIniciarOT" tinyint NOT NULL,
    "CambioManual" tinyint NOT NULL,
    PRIMARY KEY(id_estadoUtillaje)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_eventoBaliza" int IDENTITY(1,1) NOT NULL,
    cod_evento nvarchar(50) NOT NULL,
    desc_evento nvarchar(max),
    activo tinyint NOT NULL,
    PRIMARY KEY(id_eventoBaliza)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_fabrica" int IDENTITY(1,1) NOT NULL,
    "Cod_fabrica" nvarchar(25) NOT NULL,
    "Desc_fabrica" nvarchar(25) NOT NULL,
    "Activo" smallint NOT NULL,
    "Id_empresa" int NOT NULL,
    "Direccion" nvarchar(250),
    "CodigoPostal" nvarchar(50),
    "Poblacion" nvarchar(50),
    "Provincia" nvarchar(50),
    "Telefono" nvarchar(50),
    "Fax" nvarchar(50),
    PRIMARY KEY(Id_fabrica),
    CONSTRAINT FK_cfg_fabrica_cfg_empresa FOREIGN key("Id_empresa") REFERENCES cfg_empresa("Id_empresa")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_fabrica_operario int IDENTITY(1,1) NOT NULL,
    id_fabrica int NOT NULL,
    id_operario int NOT NULL,
    CONSTRAINT FK_cfg_fabrica_operario_cfg_fabrica FOREIGN key(id_fabrica) REFERENCES cfg_fabrica("Id_fabrica"),
    CONSTRAINT FK_cfg_fabrica_operario_cfg_operario FOREIGN key(id_operario) REFERENCES cfg_operario("Id_operario")
);
    "Id_fase" int IDENTITY(1,1) NOT NULL,
    "Cod_fase" nvarchar(50) NOT NULL,
    "Desc_fase" nvarchar(150),
    "Id_tipofase" int NOT NULL,
    "Id_producto" int NOT NULL,
    "Activo" smallint NOT NULL,
    "Id_producto_final" int NOT NULL,
    "Orden" smallint NOT NULL,
    "Ultima_fase" nvarchar(10) NOT NULL,
    "Id_Version" bigint NOT NULL,
    "Coste_unitario" decimal(10,2),
    usr_rendimiento_teorico decimal(18,2) NOT NULL,
    "seg_Montaje" int NOT NULL,
    "seg_Desmontaje" int NOT NULL,
    PRIMARY KEY(Id_fase),
    CONSTRAINT FK_cfg_fase_cfg_tipofase FOREIGN key("Id_tipofase") REFERENCES cfg_tipofase("Id_tipofase"),
    CONSTRAINT FK_cfg_fase_cfg_producto FOREIGN key("Id_producto") REFERENCES cfg_producto("Id_producto")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_fase_atributo int IDENTITY(1,1) NOT NULL,
    id_fase int NOT NULL,
    id_atributovalor int NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_fase_atributo),
    CONSTRAINT FK_fase_atributo_fase FOREIGN key(id_fase) REFERENCES cfg_fase("Id_fase"),
    CONSTRAINT FK_fase_atributo_atributo FOREIGN key(id_atributovalor) REFERENCES cfg_atributovalor(id_atributovalor)
);
    id_fase_defecto int IDENTITY(1,1) NOT NULL,
    id_fase int NOT NULL,
    id_defecto int NOT NULL,
    restar smallint NOT NULL,
    "gestionScrap" smallint NOT NULL,
    PRIMARY KEY(id_fase_defecto),
    CONSTRAINT FK_cfg_fase_defecto_cfg_fase FOREIGN key(id_fase) REFERENCES cfg_fase("Id_fase"),
    CONSTRAINT FK_cfg_fase_defecto_cfg_defecto FOREIGN key(id_defecto) REFERENCES cfg_defecto("Id_defecto")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_fase_especificacion int IDENTITY(1,1) NOT NULL,
    id_fase int NOT NULL,
    id_especificacion int NOT NULL,
    valor_nominal decimal(10,2),
    "valor_MIN1" decimal(10,2),
    "valor_MAX1" decimal(10,2),
    texto_resultado nvarchar(150),
    observaciones nvarchar(max),
    activo tinyint NOT NULL,
    PRIMARY KEY(id_fase_especificacion),
    CONSTRAINT FK_cfg_fase_especificacion_cfg_fase FOREIGN key(id_fase) REFERENCES cfg_fase("Id_fase"),
    CONSTRAINT FK_cfg_fase_especificacion_cfg_especificacion FOREIGN key(id_especificacion) REFERENCES cfg_especificacion(id_especificacion)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_fase_maquina" int IDENTITY(1,1) NOT NULL,
    "Id_fase" int NOT NULL,
    "Id_maquina" int NOT NULL,
    "Id_modofuncionamientofase" int NOT NULL,
    "Activo" smallint NOT NULL,
    "Factor_multiplicativo" decimal(8,2) NOT NULL,
    "Rendimientonominal1" decimal(8,2) NOT NULL,
    "Rendimientonominal2" decimal(8,2) NOT NULL,
    "Orden_planning" int NOT NULL,
    "NumOperarios" decimal(9,2) NOT NULL,
    velocidadoperario decimal(8,2) NOT NULL,
    "SegDeteccionParo" int NOT NULL,
    "SegCicloNominal" int NOT NULL,
    "Id_ProductoRuta" int NOT NULL,
    PRIMARY KEY(Id_fase_maquina),
    CONSTRAINT FK_cfg_fase_maquina_cfg_fase FOREIGN key("Id_fase") REFERENCES cfg_fase("Id_fase"),
    CONSTRAINT FK_cfg_fase_maquina_cfg_maquina FOREIGN key("Id_maquina") REFERENCES cfg_maquina("Id_maquina"),
    CONSTRAINT FK_cfg_fase_maquina_cfg_modofuncionamientofase FOREIGN key("Id_modofuncionamientofase") REFERENCES cfg_modofuncionamientofase("Id_modofuncionamientofase")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_fase_producto" int IDENTITY(1,1) NOT NULL,
    "Id_fase" int NOT NULL,
    "Id_producto" int,
    "Activo" smallint NOT NULL,
    "Orden" int,
    "Unidades" decimal(18,4),
    "EntradaSalida" tinyint NOT NULL,
    "Tipo_corte" tinyint NOT NULL,
    "UnidadMedida2" nvarchar(50),
    "Peso" decimal(18,4),
    "UnidadesParalela" decimal(18,4),
    "factorMultiplicativoSalida" int,
    PRIMARY KEY(Id_fase_producto),
    CONSTRAINT FK_cfg_fase_producto_cfg_fase FOREIGN key("Id_fase") REFERENCES cfg_fase("Id_fase"),
    CONSTRAINT FK_cfg_fase_producto_cfg_producto FOREIGN key("Id_producto") REFERENCES cfg_producto("Id_producto")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_fase_utillaje int IDENTITY(1,1) NOT NULL,
    id_fase int NOT NULL,
    "id_tipoUtillaje" int NOT NULL,
    id_utillaje int NOT NULL,
    obligatorio smallint NOT NULL,
    activo smallint NOT NULL,
    orden int NOT NULL,
    unidades_planning int NOT NULL,
    PRIMARY KEY(id_fase_utillaje),
    CONSTRAINT FK_cfg_fase_utillaje_cfg_fase FOREIGN key(id_fase) REFERENCES cfg_fase("Id_fase"),
    CONSTRAINT FK_cfg_fase_utillaje_cfg_tipoUtillaje FOREIGN key("id_tipoUtillaje") REFERENCES "cfg_tipoUtillaje"("id_tipoUtillaje"),
    CONSTRAINT FK_cfg_fase_utillaje_cfg_utillaje FOREIGN key(id_utillaje) REFERENCES cfg_utillaje(id_utillaje)
);
EXEC sp_addextendedproperty
    id_fifo int IDENTITY(1,1) NOT NULL,
    cod_fifo nvarchar(50) NOT NULL,
    desc_fifo nvarchar(250),
    uom nvarchar(25),
    activo tinyint NOT NULL,
    capacity numeric(18,4) NOT NULL,
    total_quantity numeric(18,4) NOT NULL,
    id_graf int NOT NULL,
    PRIMARY KEY(id_fifo)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_fifoMovementType" int IDENTITY(1,1) NOT NULL,
    "cod_fifoMovementType" nvarchar(50) NOT NULL,
    "desc_fifoMovementType" nvarchar(100),
    operation nvarchar(50) NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_fifoMovementType)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_formula int IDENTITY(1,1) NOT NULL,
    cod_formula nvarchar(25) NOT NULL,
    desc_formula nvarchar(250) NOT NULL,
    id_fase int,
    cantidad decimal(18,4) NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_formula),
    CONSTRAINT FK_id_fase FOREIGN key(id_fase) REFERENCES cfg_fase("Id_fase")
);
    "id_formulaPaso" int IDENTITY(1,1) NOT NULL,
    "cod_formulaPaso" nvarchar(25) NOT NULL,
    "desc_formulaPaso" nvarchar(250) NOT NULL,
    id_formula int NOT NULL,
    id_producto int NOT NULL,
    orden int NOT NULL,
    "tiempoTeorico" int,
    temperatura decimal(18,4),
    velocidad decimal(18,4),
    unidades decimal(18,4),
    "toleranciaSup" decimal(18,4),
    "toleranciaInf" decimal(18,4),
    "tipoTolerancia" int,
    obligatorio tinyint NOT NULL,
    "anterioresRealizados" tinyint NOT NULL,
    activo tinyint NOT NULL,
    "unidadMedida" nvarchar(50),
    id_graf_bascula int,
    id_graf_temperatura int,
    id_graf_velocidad int,
    "SQLSeleccionBascula" nvarchar(max),
    "permitePausarPaso" tinyint NOT NULL,
    "PasoFueraTolerancia" tinyint NOT NULL,
    PRIMARY KEY(id_formulaPaso),
    CONSTRAINT FK_cfg_formulaPaso_cfg_formula FOREIGN key(id_formula) REFERENCES cfg_formula(id_formula)
);
    "Id_graf" int IDENTITY(1,1) NOT NULL,
    "Cod_graf" nvarchar(25),
    "Desc_graf" nvarchar(100),
    "Id_maquina" int NOT NULL,
    "Id_area" int NOT NULL,
    id_tipograf int NOT NULL,
    "Id_Driver" int NOT NULL,
    "IP" varchar(40),
    "Id_OrdenTrama" int NOT NULL,
    "CommPort" int NOT NULL,
    "Address" int NOT NULL,
    "OPCValorTag" varchar(100),
    "VMinMin" decimal(12,2) NOT NULL,
    "VMin" decimal(12,2) NOT NULL,
    "VMax" decimal(12,2) NOT NULL,
    "VMaxMax" decimal(12,2) NOT NULL,
    "Unidad" varchar(6),
    "Offset" decimal(12,2) NOT NULL,
    "FactorMultiplicativo" decimal(12,5) NOT NULL,
    "Period" bigint NOT NULL,
    "RefreshValueEveryScan" smallint NOT NULL,
    "SegundosRetrasoAlarma" bigint NOT NULL,
    "VisiblePlanta" smallint NOT NULL,
    "EmailDestino" varchar(400),
    "EmailAlert" varchar(400),
    "SMSTelefono" bigint NOT NULL,
    "rt_Valor" decimal(12,2) NOT NULL,
    "rt_CommError" smallint NOT NULL,
    "rt_Alarma" smallint NOT NULL,
    "rt_InicioAlarma" datetime,
    "rt_AlarmaRetraso" bigint NOT NULL,
    "rt_LastUpdate" datetime NOT NULL,
    "Num_Parametro1" bigint NOT NULL,
    "Num_Parametro2" bigint NOT NULL,
    "Num_Parametro3" bigint NOT NULL,
    "Str_Parametro1" varchar(45),
    "Str_Parametro2" varchar(45),
    "Str_Parametro3" varchar(45),
    dias_historico int NOT NULL,
    "Activo" smallint NOT NULL,
    "Id_mnt_elemento" int NOT NULL,
    "SourceCode" nvarchar(max),
    "Cod_graf_tipovalor" nvarchar(50),
    "Id_tipodato" int NOT NULL,
    "rt_ValorString" nvarchar(50) NOT NULL,
    PRIMARY KEY(Id_graf),
    CONSTRAINT FK_cfg_graf_cfg_tipodato FOREIGN key("Id_tipodato") REFERENCES cfg_tipodato("Id_tipodato")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_graf_tipovalor" int IDENTITY(1,1) NOT NULL,
    "Cod_graf_tipovalor" nvarchar(50) NOT NULL,
    "Valor" int NOT NULL,
    "ValorRelacionado" nvarchar(500) NOT NULL,
    PRIMARY KEY(Id_graf_tipovalor)
);
    id_grupoanalisis int IDENTITY(1,1) NOT NULL,
    id_tipoanalisis int NOT NULL,
    cod_grupoanalisis nvarchar(50),
    desc_grupoanalisis nvarchar(150),
    activo tinyint NOT NULL,
    PRIMARY KEY(id_grupoanalisis)
);
    id_grupoplanning int IDENTITY(1,1) NOT NULL,
    cod_grupoplanning nvarchar(50) NOT NULL,
    desc_grupoplanning nvarchar(250) NOT NULL,
    activo tinyint NOT NULL,
    fecha_aceptado datetime,
    PRIMARY KEY(id_grupoplanning)
);
EXEC sp_addextendedproperty
    "id_grupoUtillaje" int IDENTITY(1,1) NOT NULL,
    "cod_grupoUtillaje" nvarchar(50) NOT NULL,
    "desc_grupoUtillaje" nvarchar(250),
    "Activo" tinyint NOT NULL,
    PRIMARY KEY(id_grupoUtillaje)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_horario" int IDENTITY(1,1) NOT NULL,
    "Cod_horario" nvarchar(25) NOT NULL,
    "Desc_horario" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "InicioDiaTurnoMañana" int NOT NULL,
    PRIMARY KEY(Id_horario)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_interface" int NOT NULL,
    "Cod_interface" nvarchar(25),
    "Desc_interface" nvarchar(100),
    "InOut" smallint NOT NULL,
    "Orden" smallint,
    "Activo" tinyint NOT NULL,
    "dateFormat" nvarchar(50),
    "decimalSeparator" nvarchar(50),
    "LastUpdate" datetime NOT NULL,
    "LastNetUser" nvarchar(100),
    "LastUser" nvarchar(100),
    "ErrorsProcessNumberBeforeERROR" int NOT NULL,
    "debugModeLogging" tinyint NOT NULL,
    "EmailError" varchar(400),
    "deleteDays" int NOT NULL,
    "interfaceVersion" int NOT NULL,
    changelog varchar(max),
    "desc_interface_TranslationKey" varchar(49),
    PRIMARY KEY(Id_interface),
    CONSTRAINT CK_cfg_interface CHECK ([Cod_interface] IS NOT NULL AND rtrim(ltrim([Cod_interface]))<>'')
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_interfaceField" int IDENTITY(1,1) NOT NULL,
    "id_interfaceTable" int NOT NULL,
    "fieldOrder" int NOT NULL,
    "targetColumn" nvarchar(50),
    "targetColumnDescription" nvarchar(500),
    activo smallint NOT NULL,
    "uniqueKey" smallint NOT NULL,
    mandatory smallint NOT NULL,
    param nvarchar(50),
    "integrateWhen" smallint NOT NULL,
    "dataType" nvarchar(50),
    "maxLength" int,
    "defaultValue" nvarchar(50),
    format nvarchar(50),
    "id_interfaceTableOrigin" int NOT NULL,
    "targetColumnOrigin" nvarchar(50),
    comments nvarchar(500),
    "targetColumnDescription_TranslationKey" varchar(63),
    "comments_TranslationKey" varchar(48),
    PRIMARY KEY(id_interfaceField),
    CONSTRAINT FK_cfg_interfaceField_cfg_interfaceTable FOREIGN key("id_interfaceTable") REFERENCES "cfg_interfaceTable"("id_interfaceTable")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_interfaceFieldValidation" int IDENTITY(1,1) NOT NULL,
    "id_interfaceField" int NOT NULL,
    "fieldValidationOrder" int NOT NULL,
    "logicalOperator" nvarchar(50),
    "validationValue1" nvarchar(50),
    "paramToCompare" nvarchar(50),
    "Activo" smallint NOT NULL,
    "SQLValidation" nvarchar(max),
    "SQLUpdate" nvarchar(max),
    PRIMARY KEY(id_interfaceFieldValidation),
    CONSTRAINT FK_cfg_interfaceFieldValidation_cfg_interfaceField FOREIGN key("id_interfaceField") REFERENCES "cfg_interfaceField"("id_interfaceField")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_interfaceSQLValidation" int IDENTITY(1,1) NOT NULL,
    id_interface int NOT NULL,
    "cod_interfaceSQLValidation" nvarchar(50) NOT NULL,
    "desc_interfaceSQLValidation" nvarchar(max) NOT NULL,
    "executeOn" nvarchar(50) NOT NULL,
    "validationOrder" int NOT NULL,
    "SQLValidation" nvarchar(max) NOT NULL,
    "lastUpdate" datetime NOT NULL,
    "lastNetUser" nvarchar(100),
    "lastUser" nvarchar(100),
    activo tinyint NOT NULL,
    PRIMARY KEY(id_interfaceSQLValidation),
    CONSTRAINT FK_cfg_interfaceSQLValidation_cfg_interface FOREIGN key(id_interface) REFERENCES cfg_interface("Id_interface")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_interfaceTable" int IDENTITY(1,1) NOT NULL,
    id_interface int NOT NULL,
    cod_table nvarchar(50) NOT NULL,
    desc_table nvarchar(500),
    "order" int NOT NULL,
    "group" nvarchar(50),
    "Activo" smallint NOT NULL,
    "createRegister" smallint NOT NULL,
    "continueOnError" smallint NOT NULL,
    "desc_table_TranslationKey" varchar(50),
    PRIMARY KEY(id_interfaceTable),
    CONSTRAINT FK_cfg_interfaceTable_cfg_interface FOREIGN key(id_interface) REFERENCES cfg_interface("Id_interface")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_KPI" int IDENTITY(1,1) NOT NULL,
    id_tipodf int NOT NULL,
    cod_grupo nvarchar(50) NOT NULL,
    "cod_KPI" nvarchar(25) NOT NULL,
    "desc_KPI" nvarchar(200) NOT NULL,
    "Cod_kpi_table" varchar(50),
    "Cod_kpi_table2" varchar(50),
    "Cod_kpi_table3" varchar(50),
    "Cod_kpi_table4" varchar(50),
    "Cod_kpi_table5" varchar(50),
    unidades nvarchar(50),
    orden int NOT NULL,
    "SQLCalculo" nvarchar(max) NOT NULL,
    "CustomSQLObjetivo" nvarchar(max),
    "Anual" tinyint NOT NULL,
    "RecalculodiasAnoAnterior" tinyint NOT NULL,
    "Mensual" tinyint NOT NULL,
    "RecalculoNumMeses" tinyint NOT NULL,
    "Semanal" tinyint NOT NULL,
    "RecalculoNumSemanas" tinyint NOT NULL,
    "Diario" tinyint NOT NULL,
    "RecalculoNumDias" tinyint NOT NULL,
    "PorHoras" tinyint NOT NULL,
    "RecalculoNumHoras" tinyint NOT NULL,
    activo smallint NOT NULL,
    "EmailAlarm" nvarchar(400),
    "EmailAlert" nvarchar(400),
    "CanReturnZeroRows" tinyint NOT NULL,
    "KPICalculado" int NOT NULL,
    PRIMARY KEY(id_KPI)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_lab_control" int IDENTITY(1,1) NOT NULL,
    "Cod_lab_control" nvarchar(25) NOT NULL,
    "Desc_lab_control" nvarchar(50) NOT NULL,
    "Id_lab_grupocontrol" int NOT NULL,
    "Id_lab_tipocontrol" int NOT NULL,
    "Cod_unidadmedida" nvarchar(10),
    "Valor_MAX" decimal(10,2) NOT NULL,
    "Valor_MIN" decimal(10,2) NOT NULL,
    "Valor_nominal" decimal(10,2) NOT NULL,
    "Observaciones" nvarchar(max),
    "Orden" smallint NOT NULL,
    "Activo" smallint NOT NULL,
    "Cus_InformeNoCero" smallint NOT NULL,
    PRIMARY KEY(Id_lab_control),
    CONSTRAINT FK_cfg_lab_control_cfg_lab_grupocontrol FOREIGN key("Id_lab_grupocontrol") REFERENCES cfg_lab_grupocontrol("Id_lab_grupocontrol"),
    CONSTRAINT FK_cfg_lab_control_cfg_lab_tipocontrol FOREIGN key("Id_lab_tipocontrol") REFERENCES cfg_lab_tipocontrol("Id_lab_tipocontrol")
);
    "Id_lab_departamento" int IDENTITY(1,1) NOT NULL,
    "Cod_lab_departamento" varchar(50),
    "Desc_lab_departamento" varchar(100),
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_lab_departamento)
);
    "Id_lab_estadomuestra" int IDENTITY(1,1) NOT NULL,
    "Cod_lab_estadomuestra" nvarchar(25) NOT NULL,
    "Desc_lab_estadomuestra" nvarchar(50) NOT NULL,
    "Orden" smallint NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_lab_estadomuestra)
);
    "Id_lab_grupocontrol" int IDENTITY(1,1) NOT NULL,
    "Cod_lab_grupocontrol" nvarchar(25) NOT NULL,
    "Desc_lab_grupocontrol" nvarchar(250) NOT NULL,
    "Id_lab_tipogrupocontrol" int NOT NULL,
    "Coste_estandar" decimal(10,2) NOT NULL,
    "esGrupo" smallint NOT NULL,
    "Observaciones" nvarchar(max),
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_lab_grupocontrol),
    CONSTRAINT FK_cfg_lab_grupocontrol_cfg_lab_grupocontrol FOREIGN key("Id_lab_tipogrupocontrol") REFERENCES cfg_lab_tipogrupocontrol("Id_lab_tipogrupocontrol")
);
    "Id_lab_procedimiento" int IDENTITY(1,1) NOT NULL,
    "Cod_lab_procedimiento" nvarchar(25) NOT NULL,
    "Desc_lab_procedimiento" nvarchar(50) NOT NULL,
    "Id_lab_tipocontrol" int NOT NULL,
    "Observaciones" nvarchar(max),
    "Orden" smallint NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_lab_procedimiento)
);
    "Id_lab_proveedor" int IDENTITY(1,1) NOT NULL,
    "Cod_lab_proveedor" nvarchar(25) NOT NULL,
    "Desc_lab_proveedor" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_lab_proveedor)
);
    "Id_lab_proveedormuestra" int IDENTITY(1,1) NOT NULL,
    "Cod_lab_proveedormuestra" nvarchar(25) NOT NULL,
    "Desc_lab_proveedormuestra" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_lab_proveedormuestra)
);
    "Id_lab_tipocontrol" int IDENTITY(1,1) NOT NULL,
    "Cod_lab_tipocontrol" nvarchar(25) NOT NULL,
    "Desc_lab_tipocontrol" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_lab_tipocontrol)
);
    "Id_lab_tipogrupocontrol" int IDENTITY(1,1) NOT NULL,
    "Cod_lab_tipogrupocontrol" nvarchar(25) NOT NULL,
    "Desc_lab_tipogrupocontrol" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_lab_tipogrupocontrol)
);
    id_linea int IDENTITY(1,1) NOT NULL,
    cod_linea nvarchar(50) NOT NULL,
    desc_linea nvarchar(250) NOT NULL,
    activo smallint NOT NULL,
    PRIMARY KEY(id_linea)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_lpa_auditoria int IDENTITY(1,1) NOT NULL,
    id_lpa_proceso int NOT NULL,
    id_lpa_tipoauditoria int NOT NULL,
    desc_lpa_auditoria nvarchar(250) NOT NULL,
    color int NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_lpa_auditoria),
    CONSTRAINT FK_cfg_lpa_auditoria_cfg_lpa_proceso FOREIGN key(id_lpa_proceso) REFERENCES cfg_lpa_proceso(id_lpa_proceso),
    CONSTRAINT FK_cfg_lpa_auditoria_cfg_lpa_tipoauditoria FOREIGN key(id_lpa_tipoauditoria) REFERENCES cfg_lpa_tipoauditoria(id_lpa_tipoauditoria)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_lpa_auditoria_operario int IDENTITY(1,1) NOT NULL,
    id_lpa_auditoria int NOT NULL,
    id_operario int NOT NULL,
    secuencia int NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_lpa_auditoria_operario),
    CONSTRAINT FK_cfg_lpa_auditoria_operario_cfg_lpa_auditoria FOREIGN key(id_lpa_auditoria) REFERENCES cfg_lpa_auditoria(id_lpa_auditoria),
    CONSTRAINT FK_cfg_lpa_auditoria_operario_cfg_operario FOREIGN key(id_operario) REFERENCES cfg_operario("Id_operario")
);
EXEC sp_addextendedproperty
    id_lpa_nivel int IDENTITY(1,1) NOT NULL,
    cod_lpa_nivel nvarchar(20) NOT NULL,
    frecuencia int NOT NULL,
    caducidad int NOT NULL,
    PRIMARY KEY(id_lpa_nivel)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_lpa_proceso int IDENTITY(1,1) NOT NULL,
    cod_lpa_proceso nvarchar(25) NOT NULL,
    desc_lpa_proceso nvarchar(250) NOT NULL,
    cod_tabla nvarchar(250) NOT NULL,
    id_tabla int NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_lpa_proceso)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_lpa_proceso_clave int IDENTITY(1,1) NOT NULL,
    id_lpa_proceso int NOT NULL,
    "campoClave" nvarchar(50) NOT NULL,
    "selectClave" nvarchar(500) NOT NULL,
    orden int NOT NULL,
    desc_lpa_proceso_clave nvarchar(50),
    PRIMARY KEY(id_lpa_proceso_clave),
    CONSTRAINT FK_cfg_lpa_proceso_clave_cfg_lpa_proceso FOREIGN key(id_lpa_proceso) REFERENCES cfg_lpa_proceso(id_lpa_proceso)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_lpa_tipoauditoria int IDENTITY(1,1) NOT NULL,
    cod_lpa_tipoauditoria nvarchar(25) NOT NULL,
    desc_lpa_tipoauditoria nvarchar(50) NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_lpa_tipoauditoria)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_maquina" int IDENTITY(1,1) NOT NULL,
    "Activo" smallint NOT NULL,
    "Cod_maquina" nvarchar(25) NOT NULL,
    "Desc_maquina" nvarchar(250) NOT NULL,
    "Rt_Cod_of" nvarchar(max),
    "Rt_Unidades_planning" int NOT NULL,
    "Rt_Unidades_planning2" int NOT NULL,
    "Rt_Id_producto" int NOT NULL,
    "Rt_Desc_producto" nvarchar(max),
    "Rt_Id_fase" int NOT NULL,
    "Rt_Id_his_fase" int NOT NULL,
    "Rt_Desc_fase" nvarchar(max),
    "Rt_Id_modofuncionamientofase" int NOT NULL,
    "Rt_Seg_produccion" int NOT NULL,
    "Rt_Seg_preparacion" int NOT NULL,
    "Rt_Seg_paro" int NOT NULL,
    "Rt_Seg_produccion_turno" int NOT NULL,
    "Rt_Seg_paro_turno" int NOT NULL,
    "Rt_Id_paro" int NOT NULL,
    "Rt_Desc_paro" nvarchar(250) NOT NULL,
    "Rt_Hora_inicio_paro" datetime,
    "Rt_Seg_paro_nominal" int NOT NULL,
    "Rt_Seg_paro_max" int NOT NULL,
    "Rt_Paro_maquina" int NOT NULL,
    "Rt_Contadormaquina" int NOT NULL,
    "Rt_Id_his_prod_paro" int NOT NULL,
    "Rt_His_paro" int NOT NULL,
    "Rt_Rendimientonominal1" decimal(8,2) NOT NULL,
    "Rt_Rendimientonominal2" decimal(8,2) NOT NULL,
    "Rt_Factor_multiplicativo" decimal(8,2) NOT NULL,
    "Rt_Id_actividad" int NOT NULL,
    "Rt_Desc_actividad" nvarchar(250) NOT NULL,
    "Rt_Dia_productivo" datetime,
    "Rt_Hora" datetime,
    "Rt_Hora_inicio_turno" datetime,
    "Rt_Hora_fin_turno" datetime,
    "Rt_Id_turno" int NOT NULL,
    "Rt_Desc_turno" nvarchar(250) NOT NULL,
    "Rt_Id_his_prod" int NOT NULL,
    "Rt_Fecha_ini" datetime,
    "Rt_Fecha_fin" datetime,
    "Rt_His_maquina" int NOT NULL,
    "Rt_Num_operario" int NOT NULL,
    "Rt_Id_operario" int NOT NULL,
    "Rt_Desc_operario" nvarchar(max),
    "Rt_Unidades_plc" int NOT NULL,
    "Rt_Unidades_ok_plc" int NOT NULL,
    "Rt_Unidades1_plc" int NOT NULL,
    "Rt_Unidades2_plc" int NOT NULL,
    "Rt_Unidades3_plc" int NOT NULL,
    "Rt_Unidades4_plc" int NOT NULL,
    "Rt_Unidades5_plc" int NOT NULL,
    "Rt_Unidades6_plc" int NOT NULL,
    "Rt_Unidades7_plc" int NOT NULL,
    "Rt_Unidades8_plc" int NOT NULL,
    "Rt_Unidades9_plc" int NOT NULL,
    "Rt_Unidades10_plc" int NOT NULL,
    "Rt_Unidades_old_plc" int NOT NULL,
    "Rt_Unidades_ok_old_plc" int NOT NULL,
    "Rt_Unidades1_old_plc" int NOT NULL,
    "Rt_Unidades2_old_plc" int NOT NULL,
    "Rt_Unidades3_old_plc" int NOT NULL,
    "Rt_Unidades4_old_plc" int NOT NULL,
    "Rt_Unidades5_old_plc" int NOT NULL,
    "Rt_Unidades6_old_plc" int NOT NULL,
    "Rt_Unidades7_old_plc" int NOT NULL,
    "Rt_Unidades8_old_plc" int NOT NULL,
    "Rt_Unidades9_old_plc" int NOT NULL,
    "Rt_Unidades10_old_plc" int NOT NULL,
    "Rt_Id_paro_plc" int NOT NULL,
    "Rt_Unidades" int NOT NULL,
    "Rt_Unidades_ok" int NOT NULL,
    "Rt_Unidades_nok" int NOT NULL,
    "Rt_Unidades_repro" int NOT NULL,
    "Rt_Unidades_cal" int NOT NULL,
    "Rt_Unidades1" int NOT NULL,
    "Rt_Unidades2" int NOT NULL,
    "Rt_Unidades3" int NOT NULL,
    "Rt_Unidades4" int NOT NULL,
    "Rt_Unidades5" int NOT NULL,
    "Rt_Unidades6" int NOT NULL,
    "Rt_Unidades7" int NOT NULL,
    "Rt_Unidades8" int NOT NULL,
    "Rt_Unidades9" int NOT NULL,
    "Rt_Unidades10" int NOT NULL,
    "Rt_Unidades_turno" int NOT NULL,
    "Rt_Unidades_ok_turno" int NOT NULL,
    "Rt_Unidades_repro_turno" int NOT NULL,
    "Rt_Unidades_cal_turno" int NOT NULL,
    "Rt_Unidades_ok_of" int NOT NULL,
    "Rt_Unidades_nok_of" int NOT NULL,
    "Rt_Unidades_repro_of" int NOT NULL,
    "Rt_Unidades_cal_of" int NOT NULL,
    "Rt_Unidades_ok_of_maquina" int NOT NULL,
    "Rt_Unidades_nok_of_maquina" int NOT NULL,
    "Rt_Unidades_repro_of_maquina" int NOT NULL,
    "Rt_Unidades_cal_of_maquina" int NOT NULL,
    "Rt_Unidades_nok_turno" int NOT NULL,
    "Rt_Unidades_ok2" int NOT NULL,
    "Rt_Unidades_nok2" int NOT NULL,
    "Rt_Unidades_repro2" int NOT NULL,
    "Rt_Unidades_cal2" int NOT NULL,
    "Rt_Unidades_ok2_of" int NOT NULL,
    "Rt_Unidades_nok2_of" int NOT NULL,
    "Rt_Unidades_repro2_of" int NOT NULL,
    "Rt_Unidades_cal2_of" int NOT NULL,
    "Rt_Unidades_ok2_of_maquina" int NOT NULL,
    "Rt_Unidades_nok2_of_maquina" int NOT NULL,
    "Rt_Unidades_repro2_of_maquina" int NOT NULL,
    "Rt_Unidades_cal2_of_maquina" int NOT NULL,
    "Rt_Unidades_ok2_turno" int NOT NULL,
    "Rt_Unidades_nok2_turno" int NOT NULL,
    "Rt_Unidades_repro2_turno" int NOT NULL,
    "Rt_Unidades_cal2_turno" int NOT NULL,
    "Rt_Unidades_ok_preparacion" int NOT NULL,
    "Rt_Unidades_nok_preparacion" int NOT NULL,
    "Rt_Acu_seg_marcha" int NOT NULL,
    "Rt_Acu_seg_paro" int NOT NULL,
    "Rt_Acu_Unidades" int NOT NULL,
    "Rt_Acu_Unidades_ok" bigint NOT NULL,
    "Rt_Acu_Unidades_nok" bigint NOT NULL,
    "Rt_Id_his_fase_old" int NOT NULL,
    "Rt_Cont_his_fase" int NOT NULL,
    "Rt_Cambio_his_fase" int NOT NULL,
    "Rt_Actividadof" int NOT NULL,
    "Rt_His_operario" int NOT NULL,
    "F_Commerror" int NOT NULL,
    "F_Id_paro" int NOT NULL,
    "F_Unidades" int NOT NULL,
    "F_Unidades_ok" int NOT NULL,
    "F_Unidades_cal" int NOT NULL,
    "F_Unidades_repro" int NOT NULL,
    "F_Velocidad" int NOT NULL,
    "F_Commport" int NOT NULL,
    "F_Unidades_nok1" int NOT NULL,
    "F_Unidades_nok2" int NOT NULL,
    "F_Unidades_nok3" int NOT NULL,
    "F_Unidades_nok4" int NOT NULL,
    "F_Unidades_nok5" int NOT NULL,
    "F_Unidades_nok6" int NOT NULL,
    "F_Unidades_nok7" int NOT NULL,
    "F_Unidades_nok8" int NOT NULL,
    "F_Unidades_nok9" int NOT NULL,
    "F_Unidades_nok10" int NOT NULL,
    "F_Unidades_nok11" int NOT NULL,
    "F_Unidades_nok12" int NOT NULL,
    "F_Unidades_nok13" int NOT NULL,
    "F_Unidades_nok14" int NOT NULL,
    "F_Unidades_nok15" int NOT NULL,
    "F_Unidades1" int NOT NULL,
    "F_Unidades2" int NOT NULL,
    "F_Unidades3" int NOT NULL,
    "F_Unidades4" int NOT NULL,
    "F_Unidades5" int NOT NULL,
    "F_Unidades6" int NOT NULL,
    "F_Unidades7" int NOT NULL,
    "F_Unidades8" int NOT NULL,
    "F_Unidades9" int NOT NULL,
    "F_Unidades10" int NOT NULL,
    "F_Actualizacion" datetime,
    "F_Id_driver" int NOT NULL,
    "F_IP" varchar(25),
    "F_Id_ordentrama" int NOT NULL,
    "F_TCP_port" int NOT NULL,
    "F_Id_aviso" int NOT NULL,
    "F_FactorMultiplicativo" decimal(8,2) NOT NULL,
    "F_CicloTrabajo" smallint NOT NULL,
    "F_SegDeteccionParo" int NOT NULL,
    "F_SegFinalizacionParo" int NOT NULL,
    "F_OPCValorTag" varchar(100),
    "F_OPCProdTag" varchar(100),
    "F_OPCParoTag" varchar(100),
    "F_Parametro1" int NOT NULL,
    "F_Parametro2" int NOT NULL,
    "F_Parametro3" int NOT NULL,
    "Id_area" int NOT NULL,
    "Id_tipoplanning" int NOT NULL,
    "Id_tipomaquina" int NOT NULL,
    "Rendimientonominal1" decimal(8,2) NOT NULL,
    "Rendimientonominal2" decimal(8,2) NOT NULL,
    "Id_calendario" int NOT NULL,
    "Unope1maq" int NOT NULL,
    "ModoControl" int NOT NULL,
    "ActividadOperario" tinyint NOT NULL,
    "Multioperario" int NOT NULL,
    "Seg_microparo" int NOT NULL,
    "Cm_Id_actividad_old" int NOT NULL,
    "Cm_Id_his_fase_old" int NOT NULL,
    "Cm_Cod_paro_old" nvarchar(25) NOT NULL,
    "Parametro1" varchar(100),
    "Parametro2" varchar(100),
    "Seg_VelocidadReducida" int NOT NULL,
    "NumVelocidadReducida" tinyint NOT NULL,
    "Prc_VelocidadReducida" decimal(8,2) NOT NULL,
    "Prc_VelocidadAlta" decimal(8,2) NOT NULL,
    "NumArranqueAuto" tinyint NOT NULL,
    "Seg_ArranqueAuto" int NOT NULL,
    "Prc_DeteccionParo" int NOT NULL,
    "Id_maquina_padre" int NOT NULL,
    "Coste_hora" decimal(8,2),
    "GanttOrden" int NOT NULL,
    "GanttPermiteSolapar" tinyint NOT NULL,
    "F_salidasPLC" int NOT NULL,
    "F_segciclo" int NOT NULL,
    "F_segParo" int NOT NULL,
    "Id_maquinaPrincipal" int NOT NULL,
    "ObjetivoOEENaranja" int NOT NULL,
    "ObjetivoOEEVerde" int NOT NULL,
    "MinutosOffsetPlanning" int NOT NULL,
    "GestionConsumos" smallint NOT NULL,
    "GestionPesos" smallint NOT NULL,
    "GestionByProducts" smallint NOT NULL,
    "GestionPallets" smallint NOT NULL,
    "GestionCajas" smallint NOT NULL,
    ctm_multiof bit NOT NULL,
    "his_maquinaAlertaEnviado" int NOT NULL,
    "Ag_Unidades_ultimaHora" int NOT NULL,
    "Ag_Unidades_teo_UltimaHora" int NOT NULL,
    "Ag_M_UltimaHora" int NOT NULL,
    "Ag_M_PNP_UltimaHora" int NOT NULL,
    "Ag_Unidades_OK_UltimaHora" int NOT NULL,
    "rt_Id_horario" int NOT NULL,
    "rt_Fecha_UltimoParo" datetime NOT NULL,
    "MaxOFs" int NOT NULL,
    "PermiteAnadirOf" tinyint NOT NULL,
    "SegDeteccionParo" int NOT NULL,
    "Prc_MargenDeteccionParo" int NOT NULL,
    ack_paros_calidad smallint NOT NULL,
    last_reset_ack_paros_calidad datetime,
    "rt_SegCicloNominal" int NOT NULL,
    "SegCicloNominal" int NOT NULL,
    "Freq_pesada" int NOT NULL,
    "F_Id_programa" int NOT NULL,
    "rt_Cod_producto" nvarchar(max) NOT NULL,
    "rt_NumOfs" int NOT NULL,
    "Rt_NumOper" decimal(10,6) NOT NULL,
    "TipoRendimiento" tinyint NOT NULL,
    "Rt_RendimientoNominal1MultiWO" decimal(10,2) NOT NULL,
    "Rt_RendimientoNominal2MultiWO" decimal(10,2) NOT NULL,
    "rt_FactorMultiplicativoMultiWO" decimal(10,2) NOT NULL,
    "ProcedureCorteTrazabilidad" nvarchar(150) NOT NULL,
    "f_segMarcha" int NOT NULL,
    "SalidaManualObligatoria" tinyint NOT NULL,
    id_linea int NOT NULL,
    "Ag_Rt_Id_turno_ultimaHora" int NOT NULL,
    "Ag_Rt_Dia_productivo_ultimaHora" datetime NOT NULL,
    "rt_id_utillajeMolde" int NOT NULL,
    id_tipoformulacion int NOT NULL,
    id_tipotrazabilidad int NOT NULL,
    ag_rt_unidades_turno decimal(18,4) NOT NULL,
    ag_rt_unidades_teo_turno decimal(18,4) NOT NULL,
    ag_rt_productividad_turno decimal(18,4) NOT NULL,
    "FormToOpen" nvarchar(200) NOT NULL,
    "rt_id_productoRuta" int NOT NULL,
    "Ag_M_OK_TEO_UltimaHora" int NOT NULL,
    "desc_maquina_TranslationKey" varchar(45),
    "SeqMargenRecurso" int NOT NULL,
    id_areaplanning int NOT NULL,
    id_grupoplanning int NOT NULL,
    "OrdenScada" smallint NOT NULL,
    "OrdenMaquinaEnLinea" smallint NOT NULL,
    "Ag_Rt_OEE_Turno" decimal(8,2) NOT NULL,
    "Ag_Rt_Cal_Turno" decimal(8,2) NOT NULL,
    "Ag_Rt_Disp_Turno" decimal(8,2) NOT NULL,
    "Ag_Rt_Rend_Turno" decimal(8,2) NOT NULL,
    "Ag_Rt_M_Turno" int NOT NULL,
    "Ag_Rt_PP_Turno" int NOT NULL,
    "Ag_Rt_PNP_Turno" int NOT NULL,
    id_process int NOT NULL,
    id_baliza int NOT NULL,
    PRIMARY KEY(Id_maquina),
    CONSTRAINT FK_cfg_maquina_his_fase FOREIGN key("Rt_Id_his_fase") REFERENCES his_fase("Id_his_fase"),
    CONSTRAINT FK_cfg_maquina_cfg_actividad FOREIGN key("Rt_Id_actividad") REFERENCES cfg_actividad("Id_actividad"),
    CONSTRAINT FK_cfg_maquina_cfg_turno FOREIGN key("Rt_Id_turno") REFERENCES cfg_turno("Id_turno"),
    CONSTRAINT FK_cfg_maquina_cfg_operario FOREIGN key("Rt_Id_operario") REFERENCES cfg_operario("Id_operario"),
    CONSTRAINT FK_cfg_maquina_cfg_area FOREIGN key("Id_area") REFERENCES cfg_area("Id_area"),
    CONSTRAINT FK_cfg_maquina_cfg_linea FOREIGN key(id_linea) REFERENCES cfg_linea(id_linea),
    CONSTRAINT FK_maquina_areaplanning FOREIGN key(id_areaplanning) REFERENCES cfg_areaplanning(id_areaplanning),
    CONSTRAINT FK_maquina_grupoplanning FOREIGN key(id_grupoplanning) REFERENCES cfg_grupoplanning(id_grupoplanning),
    CONSTRAINT FK_cfg_maquina_sys_process FOREIGN key(id_process) REFERENCES sys_process(id_process),
    CONSTRAINT FK_cfg_maquina_cfg_baliza FOREIGN key(id_baliza) REFERENCES cfg_baliza(id_baliza)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_maquina_atributo int IDENTITY(1,1) NOT NULL,
    id_maquina int NOT NULL,
    id_atributo int NOT NULL,
    id_atributovalor int NOT NULL,
    activo tinyint,
    "noAplicarTiempo" tinyint NOT NULL,
    PRIMARY KEY(id_maquina_atributo),
    CONSTRAINT FK_maquina_atributo_maquina FOREIGN key(id_maquina) REFERENCES cfg_maquina("Id_maquina"),
    CONSTRAINT FK_maquina_atributo_atributo FOREIGN key(id_atributo) REFERENCES cfg_atributo(id_atributo),
    CONSTRAINT FK_maquina_atributo_atributovalor FOREIGN key(id_atributovalor) REFERENCES cfg_atributovalor(id_atributovalor)
);
EXEC sp_addextendedproperty
    "Tabla" nvarchar(200) NOT NULL,
    "ColumnaIdTranslationKey" nvarchar(200) NOT NULL,
    "Columna" nvarchar(200) NOT NULL,
    "ColumnaId" nvarchar(200) NOT NULL,
    "ColumnNameForMerge" nvarchar(200),
    "DetectedRowConfigError" bit NOT NULL,
    PRIMARY KEY(Tabla,ColumnaIdTranslationKey)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
Necesario si los IDs pueden ser distintos entre BDs.
SI Es Blanco o nulo se hara el merge por la translationKey.
Si se llena se hace el Merge por esa columna dejando los Keys de destino sin modificar.
En todos los casos no se importa lo que no tenga coincidencia a traducir.';
EXEC sp_addextendedproperty
    id_mbl_usuario_tabla int IDENTITY(1,1) NOT NULL,
    id_usuario int NOT NULL,
    cfg_mnt_averia tinyint NOT NULL,
    cfg_mnt_averiacausa tinyint NOT NULL,
    cfg_mnt_estadooperacion tinyint NOT NULL,
    cfg_operario tinyint NOT NULL,
    cfg_mnt_elemento tinyint NOT NULL,
    PRIMARY KEY(id_mbl_usuario_tabla)
);
    "Id_mensaje" int IDENTITY(1,1) NOT NULL,
    "Cod_mensaje" nvarchar(25) NOT NULL,
    "Desc_mensaje" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "Caducidad" datetime NOT NULL,
    "Id_usuario" int NOT NULL,
    "Mensaje" nvarchar(max) NOT NULL,
    "Caduca" smallint NOT NULL,
    "Fecha" datetime NOT NULL,
    "Id_his_doc" int,
    "Id_operario" int,
    "Id_mensaje_padre" int,
    PRIMARY KEY(Id_mensaje),
    CONSTRAINT FK_cfg_mensaje_sys_usuario FOREIGN key("Id_usuario") REFERENCES sys_usuario("Id_usuario"),
    CONSTRAINT FK_cfg_mensaje_his_doc FOREIGN key("Id_his_doc") REFERENCES his_doc("Id_his_doc")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_mnt_almacen" int IDENTITY(1,1) NOT NULL,
    "Id_fabrica" int NOT NULL,
    "Cod_mnt_almacen" nvarchar(25),
    "Desc_mnt_almacen" nvarchar(50),
    "Activo" smallint,
    "Id_mnt_tipoalmacen" int NOT NULL,
    PRIMARY KEY(Id_mnt_almacen),
    CONSTRAINT FK_cfg_mnt_almacen_cfg_mnt_tipoalmacen FOREIGN key("Id_mnt_tipoalmacen") REFERENCES cfg_mnt_tipoalmacen(id_mnt_tipoalmacen)
);
    id_mnt_almacen_recambio int IDENTITY(1,1) NOT NULL,
    id_mnt_almacen int NOT NULL,
    id_mnt_recambio bigint NOT NULL,
    rt_stock_real decimal(20,4) NOT NULL,
    stock_min int NOT NULL,
    cantidad_min int NOT NULL,
    stock_max bigint NOT NULL,
    fecha_caducidad datetime,
    "fecha_ultimoMovimiento" datetime NOT NULL,
    lote nvarchar(250),
    ubicacion nvarchar(50),
    avisar tinyint NOT NULL,
    "lastUpdate" datetime NOT NULL,
    PRIMARY KEY(id_mnt_almacen_recambio),
    CONSTRAINT FK_cfg_mnt_almacen_recambio_cfg_mnt_almacen FOREIGN key(id_mnt_almacen) REFERENCES cfg_mnt_almacen("Id_mnt_almacen"),
    CONSTRAINT FK_cfg_mnt_almacen_recambio_cfg_mnt_recambio FOREIGN key(id_mnt_recambio) REFERENCES cfg_mnt_recambio("Id_mnt_recambio"),
    CONSTRAINT CK_StockMaxStockMin CHECK ([stock_min]<=[stock_max])
);
    "Id_mnt_area" int IDENTITY(1,1) NOT NULL,
    "Cod_mnt_area" nvarchar(25) NOT NULL,
    "Desc_mnt_area" nvarchar(50) NOT NULL,
    "Ini_atencion" nvarchar(25) NOT NULL,
    "Fin_atencion" nvarchar(25) NOT NULL,
    "Mail_notificacion" nvarchar(75) NOT NULL,
    "Mail_incidencia" nvarchar(75) NOT NULL,
    "Activo" tinyint NOT NULL,
    PRIMARY KEY(Id_mnt_area)
);
    id_mnt_averia int IDENTITY(1,1) NOT NULL,
    cod_mnt_averia nvarchar(25) NOT NULL,
    desc_mnt_averia nvarchar(50) NOT NULL,
    id_mnt_causa int,
    id_mnt_accion int,
    id_mnt_accioncorrec int,
    id_mnt_averia_padre int NOT NULL,
    activo tinyint NOT NULL,
    es_valordefecto tinyint NOT NULL,
    "NoImputarOT" tinyint NOT NULL,
    PRIMARY KEY(id_mnt_averia)
);
EXEC sp_addextendedproperty
    id_mnt_averiaaccion int IDENTITY(1,1) NOT NULL,
    cod_mnt_averiaaccion nvarchar(25) NOT NULL,
    desc_mnt_averiaaccion nvarchar(50),
    activo tinyint NOT NULL,
    es_valordefecto tinyint NOT NULL,
    mensaje nvarchar(100),
    id_mnt_estadoelemento int NOT NULL,
    PRIMARY KEY(id_mnt_averiaaccion)
);
    id_mnt_averiacausa int IDENTITY(1,1) NOT NULL,
    cod_mnt_averiacausa nvarchar(25) NOT NULL,
    desc_mnt_averiacausa nvarchar(50),
    activo tinyint NOT NULL,
    id_mnt_averiacausa_padre int,
    es_valordefecto tinyint NOT NULL,
    "NoImputarOT" tinyint NOT NULL,
    PRIMARY KEY(id_mnt_averiacausa)
);
EXEC sp_addextendedproperty
    id_mnt_centrocoste int IDENTITY(1,1) NOT NULL,
    cod_mnt_centrocoste nvarchar(25) NOT NULL,
    desc_mnt_centrocoste nvarchar(250) NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_mnt_centrocoste)
);
    id_mnt_centroservicio int IDENTITY(1,1) NOT NULL,
    cod_mnt_centroservicio nvarchar(25) NOT NULL,
    desc_mnt_centroservicio nvarchar(50) NOT NULL,
    activo tinyint NOT NULL,
    email nvarchar(150),
    PRIMARY KEY(id_mnt_centroservicio)
);
EXEC sp_addextendedproperty
    id_mnt_contador int IDENTITY(1,1) NOT NULL,
    cod_mnt_contador nvarchar(25) NOT NULL,
    desc_mnt_contador nvarchar(50),
    activo smallint NOT NULL,
    id_maquina int,
    valor bigint NOT NULL,
    tipocontador int NOT NULL,
    id_utillaje int NOT NULL,
    "valorInicial" int NOT NULL,
    PRIMARY KEY(id_mnt_contador)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_mnt_contrato" int IDENTITY(1,1) NOT NULL,
    "Cod_mnt_contrato" nvarchar(25) NOT NULL,
    "Desc_mnt_contrato" nvarchar(50) NOT NULL,
    "Fecha_inicio" datetime NOT NULL,
    "Fecha_fin" datetime,
    "Email_avisocaducidad" nvarchar(50) NOT NULL,
    "Id_mnt_proveedor" int NOT NULL,
    "Zona" nvarchar(50) NOT NULL,
    "Prorroga_duracion" int NOT NULL,
    "Prorroga_numero" int NOT NULL,
    "Antelacion_avisoresolucion" nvarchar(50) NOT NULL,
    "Horario_servicio" nvarchar(25) NOT NULL,
    "T_resolucion_1" int NOT NULL,
    "T_resolucion_2" int NOT NULL,
    "T_resolucion_3" int NOT NULL,
    "Activo" tinyint NOT NULL,
    "Envio_directo" tinyint NOT NULL,
    "Observaciones" nvarchar(255) NOT NULL,
    "Info_penalizaciones" nvarchar(255) NOT NULL,
    "Precio_hora" nvarchar(25) NOT NULL,
    "Precio_km" nvarchar(25) NOT NULL,
    "Precio_dieta" nvarchar(25) NOT NULL,
    "Id_usuariocreacion" int NOT NULL,
    "Cus_avisado_caducidad" tinyint NOT NULL,
    PRIMARY KEY(Id_mnt_contrato)
);
    id_mnt_contrato_elemento int IDENTITY(1,1) NOT NULL,
    "Id_mnt_contrato" int NOT NULL,
    "Id_mnt_elemento" int NOT NULL,
    "Activo" tinyint NOT NULL,
    PRIMARY KEY(id_mnt_contrato_elemento)
);
    id_mnt_cuentacoste int IDENTITY(1,1) NOT NULL,
    id_mnt_centrocoste int NOT NULL,
    cod_mnt_cuentacoste nvarchar(25) NOT NULL,
    desc_mnt_cuentacoste nvarchar(50) NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_mnt_cuentacoste),
    CONSTRAINT FK_cfg_mnt_cuentacoste_cfg_mnt_centrocoste FOREIGN key(id_mnt_centrocoste) REFERENCES cfg_mnt_centrocoste(id_mnt_centrocoste)
);
    "Id_mnt_departamento" int IDENTITY(1,1) NOT NULL,
    "Cod_mnt_departamento" nvarchar(25) NOT NULL,
    "Desc_mnt_departamento" nvarchar(50) NOT NULL,
    "Activo" tinyint NOT NULL,
    PRIMARY KEY(Id_mnt_departamento)
);
    "Id_mnt_elemento" int IDENTITY(1,1) NOT NULL,
    "Cod_mnt_elemento" varchar(25) NOT NULL,
    "Desc_mnt_elemento" varchar(100) NOT NULL,
    "Activo" smallint NOT NULL,
    "Id_maquina" bigint NOT NULL,
    "Id_mnt_elementopadre" int NOT NULL,
    "Id_mnt_tipoelemento" int NOT NULL,
    "Id_mnt_cuentacoste" int NOT NULL,
    "Ficticio" tinyint NOT NULL,
    "NoImputarPDS" tinyint NOT NULL,
    "Id_mnt_centroservicio" int NOT NULL,
    observaciones varchar(max),
    "Arbol" varchar(max),
    nivel int NOT NULL,
    id_mnt_elemento1 int NOT NULL,
    id_mnt_elemento2 int NOT NULL,
    id_mnt_elemento3 int NOT NULL,
    id_mnt_elemento4 int NOT NULL,
    id_mnt_elemento5 int NOT NULL,
    id_mnt_elemento6 int NOT NULL,
    id_mnt_elemento7 int NOT NULL,
    id_mnt_elemento8 int NOT NULL,
    ubicacion nvarchar(250),
    "Modelo" nvarchar(250),
    "NumSerie" nvarchar(100),
    "AnoFabricacion" int,
    id_mnt_estadoelemento int,
    cod_tipofase nvarchar(50),
    cod_lote nvarchar(50),
    es_utillaje tinyint NOT NULL,
    id_producto int NOT NULL,
    cus_id_producto_madre int,
    fecha_alta datetime NOT NULL,
    "Id_mnt_proveedor" int,
    "PathImagen" nvarchar(500),
    "Cod_usuario_bloqueo" nvarchar(50),
    "Fecha_bloqueo" datetime,
    id_utillaje int NOT NULL,
    PRIMARY KEY(Id_mnt_elemento),
    CONSTRAINT FK_cfg_mnt_elemento_cfg_mnt_tipoelemento FOREIGN key("Id_mnt_tipoelemento") REFERENCES cfg_mnt_tipoelemento(id_mnt_tipoelemento),
    CONSTRAINT FK_cfg_mnt_elemento_cfg_mnt_cuentacoste FOREIGN key("Id_mnt_cuentacoste") REFERENCES cfg_mnt_cuentacoste(id_mnt_cuentacoste),
    CONSTRAINT FK_cfg_mnt_elemento_cfg_mnt_centroservicio FOREIGN key("Id_mnt_centroservicio") REFERENCES cfg_mnt_centroservicio(id_mnt_centroservicio),
    CONSTRAINT FK_cfg_mnt_elemento_cfg_utillaje FOREIGN key(id_utillaje) REFERENCES cfg_utillaje(id_utillaje)
);
EXEC sp_addextendedproperty
    id_mnt_elemento_maquina int IDENTITY(1,1) NOT NULL,
    id_mnt_elemento int NOT NULL,
    id_maquina int NOT NULL,
    PRIMARY KEY(id_mnt_elemento_maquina),
    CONSTRAINT FK_cfg_mnt_elemento_maquina_cfg_mnt_elemento FOREIGN key(id_mnt_elemento) REFERENCES cfg_mnt_elemento("Id_mnt_elemento"),
    CONSTRAINT FK_cfg_mnt_elemento_maquina-cfg_maquina FOREIGN key(id_maquina) REFERENCES cfg_maquina("Id_maquina")
);
    id_mnt_elemento_proc int IDENTITY(1,1) NOT NULL,
    id_mnt_elemento int NOT NULL,
    id_mnt_proc int NOT NULL,
    cod_mnt_elemento_proc nvarchar(25) NOT NULL,
    desc_mnt_elemento_proc nvarchar(300),
    activo tinyint NOT NULL,
    "Frecuencia" int NOT NULL,
    id_mnt_centroservicio int NOT NULL,
    id_mnt_tipooperacion int NOT NULL,
    "Lunes" tinyint NOT NULL,
    "Martes" tinyint NOT NULL,
    "Miercoles" tinyint NOT NULL,
    "Jueves" tinyint NOT NULL,
    "Viernes" tinyint NOT NULL,
    "Sabado" tinyint NOT NULL,
    "Domingo" tinyint NOT NULL,
    "Enero" tinyint NOT NULL,
    "Febrero" tinyint NOT NULL,
    "Marzo" smallint NOT NULL,
    "Abril" tinyint NOT NULL,
    "Mayo" tinyint NOT NULL,
    "Junio" tinyint NOT NULL,
    "Julio" tinyint NOT NULL,
    "Agosto" tinyint NOT NULL,
    "Septiembre" tinyint NOT NULL,
    "Octubre" tinyint NOT NULL,
    "Noviembre" tinyint NOT NULL,
    "Diciembre" tinyint NOT NULL,
    id_mnt_contador int NOT NULL,
    "FrecuenciaContador" bigint NOT NULL,
    "ContadorUltimo" decimal(18,2) NOT NULL,
    "ContadorActual" decimal(18,2) NOT NULL,
    "FechaUltimo" datetime NOT NULL,
    "HorasUrgencia" int NOT NULL,
    "HorasCaducidad" int NOT NULL,
    "Id_mnt_tipocoste" int NOT NULL,
    "SegundosPlanning" bigint NOT NULL,
    PRIMARY KEY(id_mnt_elemento_proc),
    CONSTRAINT FK_cfg_mnt_elemento_proc_cfg_mnt_elemento FOREIGN key(id_mnt_elemento) REFERENCES cfg_mnt_elemento("Id_mnt_elemento"),
    CONSTRAINT FK_cfg_mnt_elemento_proc_cfg_mnt_proc FOREIGN key(id_mnt_proc) REFERENCES cfg_mnt_proc(id_mnt_proc),
    CONSTRAINT FK_cfg_mnt_elemento_proc_cfg_mnt_contador FOREIGN key(id_mnt_contador) REFERENCES cfg_mnt_contador(id_mnt_contador),
    CONSTRAINT FK_cfg_mnt_elemento_proc_cfg_mnt_tipocoste FOREIGN key("Id_mnt_tipocoste") REFERENCES cfg_mnt_tipocoste(id_mnt_tipocoste)
);
    id_mnt_elemento_proc_operario int IDENTITY(1,1) NOT NULL,
    id_mnt_elemento_proc int NOT NULL,
    id_operario int NOT NULL,
    horasprevistas decimal(18,2) NOT NULL,
    PRIMARY KEY(id_mnt_elemento_proc_operario),
    CONSTRAINT FK_cfg_mnt_elemento_proc_operario_cfg_mnt_elemento_proc FOREIGN key(id_mnt_elemento_proc) REFERENCES cfg_mnt_elemento_proc(id_mnt_elemento_proc),
    CONSTRAINT FK_cfg_mnt_elemento_proc_operario_cfg_operario FOREIGN key(id_operario) REFERENCES cfg_operario("Id_operario")
);
    id_mnt_elemento_proc_punto int IDENTITY(1,1) NOT NULL,
    id_mnt_elemento_proc int NOT NULL,
    id_mnt_punto int NOT NULL,
    orden smallint NOT NULL,
    valordefecto smallint NOT NULL,
    "Desc_mnt_punto" nvarchar(150),
    "TipoPunto" tinyint
);
EXEC sp_addextendedproperty
    id_mnt_elemento_proc_recambio int IDENTITY(1,1) NOT NULL,
    id_mnt_elemento_proc int NOT NULL,
    id_mnt_recambio bigint NOT NULL,
    cantidad decimal(20,4) NOT NULL,
    PRIMARY KEY(id_mnt_elemento_proc_recambio),
    CONSTRAINT FK_cfg_mnt_elemento_recambio_cfg_mnt_elemento_proc FOREIGN key(id_mnt_elemento_proc) REFERENCES cfg_mnt_elemento_proc(id_mnt_elemento_proc),
    CONSTRAINT FK_cfg_mnt_elemento_recambio_cfg_mnt_recambio FOREIGN key(id_mnt_recambio) REFERENCES cfg_mnt_recambio("Id_mnt_recambio")
);
    id_mnt_elemento_recambio int IDENTITY(1,1) NOT NULL,
    id_mnt_elemento int NOT NULL,
    id_mnt_recambio bigint NOT NULL,
    PRIMARY KEY(id_mnt_elemento_recambio),
    CONSTRAINT FK_cfg_mnt_elemento_recambio_cfg_mnt_elemento FOREIGN key(id_mnt_elemento) REFERENCES cfg_mnt_elemento("Id_mnt_elemento")
);
    id_mnt_estadoelemento int IDENTITY(1,1) NOT NULL,
    cod_mnt_estadoelemento nvarchar(25) NOT NULL,
    desc_mnt_estadoelemento nvarchar(50) NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_mnt_estadoelemento)
);
    id_mnt_estadooperacion int IDENTITY(1,1) NOT NULL,
    cod_mnt_estadooperacion nvarchar(25) NOT NULL,
    desc_mnt_estadooperacion nvarchar(50) NOT NULL,
    activo tinyint NOT NULL,
    final tinyint NOT NULL,
    "ColorPlanificador" int,
    finalizado int NOT NULL,
    PRIMARY KEY(id_mnt_estadooperacion)
);
EXEC sp_addextendedproperty
    id_mnt_estadopedido int IDENTITY(1,1) NOT NULL,
    cod_mnt_estadopedido nvarchar(25) NOT NULL,
    desc_mnt_estadopedido nvarchar(50) NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_mnt_estadopedido)
);
    id_mnt_formapago int IDENTITY(1,1) NOT NULL,
    cod_mnt_formapago nvarchar(25) NOT NULL,
    desc_mnt_formapago nvarchar(50),
    activo tinyint NOT NULL,
    PRIMARY KEY(id_mnt_formapago)
);
    id_mnt_formatoalbaran int IDENTITY(1,1) NOT NULL,
    cod_mnt_formatoalbaran varchar(50) NOT NULL,
    "Report" varbinary(max),
    "Size" bigint NOT NULL,
    "Path" nvarchar(500),
    "Recepcion" tinyint NOT NULL,
    PRIMARY KEY(id_mnt_formatoalbaran)
);
    id_mnt_formatopedido int IDENTITY(1,1) NOT NULL,
    cod_mnt_formatopedido varchar(50) NOT NULL,
    "Report" varbinary(max),
    "Size" bigint NOT NULL,
    "Path" nvarchar(500),
    cod_dq nvarchar(70) NOT NULL,
    PRIMARY KEY(id_mnt_formatopedido)
);
    id_mnt_idcontable int IDENTITY(1,1) NOT NULL,
    cod_mnt_idcontable nvarchar(25) NOT NULL,
    desc_mnt_idcontable nvarchar(50),
    activo tinyint NOT NULL,
    PRIMARY KEY(id_mnt_idcontable)
);
    id_mnt_marca int IDENTITY(1,1) NOT NULL,
    cod_mnt_marca nvarchar(50) NOT NULL,
    desc_mnt_marca nvarchar(500) NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_mnt_marca)
);
    id_mnt_operacion int IDENTITY(1,1) NOT NULL,
    "Id_mnt_area" bigint NOT NULL,
    "Id_mnt_elemento" bigint,
    "Id_mnt_subelemento" bigint,
    "Cod_mnt_operacion" varchar(25) NOT NULL,
    "Desc_mnt_operacion" varchar(200) NOT NULL,
    "NivelUrgencia" bigint NOT NULL,
    "Estado" varchar(100) NOT NULL,
    "Id_UsuarioAlta" int NOT NULL,
    "FechaAlta" datetime,
    "HorasPrevision" bigint NOT NULL,
    "FechaPrevision" datetime,
    "Id_UsuarioAsignado" bigint NOT NULL,
    "Observaciones" varchar(max),
    "IsPreventivo" smallint NOT NULL,
    "DiasPeriod" bigint,
    "CiclosPeriod" bigint,
    "HorasPeriod" bigint,
    "FechaUltimo" datetime NOT NULL,
    "FechaProx" datetime,
    "CiclosUltimo" bigint NOT NULL,
    "CiclosProx" bigint NOT NULL,
    "HorasUltimo" bigint NOT NULL,
    "HorasProx" bigint NOT NULL,
    "CiclosActual" bigint NOT NULL,
    "HorasActual" bigint NOT NULL,
    "Id_mnt_tipooperacion" bigint NOT NULL,
    "Activo" smallint NOT NULL,
    cc nchar(10),
    "IsLunes" smallint NOT NULL,
    "IsMartes" smallint NOT NULL,
    "IsMiercoles" smallint NOT NULL,
    "IsJueves" smallint NOT NULL,
    "IsViernes" smallint NOT NULL,
    "IsSabado" smallint NOT NULL,
    "IsDomingo" smallint NOT NULL,
    "IsEnero" smallint NOT NULL,
    "IsFebrero" smallint NOT NULL,
    "IsMarzo" smallint NOT NULL,
    "IsAbril" smallint NOT NULL,
    "IsMayo" smallint NOT NULL,
    "IsJunio" smallint NOT NULL,
    "IsJulio" smallint NOT NULL,
    "IsAgosto" smallint NOT NULL,
    "IsSeptiembre" smallint NOT NULL,
    "IsOctubre" smallint NOT NULL,
    "IsNoviembre" smallint NOT NULL,
    "IsDiciembre" smallint NOT NULL,
    "IsSemana1" smallint NOT NULL,
    "IsSemana2" smallint NOT NULL,
    "IsSemana3" smallint NOT NULL,
    "IsSemana4" smallint NOT NULL,
    "IsSemana5" smallint NOT NULL,
    PRIMARY KEY(id_mnt_operacion)
);
    id_mnt_operacion_operario int IDENTITY(1,1) NOT NULL,
    id_operario int NOT NULL,
    id_his_mnt_operacion int NOT NULL,
    horasprevistas decimal(18,2) NOT NULL,
    fecha_asignacion datetime,
    PRIMARY KEY(id_mnt_operacion_operario)
);
    id_mnt_perfilusuario_elemento int IDENTITY(1,1) NOT NULL,
    id_perfilusuario int NOT NULL,
    id_mnt_elemento int NOT NULL,
    "Visible" tinyint NOT NULL,
    "Activo" tinyint NOT NULL,
    PRIMARY KEY(id_mnt_perfilusuario_elemento)
);
    id_mnt_proc int IDENTITY(1,1) NOT NULL,
    cod_mnt_proc nvarchar(25) NOT NULL,
    desc_mnt_proc nvarchar(300) NOT NULL,
    activo tinyint NOT NULL,
    id_mnt_zona int NOT NULL,
    id_mnt_formatopds int NOT NULL,
    pdssimultaneas tinyint NOT NULL,
    "Observaciones" nvarchar(500),
    "HorasCaducidad" int NOT NULL,
    "HorasUrgencia" int NOT NULL,
    "SegundosPlanning" bigint NOT NULL,
    "Frecuencia" int NOT NULL,
    "Lunes" tinyint NOT NULL,
    "Martes" tinyint NOT NULL,
    "Miercoles" tinyint NOT NULL,
    "Jueves" tinyint NOT NULL,
    "Viernes" tinyint NOT NULL,
    "Sabado" tinyint NOT NULL,
    "Domingo" tinyint NOT NULL,
    "Enero" tinyint NOT NULL,
    "Febrero" tinyint NOT NULL,
    "Marzo" smallint NOT NULL,
    "Abril" tinyint NOT NULL,
    "Mayo" tinyint NOT NULL,
    "Junio" tinyint NOT NULL,
    "Julio" tinyint NOT NULL,
    "Agosto" tinyint NOT NULL,
    "Septiembre" tinyint NOT NULL,
    "Octubre" tinyint NOT NULL,
    "Noviembre" tinyint NOT NULL,
    "Diciembre" tinyint NOT NULL,
    id_mnt_contador int NOT NULL,
    "FrecuenciaContador" bigint NOT NULL,
    "tipoGeneracion" int NOT NULL,
    PRIMARY KEY(id_mnt_proc)
);
EXEC sp_addextendedproperty
    id_mnt_proc_operario int IDENTITY(1,1) NOT NULL,
    id_mnt_proc int NOT NULL,
    id_operario int NOT NULL,
    horasprevistas decimal(8,2) NOT NULL,
    PRIMARY KEY(id_mnt_proc_operario),
    CONSTRAINT FK_cfg_mnt_proc_operario_cfg_mnt_proc FOREIGN key(id_mnt_proc) REFERENCES cfg_mnt_proc(id_mnt_proc),
    CONSTRAINT FK_cfg_mnt_proc_operario_cfg_operario FOREIGN key(id_operario) REFERENCES cfg_operario("Id_operario")
);
    id_mnt_proc_punto int IDENTITY(1,1) NOT NULL,
    id_mnt_proc int NOT NULL,
    id_mnt_punto int NOT NULL,
    orden smallint NOT NULL,
    valordefecto smallint NOT NULL,
    PRIMARY KEY(id_mnt_proc_punto),
    CONSTRAINT FK_cfg_mnt_proc_punto_cfg_mnt_proc FOREIGN key(id_mnt_proc) REFERENCES cfg_mnt_proc(id_mnt_proc),
    CONSTRAINT FK_cfg_mnt_proc_punto_cfg_mnt_punto FOREIGN key(id_mnt_punto) REFERENCES cfg_mnt_punto(id_mnt_punto)
);
    id_mnt_proveedor int IDENTITY(1,1) NOT NULL,
    cod_mnt_proveedor nvarchar(50) NOT NULL,
    desc_mnt_proveedor nvarchar(250) NOT NULL,
    plazo_entrega int,
    cert_proveedor decimal(18,2),
    contacto nvarchar(500),
    id_mnt_formatopedido int,
    activo tinyint NOT NULL,
    id_divisa int NOT NULL,
    observaciones nvarchar(500),
    "NIF" nvarchar(50),
    "Telefono" nvarchar(50),
    "Fax" nvarchar(50),
    "Email" nvarchar(100),
    "Direccion" nvarchar(100),
    prc_iva decimal(18,2) NOT NULL,
    id_mnt_formapago int NOT NULL,
    id_mnt_tipoproveedor int NOT NULL,
    transporte nvarchar(100),
    prc_descuento decimal(18,2) NOT NULL,
    portes tinyint NOT NULL,
    "Poblacion" nvarchar(50),
    "Provincia" nvarchar(50),
    "CodigoPostal" nvarchar(50),
    "ContratistaPrincipal" tinyint NOT NULL,
    PRIMARY KEY(id_mnt_proveedor),
    CONSTRAINT FK_cfg_mnt_proveedor_cfg_mnt_formapago FOREIGN key(id_mnt_formapago) REFERENCES cfg_mnt_formapago(id_mnt_formapago),
    CONSTRAINT FK_cfg_mnt_proveedor_cfg_mnt_tipoproveedor FOREIGN key(id_mnt_tipoproveedor) REFERENCES cfg_mnt_tipoproveedor(id_mnt_tipoproveedor)
);
EXEC sp_addextendedproperty
    id_mnt_punto int IDENTITY(1,1) NOT NULL,
    cod_mnt_punto nvarchar(25),
    desc_mnt_punto nvarchar(150),
    entrardato tinyint,
    activo tinyint NOT NULL,
    cus_valor1 varchar(50),
    cus_valor2 varchar(50),
    cus_valor3 varchar(50),
    cus_valor4 varchar(50),
    "PathImagen" nvarchar(500),
    PRIMARY KEY(id_mnt_punto)
);
    id_mnt_punto_puntoetiqueta int IDENTITY(1,1) NOT NULL,
    id_mnt_punto int NOT NULL,
    id_mnt_puntoetiqueta int NOT NULL,
    orden smallint NOT NULL,
    "OpcionOk" tinyint NOT NULL,
    PRIMARY KEY(id_mnt_punto_puntoetiqueta),
    CONSTRAINT FK_cfg_mnt_punto_puntoetiqueta_cfg_mnt_punto FOREIGN key(id_mnt_punto) REFERENCES cfg_mnt_punto(id_mnt_punto),
    CONSTRAINT FK_cfg_mnt_punto_puntoetiqueta_cfg_mnt_puntoetiqueta FOREIGN key(id_mnt_puntoetiqueta) REFERENCES cfg_mnt_puntoetiqueta(id_mnt_puntoetiqueta)
);
    id_mnt_puntoetiqueta int IDENTITY(1,1) NOT NULL,
    cod_mnt_puntoetiqueta nvarchar(25) NOT NULL,
    desc_mnt_puntoetiqueta nvarchar(50),
    activo tinyint NOT NULL,
    PRIMARY KEY(id_mnt_puntoetiqueta)
);
    "Id_mnt_recambio" int IDENTITY(1,1) NOT NULL,
    "Cod_mnt_recambio" varchar(50) NOT NULL,
    "Desc_mnt_recambio" varchar(250) NOT NULL,
    "Id_mnt_tiporecambio" bigint,
    "StockReal" bigint,
    "StockMinimo" bigint,
    "StockPedido" bigint,
    "Activo" smallint NOT NULL,
    "Id_mnt_centrocoste" int,
    "Coste" decimal(18,4) NOT NULL,
    "Original" tinyint NOT NULL,
    "Observaciones" nvarchar(max),
    "HorasExternos" tinyint NOT NULL,
    "Id_usuario" int NOT NULL,
    "Fecha_creacion" datetime NOT NULL,
    "Id_mnt_Unidad" int NOT NULL,
    "Id_mnt_serie" int NOT NULL,
    "Es_virtual" tinyint NOT NULL,
    "Es_externo" tinyint NOT NULL,
    PRIMARY KEY(Id_mnt_recambio),
    CONSTRAINT FK_cfg_mnt_recambio_cfg_mnt_tiporecambio FOREIGN key("Id_mnt_tiporecambio") REFERENCES cfg_mnt_tiporecambio("Id_mnt_tiporecambio"),
    CONSTRAINT FK_cfg_mnt_recambio_cfg_mnt_unidades FOREIGN key("Id_mnt_Unidad") REFERENCES cfg_mnt_unidad("Id_mnt_Unidad"),
    CONSTRAINT FK_cfg_mnt_recambio_cfg_mnt_series FOREIGN key("Id_mnt_serie") REFERENCES cfg_mnt_serie(id_mnt_serie)
);
    id_mnt_recambio_marca int IDENTITY(1,1) NOT NULL,
    id_mnt_recambio bigint,
    id_mnt_marca int,
    PRIMARY KEY(id_mnt_recambio_marca),
    CONSTRAINT FK_cfg_mnt_recambio FOREIGN key(id_mnt_recambio) REFERENCES cfg_mnt_recambio("Id_mnt_recambio"),
    CONSTRAINT FK_cfg_mnt_marca FOREIGN key(id_mnt_marca) REFERENCES cfg_mnt_marca(id_mnt_marca)
);
    "Id_mnt_recambio_observacion" int IDENTITY(1,1) NOT NULL,
    "Id_mnt_recambio" bigint NOT NULL,
    "Id_usuario" int NOT NULL,
    "Observacion" nvarchar(100),
    "Fecha_creacion" datetime,
    "Fecha_modificacion" datetime,
    PRIMARY KEY(Id_mnt_recambio_observacion),
    CONSTRAINT FK_cfg_mnt_recambio_observacion_cfg_mnt_recambio_observacion FOREIGN key("Id_mnt_recambio") REFERENCES cfg_mnt_recambio("Id_mnt_recambio")
);
    id_mnt_recambio_proveedor int IDENTITY(1,1) NOT NULL,
    id_mnt_recambio bigint NOT NULL,
    id_mnt_proveedor int NOT NULL,
    coste decimal(20,4) NOT NULL,
    plazo_entrega decimal(18,2) NOT NULL,
    ref_proveedor nvarchar(100),
    habitual tinyint NOT NULL,
    descuento decimal(18,2) NOT NULL,
    "Unidades_XUD_Compra" decimal(20,4) NOT NULL,
    "Id_mnt_Unidad_Compra" int NOT NULL,
    "Unidad_Minima_Compra" decimal(20,4) NOT NULL,
    PRIMARY KEY(id_mnt_recambio_proveedor),
    CONSTRAINT FK_cfg_mnt_recambio_proveedor_cfg_mnt_recambio FOREIGN key(id_mnt_recambio) REFERENCES cfg_mnt_recambio("Id_mnt_recambio"),
    CONSTRAINT FK_cfg_mnt_recambio_proveedor_cfg_mnt_proveedor FOREIGN key(id_mnt_proveedor) REFERENCES cfg_mnt_proveedor(id_mnt_proveedor),
    CONSTRAINT FK_cfg_mnt_recambio_proveedor_cfg_mnt_unidades FOREIGN key("Id_mnt_Unidad_Compra") REFERENCES cfg_mnt_unidad("Id_mnt_Unidad")
);
    id_mnt_serie int IDENTITY(1,1) NOT NULL,
    "Cod_mnt_serie" nvarchar(50),
    "Prefijo" nchar(10),
    "Postfijo" nchar(10),
    "Numero" int NOT NULL,
    "Cantidad_digitos" int NOT NULL,
    "Activo" tinyint NOT NULL,
    PRIMARY KEY(id_mnt_serie)
);
    id_mnt_tipoalmacen int IDENTITY(1,1) NOT NULL,
    cod_mnt_tipoalmacen nvarchar(25) NOT NULL,
    desc_mnt_tipoalmacen nvarchar(50),
    activo tinyint NOT NULL,
    PRIMARY KEY(id_mnt_tipoalmacen)
);
    id_mnt_tipocoste int IDENTITY(1,1) NOT NULL,
    cod_mnt_tipocoste varchar(50) NOT NULL,
    desc_mnt_tipocoste varchar(250) NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_mnt_tipocoste)
);
    id_mnt_tipoelemento int IDENTITY(1,1) NOT NULL,
    cod_mnt_tipoelemento varchar(50) NOT NULL,
    desc_mnt_tipoelemento varchar(250) NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_mnt_tipoelemento)
);
    id_mnt_tipoelemento_recambio int IDENTITY(1,1) NOT NULL,
    id_mnt_tipoelemento int NOT NULL,
    id_mnt_recambio bigint NOT NULL,
    PRIMARY KEY(id_mnt_tipoelemento_recambio),
    CONSTRAINT fk_id_mnt_tipoelemento FOREIGN key(id_mnt_tipoelemento) REFERENCES cfg_mnt_tipoelemento(id_mnt_tipoelemento),
    CONSTRAINT fk_id_mnt_recambio FOREIGN key(id_mnt_recambio) REFERENCES cfg_mnt_recambio("Id_mnt_recambio")
);
    "Id_mnt_tipooperacion" int IDENTITY(1,1) NOT NULL,
    "Cod_mnt_tipooperacion" varchar(25) NOT NULL,
    "Desc_mnt_tipooperacion" varchar(50) NOT NULL,
    "Activo" tinyint NOT NULL,
    "Orden" int NOT NULL,
    PRIMARY KEY(Id_mnt_tipooperacion)
);
    id_mnt_tipoproveedor int IDENTITY(1,1) NOT NULL,
    cod_mnt_tipoproveedor varchar(50) NOT NULL,
    desc_mnt_tipoproveedor varchar(250) NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_mnt_tipoproveedor)
);
    "Id_mnt_tiporecambio" int IDENTITY(1,1) NOT NULL,
    "Cod_mnt_tiporecambio" varchar(50) NOT NULL,
    "Desc_mnt_tiporecambio" varchar(250) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_mnt_tiporecambio)
);
    id_mnt_transporte int IDENTITY(1,1) NOT NULL,
    cod_mnt_transporte nvarchar(25) NOT NULL,
    desc_mnt_transporte nvarchar(100),
    activo tinyint NOT NULL,
    PRIMARY KEY(id_mnt_transporte)
);
    "Id_mnt_Unidad" int IDENTITY(1,1) NOT NULL,
    "Cod_mnt_Unidad" nvarchar(50) NOT NULL,
    "Desc_mnt_Unidad" nvarchar(50),
    "Activo" tinyint NOT NULL,
    PRIMARY KEY(Id_mnt_Unidad)
);
    "Id_modofuncionamientofase" int IDENTITY(1,1) NOT NULL,
    "Cod_modofuncionamientofase" nchar(25) NOT NULL,
    "Desc_modofuncionamientofase" nchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_modofuncionamientofase)
);
EXEC sp_addextendedproperty
    "Id_motivo_merma" int IDENTITY(1,1) NOT NULL,
    "Cod_motivo_merma" varchar(50) NOT NULL,
    "Descripcion" nvarchar(250),
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_motivo_merma)
);
    id_op int IDENTITY(1,1) NOT NULL,
    cod_op nvarchar(150),
    "SQLAlarma" nvarchar(max),
    cod_df nvarchar(50),
    cod_parametro nvarchar(50),
    "STD" tinyint NOT NULL,
    activo tinyint NOT NULL,
    orden int NOT NULL,
    error nvarchar(500),
    desc_op nvarchar(250),
    "desc_op_TranslationKey" varchar(35),
    PRIMARY KEY(id_op)
);
    "Id_operario" int IDENTITY(1,1) NOT NULL,
    "Cod_operario" nvarchar(25) NOT NULL,
    "Desc_operario" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "Id_tipooperario" int NOT NULL,
    "Direccion" nvarchar(50),
    "Telefono" nvarchar(25),
    "NIF" nvarchar(10),
    "Coste_hora" decimal(8,1) NOT NULL,
    "Coste_hora_extra" decimal(8,1) NOT NULL,
    "Level_prod" smallint NOT NULL,
    "Level_mant" smallint NOT NULL,
    "Level_cal" smallint NOT NULL,
    "Level_wam" smallint NOT NULL,
    "Id_Calendario" int NOT NULL,
    "Observaciones" nvarchar(500),
    "Reservado" smallint NOT NULL,
    "Imagen" nvarchar(250),
    "RFID" varchar(30),
    "Id_operario_spec" int,
    "Estado_spec" nchar(5),
    "Id_rrhh_estadocivil" bigint,
    "Id_mnt_centroservicio" int NOT NULL,
    "Unope1maq" tinyint NOT NULL,
    id_turno int NOT NULL,
    funcion nvarchar(150),
    departamento nvarchar(150),
    posicion nvarchar(150),
    email nvarchar(150),
    "MOD_ILUO" smallint NOT NULL,
    id_lpa_nivel int NOT NULL,
    PRIMARY KEY(Id_operario),
    CONSTRAINT FK_cfg_operario_cfg_grupooperario FOREIGN key("Id_tipooperario") REFERENCES cfg_tipooperario("Id_tipooperario"),
    CONSTRAINT FK_cfg_operario_cfg_calendario FOREIGN key("Id_Calendario") REFERENCES cfg_calendario("Id_Calendario"),
    CONSTRAINT FK_cfg_operario_cfg_lpa_nivel FOREIGN key(id_lpa_nivel) REFERENCES cfg_lpa_nivel(id_lpa_nivel)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_paro" int IDENTITY(1,1) NOT NULL,
    "Cod_paro" int NOT NULL,
    "Desc_paro" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "Id_tipoparo" int NOT NULL,
    "Id_actividad" int NOT NULL,
    "Global" smallint NOT NULL,
    "Seg_paro_nominal" int NOT NULL,
    "Seg_paro_max" int NOT NULL,
    "Id_paro_posterior" int NOT NULL,
    "Color" int NOT NULL,
    "OEE_BORRAR" smallint NOT NULL,
    "Id_paro_padre" int NOT NULL,
    "Reservado" smallint NOT NULL,
    "Id_TipoparoOEE" int NOT NULL,
    "Id_Tipoparo1" int,
    "Id_Tipoparo2" int,
    "Id_Tipoparo3" int,
    "Id_Tipoparo4" int,
    "OrdenFrecuente" int NOT NULL,
    "CalculoMtbf" smallint NOT NULL,
    "InformarParo" smallint,
    "muestraCalidad" smallint NOT NULL,
    "desc_paro_TranslationKey" varchar(39),
    "Observaciones" nvarchar(500) NOT NULL,
    "generaNoConformidad" smallint NOT NULL,
    "CambioSMED" smallint NOT NULL,
    "CambioMolde" smallint NOT NULL,
    "observaciones_TranslationKey" varchar(43),
    PRIMARY KEY(Id_paro),
    CONSTRAINT FK_cfg_paro_cfg_tipoparo FOREIGN key("Id_tipoparo") REFERENCES cfg_tipoparo("Id_tipoparo"),
    CONSTRAINT FK_cfg_paro_cfg_actividad FOREIGN key("Id_actividad") REFERENCES cfg_actividad("Id_actividad"),
    CONSTRAINT FK_cfg_paro_cfg_tipoparoOEE FOREIGN key("Id_TipoparoOEE") REFERENCES "cfg_tipoparoOEE"("Id_TipoparoOEE"),
    CONSTRAINT FK_cfg_paro_cfg_tipoparo1 FOREIGN key("Id_Tipoparo1") REFERENCES cfg_tipoparo1("Id_tipoparo1"),
    CONSTRAINT FK_cfg_paro_cfg_tipoparo2 FOREIGN key("Id_Tipoparo2") REFERENCES cfg_tipoparo2("Id_tipoparo2")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_paro_tipomaquina" int IDENTITY(1,1) NOT NULL,
    "Id_paro" int NOT NULL,
    "Id_tipomaquina" int NOT NULL,
    "Activo" smallint NOT NULL,
    "Seg_paro_nominal" int NOT NULL,
    "Seg_paro_max" int NOT NULL,
    PRIMARY KEY(Id_paro_tipomaquina),
    CONSTRAINT FK_cfg_paro_tipomaquina_cfg_paro FOREIGN key("Id_paro") REFERENCES cfg_paro("Id_paro"),
    CONSTRAINT FK_cfg_paro_tipomaquina_cfg_tipomaquina FOREIGN key("Id_tipomaquina") REFERENCES cfg_tipomaquina("Id_tipomaquina")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_campo int IDENTITY(1,1) NOT NULL,
    cod_campo nvarchar(25) NOT NULL,
    desc_campo nvarchar(50) NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_campo)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_estadopeticion int IDENTITY(1,1) NOT NULL,
    cod_estadopeticion nvarchar(25),
    desc_estadopeticion nvarchar(50),
    inicial tinyint NOT NULL,
    final tinyint NOT NULL,
    orden int NOT NULL,
    color nvarchar(10),
    activo tinyint NOT NULL,
    reservado tinyint NOT NULL,
    PRIMARY KEY(id_estadopeticion)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_tipopeticion int IDENTITY(1,1) NOT NULL,
    cod_tipopeticion nvarchar(25),
    desc_tipopeticion nvarchar(50),
    "DQPeticion" nvarchar(max),
    "SQLEntidad" nvarchar(max),
    "SQLActivo" nvarchar(max),
    color nvarchar(10),
    activo tinyint NOT NULL,
    "id_campoPeticion" int NOT NULL,
    "pedirOperario" int NOT NULL,
    "vistaEntidad" nvarchar(25) NOT NULL,
    "vistaActivo" nvarchar(25) NOT NULL,
    "DQUltimasPeticiones" nvarchar(max),
    "btnAutomatico" tinyint NOT NULL,
    "permiteDecimales" tinyint NOT NULL,
    PRIMARY KEY(id_tipopeticion),
    CONSTRAINT FK_cfg_pet_tipopeticion_cfg_pet_campopeticion FOREIGN key("id_campoPeticion") REFERENCES cfg_pet_campopeticion(id_campo)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_ubicacion int IDENTITY(1,1) NOT NULL,
    cod_ubicacion nvarchar(25) NOT NULL,
    desc_ubicacion nvarchar(50) NOT NULL,
    activo tinyint NOT NULL,
    btn_nueva tinyint NOT NULL,
    btn_devolucion tinyint NOT NULL,
    btn_recogida tinyint NOT NULL,
    btn_cerrar tinyint NOT NULL,
    btn_estado tinyint NOT NULL,
    btn_historico tinyint NOT NULL,
    btn_volver tinyint NOT NULL,
    "DQPrincipal" nvarchar(max),
    "DQHistorico" nvarchar(max),
    CONSTRAINT FK_cfg_pet_ubicacion_cfg_pet_ubicacion FOREIGN key(id_ubicacion) REFERENCES cfg_pet_ubicacion(id_ubicacion)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_workflow int IDENTITY(1,1) NOT NULL,
    id_tipopeticion int NOT NULL,
    id_estadopeticion_ini int NOT NULL,
    id_estadopeticion_fin int NOT NULL,
    "DFOpenBeforeChange" nvarchar(25),
    "SQLSelectItem" nvarchar(max),
    "SQLUpdateAfterChange" nvarchar(max),
    id_ubicacion int NOT NULL,
    activo tinyint NOT NULL,
    "pedirCantidad" tinyint NOT NULL,
    "pedirOperario" tinyint NOT NULL,
    "pedirComentario" tinyint NOT NULL,
    "pedirPrioridad" tinyint NOT NULL,
    "permitirExceso" tinyint NOT NULL,
    PRIMARY KEY(id_workflow),
    CONSTRAINT FK_cfg_pet_workflow_cfg_tipopeticion FOREIGN key(id_tipopeticion) REFERENCES cfg_pet_tipopeticion(id_tipopeticion),
    CONSTRAINT FK_cfg_pet_workflow_cfg_pet_estadopeticion FOREIGN key(id_estadopeticion_ini) REFERENCES cfg_pet_estadopeticion(id_estadopeticion),
    CONSTRAINT FK_cfg_pet_workflow_cfg_pet_estadopeticion_fin FOREIGN key(id_estadopeticion_fin) REFERENCES cfg_pet_estadopeticion(id_estadopeticion),
    CONSTRAINT FK_cfg_pet_workflow_cfg_pet_ubicacion FOREIGN key(id_ubicacion) REFERENCES cfg_pet_ubicacion(id_ubicacion)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_planAccion" int IDENTITY(1,1) NOT NULL,
    "desc_planAccion" nvarchar(200),
    orden int,
    tipo int NOT NULL,
    comentario nvarchar(200),
    "id_tipoAnalisisPlanAccion" int NOT NULL,
    PRIMARY KEY(id_planAccion),
    CONSTRAINT FK_cfg_planAccion_cfg_tipoAnalisisPlanAccion FOREIGN key("id_tipoAnalisisPlanAccion") REFERENCES "cfg_tipoAnalisisPlanAccion"("id_tipoAnalisisPlanAccion")
);
EXEC sp_addextendedproperty
    "id_planAccionTarea" int IDENTITY(1,1) NOT NULL,
    "desc_planAccionTarea" nvarchar(200),
    activo smallint,
    "id_planAccion" int NOT NULL,
    PRIMARY KEY(id_planAccionTarea),
    CONSTRAINT FK_cfg_planAccionTarea_cfg_planAccion FOREIGN key("id_planAccion") REFERENCES "cfg_planAccion"("id_planAccion")
);
    "Id_planning_necesidades" int IDENTITY(1,1) NOT NULL,
    "Cod_producto" nvarchar(50) NOT NULL,
    "Cantidad" int NOT NULL,
    "Fecha_entrega" datetime NOT NULL,
    "Id_his_fase" int NOT NULL,
    "Prioridad" int NOT NULL,
    "Error_planning" nvarchar(500),
    "Id_his_fase_amasado" int NOT NULL,
    "Fecha_caducidad" datetime,
    PRIMARY KEY(Id_planning_necesidades)
);
    id_planning_preparacion int IDENTITY(1,1) NOT NULL,
    "Id_producto_orig" int NOT NULL,
    "Id_producto_dst" int NOT NULL,
    "Horas_prep" decimal(18,2) NOT NULL,
    "Id_maquina" int NOT NULL,
    PRIMARY KEY(id_planning_preparacion)
);
    "Id_prn_etiqueta" int IDENTITY(1,1) NOT NULL,
    "Cod_prn_etiqueta" nvarchar(50) NOT NULL,
    "Desc_prn_etiqueta" nvarchar(50) NOT NULL,
    "NumeroCopias" int NOT NULL,
    "Activo" smallint NOT NULL,
    "Plantilla" nvarchar(max) NOT NULL,
    "SQL" nvarchar(max) NOT NULL,
    "Cod_dq" nvarchar(70) NOT NULL,
    "Desc_dq_report" nvarchar(60) NOT NULL,
    "MostrarVistaPrevia" tinyint NOT NULL,
    "MostrarPropiedadesImpresora" tinyint NOT NULL,
    "Observaciones" nvarchar(250),
    "id_prn_tipoEtiqueta" int NOT NULL,
    PRIMARY KEY(Id_prn_etiqueta),
    CONSTRAINT FK__cfg_prn_e__id_pr__793A38C6 FOREIGN key("id_prn_tipoEtiqueta") REFERENCES "cfg_prn_tipoEtiqueta"("id_prn_tipoEtiqueta")
);
    "Id_prn_impresora" int IDENTITY(1,1) NOT NULL,
    "Cod_prn_impresora" nvarchar(50) NOT NULL,
    "Desc_prn_impresora" nvarchar(250) NOT NULL,
    "Ip" nvarchar(50) NOT NULL,
    "Puerto" smallint NOT NULL,
    "PreguntarNumeroCopias" tinyint NOT NULL,
    "Activo" tinyint NOT NULL,
    "NombreSistemaImpresora" nvarchar(100) NOT NULL,
    "EncodingType" int NOT NULL,
    PRIMARY KEY(Id_prn_impresora)
);
    "Id_prn_impresora_maquina" int IDENTITY(1,1) NOT NULL,
    "Id_prn_impresora" int NOT NULL,
    "Id_maquina" int NOT NULL,
    "Id_prn_etiqueta" int NOT NULL,
    "Predeterminada" tinyint NOT NULL,
    "Orden" int NOT NULL,
    "Activo" tinyint NOT NULL,
    "id_prn_tipoEtiqueta" int NOT NULL,
    PRIMARY KEY(Id_prn_impresora_maquina),
    CONSTRAINT FK_cfg_prn_impresora_maquina_cfg_prn_impresora FOREIGN key("Id_prn_impresora") REFERENCES cfg_prn_impresora("Id_prn_impresora"),
    CONSTRAINT FK_cfg_prn_impresora_maquina_cfg_maquina FOREIGN key("Id_maquina") REFERENCES cfg_maquina("Id_maquina"),
    CONSTRAINT FK_cfg_prn_impresora_maquina_cfg_prn_etiqueta FOREIGN key("Id_prn_etiqueta") REFERENCES cfg_prn_etiqueta("Id_prn_etiqueta"),
    CONSTRAINT FK__cfg_prn_i__id_pr__7751F054 FOREIGN key("id_prn_tipoEtiqueta") REFERENCES "cfg_prn_tipoEtiqueta"("id_prn_tipoEtiqueta")
);
    id_prn_producto_etiqueta int IDENTITY(1,1) NOT NULL,
    id_producto int NOT NULL,
    id_prn_etiqueta int NOT NULL,
    PRIMARY KEY(id_prn_producto_etiqueta),
    CONSTRAINT FK_cfg_prn_producto_etiqueta_cfg_producto FOREIGN key(id_producto) REFERENCES cfg_producto("Id_producto"),
    CONSTRAINT FK_cfg_prn_producto_etiqueta_cfg_prn_etiqueta FOREIGN key(id_prn_etiqueta) REFERENCES cfg_prn_etiqueta("Id_prn_etiqueta")
);
    "id_prn_tipoEtiqueta" int IDENTITY(1,1) NOT NULL,
    "Cod_prn_tipoEtiqueta" nvarchar(50) NOT NULL,
    "Desc_prn_tipoEtiqueta" nvarchar(200),
    id_prn_etiqueta_default int NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(id_prn_tipoEtiqueta),
    CONSTRAINT FK_cfg_prn_tipoEtiqueta_cfg_prn_etiqueta FOREIGN key(id_prn_etiqueta_default) REFERENCES cfg_prn_etiqueta("Id_prn_etiqueta")
);
    "Id_prn_tipoimpresion" int IDENTITY(1,1) NOT NULL,
    "Cod_prn_tipoimpresion" nvarchar(50) NOT NULL,
    "Desc_prn_tipoimpresion" nvarchar(250),
    "Activo" tinyint NOT NULL,
    PRIMARY KEY(Id_prn_tipoimpresion)
);
    "Id_producto" int IDENTITY(1,1) NOT NULL,
    "Cod_producto" nvarchar(50) NOT NULL,
    "Desc_producto" nvarchar(250) NOT NULL,
    "Activo" smallint NOT NULL,
    "Id_tipoproducto" int NOT NULL,
    "Coste" decimal(8,1) NOT NULL,
    "Observaciones" nvarchar(max),
    "Imagen" nvarchar(250),
    "Planificable" smallint,
    "MatPrima" smallint,
    "Reservado" smallint NOT NULL,
    "PesoVariable" tinyint NOT NULL,
    "FactorUnidades2" decimal(10,4) NOT NULL,
    "CosteUnitario" decimal(10,4),
    id_cliente int NOT NULL,
    "cod_productoCliente" nvarchar(150) NOT NULL,
    id_tipodefecto_visual int NOT NULL,
    "id_tipotrazabilidadEntrada" int NOT NULL,
    "id_tipotrazabilidadSalida" int NOT NULL,
    "UnidadMedidaBase" nvarchar(5),
    "PesoUnitario" decimal(10,4) NOT NULL,
    "UnidadMedidaParalela" nvarchar(5),
    "UnidadMedidaParalelaFactorConversion" decimal(10,4) NOT NULL,
    "UnidadParalelaVariable" tinyint NOT NULL,
    "seg_cambioSMED" int NOT NULL,
    "Cod_productoEAN" nvarchar(50),
    "PesoTara" decimal(18,4),
    PRIMARY KEY(Id_producto),
    CONSTRAINT FK_cfg_producto_cfg_tipoproducto FOREIGN key("Id_tipoproducto") REFERENCES cfg_tipoproducto("Id_tipoproducto"),
    CONSTRAINT FK_cfg_producto_cliente FOREIGN key(id_cliente) REFERENCES cfg_cliente("Id_cliente")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_producto_tolerancia int IDENTITY(1,1) NOT NULL,
    peso_nominal_min decimal(16,2) NOT NULL,
    peso_nominal_max decimal(16,2) NOT NULL,
    margen_masa_porc decimal(16,2) NOT NULL,
    margen_masa_gram decimal(16,2) NOT NULL,
    margen_volumen_porc decimal(16,2) NOT NULL,
    margen_volumen_mil decimal(16,2) NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_producto_tolerancia)
);
    "id_productoUnidadMedidaAlternativa" int IDENTITY(1,1) NOT NULL,
    id_producto int NOT NULL,
    "UnidadMedida" nvarchar(5) NOT NULL,
    "FactorConversion" decimal(24,10) NOT NULL,
    "Activo" tinyint NOT NULL,
    PRIMARY KEY(id_productoUnidadMedidaAlternativa)
);
EXEC sp_addextendedproperty
    id_proveedor int IDENTITY(1,1) NOT NULL,
    cod_proveedor nvarchar(100),
    desc_proveedor nvarchar(250) NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_proveedor),
    CONSTRAINT CK_cfg_proveedor CHECK ([Cod_proveedor] IS NOT NULL AND rtrim(ltrim([Cod_proveedor]))<>'')
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_rrhh_categoria" int IDENTITY(1,1) NOT NULL,
    "Cod_rrhh_categoria" varchar(25) NOT NULL,
    "Desc_rrhh_categoria" varchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_rrhh_categoria)
);
    "Id_rrhh_contrato" int IDENTITY(1,1) NOT NULL,
    "Desc_rrhh_contrato" varchar(45) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_rrhh_contrato)
);
    "Id_rrhh_contrato_categoria" int IDENTITY(1,1) NOT NULL,
    "Cod_rrhh_contrato_categoria" varchar(50),
    "Desc_rrhh_contrato_categoria" varchar(100),
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_rrhh_contrato_categoria)
);
    "Id_rrhh_contrato_motivo_baja" int IDENTITY(1,1) NOT NULL,
    "Cod_rrhh_contrato_motivo_baja" varchar(50),
    "Desc_rrhh_contrato_motivo_baja" varchar(100),
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_rrhh_contrato_motivo_baja)
);
    "Id_rrhh_contrato_tipo" int IDENTITY(1,1) NOT NULL,
    "Cod_rrhh_contrato_tipo" varchar(50),
    "Desc_rrhh_contrato_tipo" varchar(100),
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_rrhh_contrato_tipo)
);
    "Id_rrhh_contrato_tipo_coste" int IDENTITY(1,1) NOT NULL,
    "Cod_rrhh_contrato_tipo_coste" varchar(50),
    "Desc_rrhh_contrato_tipo_coste" varchar(100),
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_rrhh_contrato_tipo_coste)
);
    "Id_rrhh_departamento" int IDENTITY(1,1) NOT NULL,
    "Cod_rrhh_departamento" varchar(50),
    "Desc_rrhh_departamento" varchar(100),
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_rrhh_departamento)
);
    "Id_rrhh_estadocivil" int IDENTITY(1,1) NOT NULL,
    "Cod_rrhh_estadocivil" varchar(15) NOT NULL,
    "Desc_rrhh_estadocivil" varchar(45) NOT NULL,
    "Activo" smallint,
    PRIMARY KEY(Id_rrhh_estadocivil)
);
    "Id_rrhh_ett" int IDENTITY(1,1) NOT NULL,
    "Cod_rrhh_ett" varchar(50),
    "Desc_rrhh_ett" varchar(100),
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_rrhh_ett)
);
    "Id_rrhh_formacion" int IDENTITY(1,1) NOT NULL,
    "Desc_rrhh_formacion" varchar(45) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_rrhh_formacion)
);
    "Id_rrhh_it_tipo_baja" int IDENTITY(1,1) NOT NULL,
    "Cod_rrhh_it_tipo_baja" varchar(50),
    "Desc_rrhh_it_tipo_baja" varchar(100),
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_rrhh_it_tipo_baja)
);
    id_rrhh_marcaje int IDENTITY(1,1) NOT NULL,
    "Cod_cfg_rrhh_marcaje" varchar(25),
    "Desc_cfg_rrhh_marcaje" varchar(50),
    "Activo" smallint,
    PRIMARY KEY(id_rrhh_marcaje)
);
    id_operario_spec bigint NOT NULL,
    mes bigint NOT NULL,
    ano bigint NOT NULL,
    id_rrhh_spec_tipofichada bigint NOT NULL,
    segundos bigint NOT NULL,
    eventos bigint NOT NULL,
    e_segundos bigint NOT NULL,
    e_eventos bigint NOT NULL,
    PRIMARY KEY(id_operario_spec,mes,ano,id_rrhh_spec_tipofichada)
);
    id_rrhh_spec_tipofichada bigint NOT NULL,
    desc_rrhh_spec_tipofichada varchar(100) NOT NULL,
    PRIMARY KEY(id_rrhh_spec_tipofichada)
);
    "Id_rrhh_titulo" int IDENTITY(1,1) NOT NULL,
    "Cod_rrhh_titulo" varchar(50),
    "Desc_rrhh_titulo" varchar(100),
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_rrhh_titulo)
);
    "Id_rrhh_titulo_detalle" int IDENTITY(1,1) NOT NULL,
    "Id_rrhh_titulo" int,
    "Cod_rrhh_titulo_detalle" varchar(50),
    "Desc_rrhh_titulo_detalle" varchar(100),
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_rrhh_titulo_detalle),
    CONSTRAINT FK_cfg_rrhh_titulo_detalle_cfg_rrhh_titulo FOREIGN key("Id_rrhh_titulo") REFERENCES cfg_rrhh_titulo("Id_rrhh_titulo")
);
    id_semaforo int IDENTITY(1,1) NOT NULL,
    cod_semaforo nvarchar(50),
    desc_semaforo nvarchar(250),
    orden int NOT NULL,
    activo tinyint NOT NULL,
    sql nvarchar(max),
    id_tiposemaforo int NOT NULL,
    email nvarchar(max),
    "enviarEmailOK" tinyint NOT NULL,
    "enviarEmailError" tinyint NOT NULL,
    "enviarEmailWarning" tinyint NOT NULL,
    error nvarchar(500),
    observaciones nvarchar(250),
    PRIMARY KEY(id_semaforo),
    CONSTRAINT FK_cfg_semaforo_cfg_tiposemaforo FOREIGN key(id_tiposemaforo) REFERENCES "cfg_tipoSemaforo"("id_tipoSemaforo")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_semaforo_baliza int IDENTITY(1,1) NOT NULL,
    "id_semaforoEntidad" int NOT NULL,
    id_baliza int NOT NULL,
    id_estado int NOT NULL,
    activo tinyint NOT NULL,
    "led1Color" int NOT NULL,
    "led2Color" int NOT NULL,
    "led3Color" int NOT NULL,
    "led4Color" int NOT NULL,
    "led5Color" int NOT NULL,
    "blinkingControl" int NOT NULL,
    "buzzerPattern" int NOT NULL,
    PRIMARY KEY(id_semaforo_baliza),
    CONSTRAINT FK_cfg_semaforo_baliza_cfg_semaforoEntidad FOREIGN key("id_semaforoEntidad") REFERENCES "cfg_semaforoEntidad"("id_semaforoEntidad"),
    CONSTRAINT FK_cfg_semaforo_baliza_cfg_baliza FOREIGN key(id_baliza) REFERENCES cfg_baliza(id_baliza)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_semaforo_operario int IDENTITY(1,1) NOT NULL,
    id_semaforo int NOT NULL,
    id_operario int NOT NULL,
    id_maquina int NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_semaforo_operario),
    CONSTRAINT FK_cfg_semaforo_operario_cfg_semaforo FOREIGN key(id_semaforo) REFERENCES cfg_semaforo(id_semaforo),
    CONSTRAINT FK_cfg_semaforo_operario_cfg_operario FOREIGN key(id_operario) REFERENCES cfg_operario("Id_operario"),
    CONSTRAINT FK_cfg_semaforo_operario_cfg_maquina FOREIGN key(id_maquina) REFERENCES cfg_maquina("Id_maquina")
);
    "id_semaforoEntidad" int IDENTITY(1,1) NOT NULL,
    id_semaforo int,
    id_maquina int,
    rt_estado tinyint,
    rt_valor nvarchar(100),
    rt_color int,
    rt_ultima_actualizacion datetime,
    "enviarEmail" tinyint NOT NULL,
    "fechaEmail" datetime,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_semaforoEntidad),
    CONSTRAINT FK_cfg_semaforoEntidad_cfg_semaforo FOREIGN key(id_semaforo) REFERENCES cfg_semaforo(id_semaforo),
    CONSTRAINT FK_cfg_semaforoEntidad_cfg_maquina FOREIGN key(id_maquina) REFERENCES cfg_maquina("Id_maquina")
);
    "id_semaforoRegla" int IDENTITY(1,1) NOT NULL,
    id_semaforo int,
    id_cal_tipoplan int,
    id_cal_grupocontrol int,
    activo tinyint NOT NULL,
    approval smallint NOT NULL,
    inprocess smallint NOT NULL,
    lastcontrol smallint NOT NULL,
    PRIMARY KEY(id_semaforoRegla),
    CONSTRAINT FK_cfg_semaforoRegla_cfg_semaforo FOREIGN key(id_semaforo) REFERENCES cfg_semaforo(id_semaforo)
);
    id_seq_alerta int IDENTITY(1,1) NOT NULL,
    desc_alerta nvarchar(250) NOT NULL,
    "DQquery" nvarchar(max) NOT NULL,
    color int NOT NULL,
    activo tinyint NOT NULL,
    observaciones nvarchar(500) NOT NULL,
    aplicar tinyint NOT NULL,
    resaltar tinyint NOT NULL,
    "desc_alerta_TranslationKey" varchar(47),
    PRIMARY KEY(id_seq_alerta)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_seq_criterio int IDENTITY(1,1) NOT NULL,
    cod_criterio nvarchar(50) NOT NULL,
    desc_criterio nvarchar(50) NOT NULL,
    tipo nvarchar(25) NOT NULL,
    orden int NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_seq_criterio)
);
    id_seq_tiempocambio int IDENTITY(1,1) NOT NULL,
    cod_tabla nvarchar(50) NOT NULL,
    id_anterior int NOT NULL,
    id_siguiente int NOT NULL,
    id_maquina int NOT NULL,
    tiempo int NOT NULL,
    PRIMARY KEY(id_seq_tiempocambio)
);
    id_tipoalerta int IDENTITY(1,1) NOT NULL,
    cod_tipoalerta nvarchar(50),
    desc_tipoalerta nvarchar(150),
    activo tinyint NOT NULL,
    PRIMARY KEY(id_tipoalerta)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_tipoAnalisis" int IDENTITY(1,1) NOT NULL,
    "cod_tipoAnalisis" nvarchar(50),
    "desc_tipoAnalisis" nvarchar(200),
    "Activo" smallint NOT NULL,
    "DQCabecera" nvarchar(max),
    "DQDetalle" nvarchar(max),
    "DQCausas" nvarchar(max),
    "DQPlanAccion" nvarchar(max),
    "DQAcciones" nvarchar(max),
    "DQHistorico" nvarchar(max),
    "DQDatosAdicionales" nvarchar(max),
    "DQSintomaQue" nvarchar(max),
    "DQSintomaQuien" nvarchar(max),
    "DQSintomaDonde" nvarchar(max),
    cod_df nvarchar(50),
    cod_dq_report nvarchar(200) NOT NULL,
    "Tipo" smallint NOT NULL,
    "AutoAddAcciones" smallint NOT NULL,
    "DQEstados" nvarchar(max),
    "AutoAddPlanAccion" smallint NOT NULL,
    "Path" nvarchar(250),
    "tipoAnalisis_QM" tinyint NOT NULL,
    "DQCausaRaiz" nvarchar(max),
    id_tipohisanalisis int NOT NULL,
    "id_tipoanalisisSerie" int NOT NULL,
    "id_tipoAnalisisPlanAccion" int NOT NULL,
    PRIMARY KEY(id_tipoAnalisis),
    CONSTRAINT FK_cfg_tipoanalisis_cfg_tipohisanalisis FOREIGN key(id_tipohisanalisis) REFERENCES cfg_tipohisanalisis(id_tipohisanalisis),
    CONSTRAINT FK_cfg_tipoanalisis_cfg_tipoanalisisSerie FOREIGN key("id_tipoanalisisSerie") REFERENCES "cfg_tipoanalisisSerie"("id_tipoanalisisSerie"),
    CONSTRAINT FK_cfg_tipoanalisis_cfg_tipoAnalisisPlanAccion FOREIGN key("id_tipoAnalisisPlanAccion") REFERENCES "cfg_tipoAnalisisPlanAccion"("id_tipoAnalisisPlanAccion")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_tipoanalisis_clave" int IDENTITY(1,1) NOT NULL,
    "Id_tipoanalisis" int,
    "Campoclave" varchar(100) NOT NULL,
    "SelectClave" varchar(max) NOT NULL,
    PRIMARY KEY(Id_tipoanalisis_clave),
    CONSTRAINT FK_cfg_tipoanalisis_clave_cfg_tipoanalisis FOREIGN key("Id_tipoanalisis") REFERENCES cfg_tipoanalisis("id_tipoAnalisis")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_tipoAnalisisPlanAccion" int IDENTITY(1,1) NOT NULL,
    "cod_tipoAnalisisPlanAccion" nvarchar(50),
    "desc_tipoAnalisisPlanAccion" nvarchar(200),
    orden int,
    activo smallint NOT NULL,
    reservado smallint NOT NULL,
    PRIMARY KEY(id_tipoAnalisisPlanAccion)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_tipoanalisisSerie" int IDENTITY(1,1) NOT NULL,
    "cod_tipoanalisisSerie" nvarchar(150),
    "Prefijo" nvarchar(10) NOT NULL,
    "Digitos" int NOT NULL,
    "Valor" int NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_tipoanalisisSerie)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_tipoBaliza" int NOT NULL,
    fabricante nvarchar(100) NOT NULL,
    modelo nvarchar(100) NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_tipoBaliza)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_tipoCapacitacion" int IDENTITY(1,1) NOT NULL,
    "cod_tipoCapacitacion" nvarchar(50) NOT NULL,
    "desc_tipoCapacitacion" nvarchar(250) NOT NULL,
    "SQLGrupo" nvarchar(max) NOT NULL,
    "campoClaveGrupo" nvarchar(50),
    "vistaSelector" nvarchar(50),
    "SQLMiembros" nvarchar(max),
    "Activo" smallint NOT NULL,
    PRIMARY KEY(id_tipoCapacitacion)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_TipoConfigControl" int IDENTITY(1,1) NOT NULL,
    "Cod_TipoConfigControl" nvarchar(100) NOT NULL,
    "Desc_TipoConfigControl" varchar(max),
    "FormConfigEditor" tinyint NOT NULL,
    "clsFullName" nvarchar(500) NOT NULL,
    "PropertiesToShow" nvarchar(max) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(id_TipoConfigControl)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    Cadena separada por comas de las propiedades a mostrar/editar.
    Si es blanco se muestra todo.';
    "id_TipoConfigTabla" int NOT NULL,
    "cod_TipoConfigTabla" nvarchar(100) NOT NULL,
    "desc_TipoConfigTabla" nvarchar(500) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(id_TipoConfigTabla)
);
EXEC sp_addextendedproperty
        La herencia se recupera de cfg_configTabla.
        Y en cfg_TipoConfig se capturan de aquí el tipo y su herencia';
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_tipodato" int IDENTITY(1,1) NOT NULL,
    "Cod_tipodato" nvarchar(25) NOT NULL,
    "Desc_tipodato" nvarchar(50),
    "Activo" tinyint NOT NULL,
    "Graficado" tinyint,
    PRIMARY KEY(Id_tipodato)
);
    "Id_tipodefecto" int IDENTITY(1,1) NOT NULL,
    "Cod_tipodefecto" nvarchar(25) NOT NULL,
    "Desc_tipodefecto" nvarchar(50) NOT NULL,
    "Activo" smallint,
    "Trace" tinyint NOT NULL,
    "desc_tipodefecto_TranslationKey" varchar(53),
    PRIMARY KEY(Id_tipodefecto)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_tipodefecto" int IDENTITY(1,1) NOT NULL,
    "Cod_tipodefecto" nvarchar(25) NOT NULL,
    "Desc_tipodefecto" nvarchar(50) NOT NULL,
    "Activo" smallint
);
    "Id_tipodefecto" int IDENTITY(1,1) NOT NULL,
    "Cod_tipodefecto" nvarchar(25) NOT NULL,
    "Desc_tipodefecto" nvarchar(50) NOT NULL,
    "Activo" smallint
);
    id_tipodefecto_visual int IDENTITY(1,1) NOT NULL,
    cod_tipodefecto_visual nvarchar(50) NOT NULL,
    desc_tipodefecto_visual nvarchar(250) NOT NULL,
    grid_editable tinyint NOT NULL,
    default_num_rowcol int NOT NULL,
    max_num_rowcol int NOT NULL,
    prc_alpha_color int NOT NULL,
    color int NOT NULL,
    activo tinyint NOT NULL,
    prc_min_alpha int NOT NULL,
    prc_max_alpha int NOT NULL,
    PRIMARY KEY(id_tipodefecto_visual)
);
    "Id_tipodia" int IDENTITY(1,1) NOT NULL,
    "Cod_tipodia" nvarchar(50),
    "Desc_tipodia" nvarchar(50) NOT NULL,
    "Laborable" smallint NOT NULL,
    "Color" int NOT NULL,
    "Activo" smallint NOT NULL,
    "desc_tipodia_TranslationKey" varchar(45),
    PRIMARY KEY(Id_tipodia)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_tipofase" int IDENTITY(1,1) NOT NULL,
    "Cod_tipofase" nvarchar(25) NOT NULL,
    "Desc_tipofase" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "Planificable" smallint NOT NULL,
    "Observaciones" nvarchar(250) NOT NULL,
    PRIMARY KEY(Id_tipofase)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_tipofase_defecto" int IDENTITY(1,1) NOT NULL,
    "Id_tipofase" int NOT NULL,
    "Id_defecto" int NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_tipofase_defecto),
    CONSTRAINT FK_cfg_tipofase_defecto_cfg_tipofase FOREIGN key("Id_tipofase") REFERENCES cfg_tipofase("Id_tipofase"),
    CONSTRAINT FK_cfg_tipofase_defecto_cfg_defecto FOREIGN key("Id_defecto") REFERENCES cfg_defecto("Id_defecto")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_tipofase_maquina" int IDENTITY(1,1) NOT NULL,
    "Id_maquina" int NOT NULL,
    "Id_tipofase" int NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_tipofase_maquina),
    CONSTRAINT FK_cfg_tipofase_maquina_cfg_maquina FOREIGN key("Id_maquina") REFERENCES cfg_maquina("Id_maquina"),
    CONSTRAINT FK_cfg_tipofase_maquina_cfg_etapa FOREIGN key("Id_tipofase") REFERENCES cfg_tipofase("Id_tipofase")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_tipoformulacion int IDENTITY(1,1) NOT NULL,
    cod_tipoformulacion nvarchar(25) NOT NULL,
    desc_tipoformulacion nvarchar(100) NOT NULL,
    "SQLSeleccionFormula" nvarchar(max),
    "PermitePausarFormula" tinyint NOT NULL,
    activo tinyint NOT NULL,
    "vistaSeleccionFormula" nvarchar(50),
    "PedirOperarioIniPaso" tinyint NOT NULL,
    "PedirOperarioFinPaso" tinyint NOT NULL,
    "PedirOperarioPausaPaso" tinyint NOT NULL,
    "ComentarioNok" tinyint NOT NULL,
    "ModoCierrePaso" int NOT NULL,
    "PermitePasosSimultaneos" int NOT NULL,
    "ModoInicioFormula" tinyint NOT NULL,
    "ModoCierreFormula" int NOT NULL,
    "ModoConsumo" tinyint NOT NULL,
    "PermiteReabrirPasosFinalizados" tinyint NOT NULL,
    "ModoArranqueFormula" tinyint NOT NULL,
    "ModoReinicioFormula" tinyint NOT NULL,
    PRIMARY KEY(id_tipoformulacion)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_tipograf int IDENTITY(1,1) NOT NULL,
    cod_tipograf varchar(25),
    desc_tipograf varchar(100),
    "Activo" smallint NOT NULL,
    PRIMARY KEY(id_tipograf)
);
EXEC sp_addextendedproperty
    id_tipohisanalisis int IDENTITY(1,1) NOT NULL,
    cod_tipohisanalisis nvarchar(50),
    desc_tipohisanalisis nvarchar(200),
    color int,
    orden int NOT NULL,
    activo smallint NOT NULL,
    PRIMARY KEY(id_tipohisanalisis)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_tipolote" int IDENTITY(1,1) NOT NULL,
    "Cod_tipolote" nvarchar(25) NOT NULL,
    "Desc_tipolote" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_tipolote)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_tipomaquina" int IDENTITY(1,1) NOT NULL,
    "Cod_tipomaquina" nvarchar(25) NOT NULL,
    "Desc_tipomaquina" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "TitleImageFromGallery" int NOT NULL,
    "desc_tipomaquina_TranslationKey" varchar(53),
    PRIMARY KEY(Id_tipomaquina)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_tipomaquina_defecto" int IDENTITY(1,1) NOT NULL,
    "Id_tipomaquina" int NOT NULL,
    "Id_defecto" int NOT NULL,
    "Restar" int NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_tipomaquina_defecto),
    CONSTRAINT FK_cfg_tipomaquina_defecto__cfg_tipomaquina FOREIGN key("Id_tipomaquina") REFERENCES cfg_tipomaquina("Id_tipomaquina"),
    CONSTRAINT FK_cfg_tipomaquina_defecto__cfg_defecto FOREIGN key("Id_defecto") REFERENCES cfg_defecto("Id_defecto")
);
    "Id_tipomaquina_defecto" int IDENTITY(1,1) NOT NULL,
    "Id_tipomaquina" int NOT NULL,
    "Id_defecto" int NOT NULL,
    "Restar" int NOT NULL
);
    "Id_tipomaquina_defecto" int IDENTITY(1,1) NOT NULL,
    "Id_tipomaquina" int NOT NULL,
    "Id_defecto" int NOT NULL,
    "Restar" int NOT NULL
);
    "Id_tipoobservaciones" int IDENTITY(1,1) NOT NULL,
    "Cod_tipoobservaciones" nvarchar(20) NOT NULL,
    "Desc_tipoobservaciones" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_tipoobservaciones)
);
    "Id_tipoof" int IDENTITY(1,1) NOT NULL,
    "Cod_tipoof" nvarchar(25) NOT NULL,
    "Desc_tipoof" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "desc_tipoof_TranslationKey" varchar(43),
    "plan_NoPlanificable" int NOT NULL,
    PRIMARY KEY(Id_tipoof)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_tipooperario" int IDENTITY(1,1) NOT NULL,
    "Cod_tipooperario" nvarchar(25) NOT NULL,
    "Desc_tipooperario" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "Coste" decimal(8,1) NOT NULL,
    "desc_tipooperario_TranslationKey" varchar(55),
    PRIMARY KEY(Id_tipooperario)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_tipoparo" int IDENTITY(1,1) NOT NULL,
    "Cod_tipoparo" nvarchar(25) NOT NULL,
    "Desc_tipoparo" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "desc_tipoparo_TranslationKey" varchar(47),
    PRIMARY KEY(Id_tipoparo)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_tipoparo1" int IDENTITY(1,1) NOT NULL,
    "Cod_tipoparo1" nvarchar(25) NOT NULL,
    "Desc_tipoparo1" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "desc_tipoparo1_TranslationKey" varchar(49),
    PRIMARY KEY(Id_tipoparo1)
);
    "Id_tipoparo2" int IDENTITY(1,1) NOT NULL,
    "Cod_tipoparo2" nvarchar(25) NOT NULL,
    "Desc_tipoparo2" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "desc_tipoparo2_TranslationKey" varchar(49),
    PRIMARY KEY(Id_tipoparo2)
);
    "Id_tipoparo3" int IDENTITY(1,1) NOT NULL,
    "Cod_tipoparo3" nvarchar(25) NOT NULL,
    "Desc_tipoparo3" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "desc_tipoparo3_TranslationKey" varchar(49),
    PRIMARY KEY(Id_tipoparo3)
);
    "Id_tipoparo4" int IDENTITY(1,1) NOT NULL,
    "Cod_tipoparo4" nvarchar(25) NOT NULL,
    "Desc_tipoparo4" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "desc_tipoparo4_TranslationKey" varchar(49),
    PRIMARY KEY(Id_tipoparo4)
);
    "Id_TipoparoOEE" int IDENTITY(1,1) NOT NULL,
    "Cod_TipoparoOEE" nvarchar(25) NOT NULL,
    "Desc_TipoparoOEE" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "desc_tipoparooee_TranslationKey" varchar(53),
    PRIMARY KEY(Id_TipoparoOEE)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_tipoplanning int IDENTITY(1,1) NOT NULL,
    "Cod_tipoplanning" nvarchar(50) NOT NULL,
    "Desc_tipoplanning" nvarchar(200) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(id_tipoplanning)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_tipoproducto" int IDENTITY(1,1) NOT NULL,
    "Cod_tipoproducto" nvarchar(25) NOT NULL,
    "Desc_tipoproducto" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "Observaciones" nvarchar(max) NOT NULL,
    "id_tipotrazabilidadEntrada" int NOT NULL,
    "id_tipotrazabilidadSalida" int NOT NULL,
    PRIMARY KEY(Id_tipoproducto)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_tipoSemaforo" int IDENTITY(1,1) NOT NULL,
    "cod_tipoSemaforo" nvarchar(50),
    "desc_tipoSemaforo" nvarchar(150),
    activo tinyint NOT NULL,
    observaciones nvarchar(max),
    PRIMARY KEY(id_tipoSemaforo)
);
    id_tipotrazabilidad int IDENTITY(1,1) NOT NULL,
    cod_tipotrazabilidad nvarchar(25) NOT NULL,
    desc_tipotrazabilidad nvarchar(50) NOT NULL,
    "DQBOM" ntext NOT NULL,
    "TituloBOM" nvarchar(50) NOT NULL,
    "DQProductos" ntext NOT NULL,
    "DQHistorico" ntext NOT NULL,
    "PermiteanadirProductos" tinyint NOT NULL,
    "NivelMinimoanadirProductos" tinyint NOT NULL,
    "ButtonPanelConsumosVisible" tinyint NOT NULL,
    "ButtonPanelConsumosAltura" int NOT NULL,
    "GridConsumosVisible" tinyint NOT NULL,
    "PanelConsumosVisible" tinyint NOT NULL,
    "RetornoConsumosVisible" tinyint NOT NULL,
    "VolverConsumosVisible" tinyint NOT NULL,
    "ModoAnadirCantidad" tinyint NOT NULL,
    "PedirOperarioConsumos" tinyint NOT NULL,
    "NivelMinimoConsumos" tinyint NOT NULL,
    "MostrarEliminarRetornoHistoricoConsumos" tinyint NOT NULL,
    "MostarRetornoHistoricoConsumos" tinyint NOT NULL,
    "RegistroProduccionConsumos" tinyint NOT NULL,
    "ModoCierreConsumoNuevaSalida" tinyint NOT NULL,
    "EAN128_GS" nvarchar(10) NOT NULL,
    "EAN128_StringStart" nvarchar(10) NOT NULL,
    "EAN128_IAProd" nvarchar(10) NOT NULL,
    "DQProduccion" ntext NOT NULL,
    "DQProductosSalida" ntext NOT NULL,
    "ButtonPanelProduccionVisible" tinyint NOT NULL,
    "ButtonPanelProduccionAltura" int NOT NULL,
    "PanelProduccionVisible" tinyint NOT NULL,
    "RetornoProduccionesVisible" tinyint NOT NULL,
    "VolverProduccionesVisible" tinyint NOT NULL,
    "GridProduccionesVisible" tinyint NOT NULL,
    "PedirOperarioProducciones" tinyint NOT NULL,
    "NivelMinimoProducciones" tinyint NOT NULL,
    "DQCambioOF" ntext NOT NULL,
    "ButtonPanelCambioOFVisible" tinyint NOT NULL,
    "ButtonPanelCambioOfAltura" int NOT NULL,
    "PanelCambioOfVisible" tinyint NOT NULL,
    "DQProductoSalidaRegistroEntrada" ntext NOT NULL,
    "DFTraceFin" nvarchar(50) NOT NULL,
    "DFTraceInicio" nvarchar(50) NOT NULL,
    "MostrarBotonHistorico" tinyint NOT NULL,
    "TipoControlCambioOF" tinyint NOT NULL,
    "TituloProducciones" nvarchar(50),
    "DQProduccionesEnCurso" nvarchar(max),
    "BotonImpresionProduccionVisible" tinyint NOT NULL,
    "SeleccionarAutoRegistroUnicoBOM" tinyint NOT NULL,
    "VisibleBotonFinalizarProduccion" tinyint NOT NULL,
    "IntervaloRefrescoConsumos" int NOT NULL,
    "IntervaloRefrescoProducciones" int NOT NULL,
    "CerrarConsumosInicioOF" tinyint NOT NULL,
    "EliminarConsumos" tinyint NOT NULL,
    "LinkedOutboundComponent" nvarchar(200) NOT NULL,
    "VisiblePanelContenedor" int NOT NULL,
    "DFHistoricoContenedores" nvarchar(200) NOT NULL,
    "VisibleBotonFinalizarContenedor" tinyint NOT NULL,
    "SQLContenedoresSalida" nvarchar(max) NOT NULL,
    "ModoCancelacionProduccion" tinyint NOT NULL,
    "VisibleCambioTrazabilidadconsumos" tinyint NOT NULL,
    "NivelMinimoCambioConsumos" tinyint NOT NULL,
    "VisibleBotonImpresionContenedorProduccion" tinyint NOT NULL,
    "VisibleRecargarContenedor" tinyint NOT NULL,
    "SeleccionarAutoRegistroUnicoConsumos" tinyint NOT NULL,
    "desc_tipotrazabilidad_TranslationKey" varchar(63),
    "ButtonPanelConsumosAnchura" int NOT NULL,
    "ButtonPanelProduccionAnchura" int NOT NULL,
    "MixingProcess" tinyint NOT NULL,
    "DQBOMLectura" nvarchar(max),
    "DQProduccionLectura" nvarchar(max),
    "botonAltaSubproductos" tinyint NOT NULL,
    "altaProduccionesEnBloque" tinyint NOT NULL,
    "modoProduccionesInicioOF" tinyint NOT NULL,
    "TituloBOM_TranslationKey" varchar(51),
    "TituloProducciones_TranslationKey" varchar(60),
    PRIMARY KEY(id_tipotrazabilidad)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
		FROM his_TrazabilidadContenedor WITH (NOLOCK)
		JOIN his_TrazabilidadContenedor_maquina WITH (NOLOCK) on (his_TrazabilidadContenedor_maquina.id_his_trazabilidadContenedor=his_TrazabilidadContenedor.id_his_trazabilidadContenedor)
		JOIN cfg_producto ON (cfg_producto.id_producto=his_TrazabilidadContenedor_maquina.id_producto)
		WHERE his_TrazabilidadContenedor_maquina.id_maquina=@CURRENTMACHINE
			AND his_TrazabilidadContenedor_maquina.id_his_Fase in (@TRACE_ID_HIS_FASE)
			AND his_TrazabilidadContenedor_maquina.estado=1
    "id_tipotrazabilidadContenedor" int IDENTITY(1,1) NOT NULL,
    "cod_tipotrazabilidadContenedor" nvarchar(25) NOT NULL,
    "desc_tipotrazabilidadContenedor" nvarchar(50) NOT NULL,
    "RegistroCodigo" tinyint NOT NULL,
    "RegistroDescripcion" tinyint NOT NULL,
    "RegistroSSCC" tinyint NOT NULL,
    "RegistroUbicacion" tinyint NOT NULL,
    "RegistroStorageUnit" tinyint NOT NULL,
    "RegistroUnidadesTeo" tinyint NOT NULL,
    "RegistroUnidadesParalelaTeo" tinyint NOT NULL,
    "RegistroNumBultosTeo" tinyint NOT NULL,
    "RegistroPesoTeo" tinyint NOT NULL,
    "SQLInicial" nvarchar(max) NOT NULL,
    "Activo" tinyint NOT NULL,
    "DQImpresion" nvarchar(max) NOT NULL,
    "ImpresionEtiquetas" tinyint NOT NULL,
    "ModoNuevoContenedor" tinyint NOT NULL,
    "PreguntarCopiasImpresion" tinyint NOT NULL,
    "SQLContenedoresRecarga" nvarchar(max) NOT NULL,
    "desc_tipotrazabilidadContenedor_TranslationKey" varchar(83),
    PRIMARY KEY(id_tipotrazabilidadContenedor)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
	Mapexbp publica los parámetros
		Mapexbp publica los parámetros
			SELECT his_Trazabilidadcontenedor.*
			FROM his_Trazabilidadcontenedor WITH (NOLOCK)
			JOIN his_trazabilidadContenedor_maquina  WITH (NOLOCK) on (his_Trazabilidadcontenedor.id_his_trazabilidadContenenedor=his_trazabilidadContenedor_maquina.id_his_trazabilidadContenenedor)
				AND his_trazabilidadContenedor_maquina.id_his_Fase=@SELECTEDTRACE_ID_HIS_FASE
    "id_tipotrazabilidadEntrada" int IDENTITY(1,1) NOT NULL,
    "Cod_tipotrazabilidadEntrada" nvarchar(50) NOT NULL,
    "Desc_tipotrazabilidadEntrada" nvarchar(200),
    "Activo" tinyint NOT NULL,
    "RegistroLote" tinyint,
    "RegistroHisLote" tinyint,
    "RegistroSSCC" tinyint,
    "RegistroCantidad" tinyint,
    "EspecificarCantidadRetorno" tinyint NOT NULL,
    "ValidacionProducto" tinyint,
    "ControlExistLote" tinyint,
    "ControlExistSSCC" tinyint,
    "ControlCantidad" tinyint,
    "DQControl" nvarchar(max),
    "ModoCierre" tinyint,
    "ObligatorioInicio" tinyint,
    "RegistroLoteSalida" tinyint NOT NULL,
    "PermiteRetorno" tinyint NOT NULL,
    "RegistroUbicacion" tinyint NOT NULL,
    "RegistroStorageUnit" tinyint NOT NULL,
    "DQPropuestaManual" nvarchar(max),
    "DQModoCierre" nvarchar(max),
    "TrazabilidadCompartida" tinyint NOT NULL,
    "DQReparticionTrazabilidadCompartida" nvarchar(max),
    "ModoCambioLoteSalida" tinyint NOT NULL,
    "CerrarUltimoMovimiento" tinyint NOT NULL,
    "ImpresionEtiquetas" tinyint NOT NULL,
    "DQImpresion" nvarchar(max),
    "ModoRetorno" tinyint NOT NULL,
    "FIFO" tinyint NOT NULL,
    "DQValidacionInicial" nvarchar(max) NOT NULL,
    "ModoCorteServer" tinyint NOT NULL,
    "FrecuenciaCorteServer" tinyint NOT NULL,
    "DQInicioCorteServer" nvarchar(max) NOT NULL,
    "AgentActualizarCantidad" tinyint NOT NULL,
    "GeneraNuevaProduccionCambioLoteConsumo" tinyint NOT NULL,
    "SQLSeleccionTipoTrazabilidad" nvarchar(max) NOT NULL,
    "PreguntarCopiasImpresion" tinyint NOT NULL,
    "Desc_tipotrazabilidadEntrada_TranslationKey" varchar(77),
    "RegistroTara" tinyint NOT NULL,
    "tipoUnidades" tinyint NOT NULL,
    "DQConsumoCompartidoInicial" nvarchar(max) NOT NULL,
    "gestionPeso" tinyint NOT NULL,
    "gestionUnidadParalela" tinyint NOT NULL,
    PRIMARY KEY(id_tipotrazabilidadEntrada)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
		FROM cfg_tipotrazabilidadentrada
		WHERE activo=1*/
    Con trazabilidad 2.1 o superior:
	FROM prd_of WITH (NOLOCK)
	INNER JOIN his_fase_producto WITH (NOLOCK) ON (
			AND his_fase_producto.EntradaSalida = 0
			AND his_fase_producto.id_producto = @TRACE_SELECTED_ID_PRODUCT
			)
	WHERE prd_of.id_maquina = @CURRENTTMOV.WORKCENTERID)
	FROM prd_of WITH (NOLOCK)
	INNER JOIN his_fase_producto WITH (NOLOCK) ON (
			AND his_fase_producto.EntradaSalida = 0
			AND his_fase_producto.id_producto = @TRACE_SELECTED_ID_PRODUCT
			)
	WHERE prd_of.id_maquina = @CURRENTTMOV.WORKCENTERID
    "id_tipotrazabilidadSalida" int IDENTITY(1,1) NOT NULL,
    "Cod_tipotrazabilidadSalida" nvarchar(50) NOT NULL,
    "Desc_tipotrazabilidadSalida" nvarchar(200),
    "RegistroLote" tinyint NOT NULL,
    "RegistroCantidad" tinyint NOT NULL,
    "Activo" tinyint NOT NULL,
    "CortaTrazabilidad" tinyint NOT NULL,
    "RegistroSSCC" tinyint NOT NULL,
    "RegistroUbicacion" tinyint NOT NULL,
    "RegistroStorageUnit" tinyint NOT NULL,
    "DQInicioLote" nvarchar(max),
    "DQCierreLote" nvarchar(max),
    "DQPropuestaManual" nvarchar(max),
    "ImpresionEtiquetas" tinyint NOT NULL,
    "DQImpresion" nvarchar(max),
    "ModoCorteServer" tinyint NOT NULL,
    "FrecuenciaCorteServer" tinyint NOT NULL,
    "DQInicioCorteServer" nvarchar(max) NOT NULL,
    "AgentActualizarCantidad" tinyint NOT NULL,
    "IncrementaContadorOk" tinyint NOT NULL,
    "NuevaProduccionCambioLoteConsumo" tinyint NOT NULL,
    "ProduccionFinal" tinyint NOT NULL,
    "id_tipotrazabilidadContenedor" int NOT NULL,
    "PreguntarCopiasImpresion" tinyint NOT NULL,
    "Desc_tipotrazabilidadSalida_TranslationKey" varchar(75),
    "MantenerSalidasAbiertas" tinyint NOT NULL,
    "RegistroTara" tinyint NOT NULL,
    "modoDefecto" tinyint NOT NULL,
    "SQLDefecto" nvarchar(max) NOT NULL,
    "tipoUnidades" tinyint NOT NULL,
    "gestionPeso" tinyint NOT NULL,
    "gestionUnidadParalela" tinyint NOT NULL,
    PRIMARY KEY(id_tipotrazabilidadSalida)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
		FROM cfg_trazabilidaddefecto
		JOIN cfg_trazabilidadTipoDefecto ON (cfg_trazabilidadTipoDefecto.id_trazabilidadTipoDefecto=cfg_trazabilidadDefecto.id_trazabilidadTipoDefecto)
		WHERE cfg_trazabilidaddefecto.activo=1
    "Id_tipoturno" int IDENTITY(1,1) NOT NULL,
    "Cod_tipoturno" nvarchar(25) NOT NULL,
    "Desc_tipoturno" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_tipoturno)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_tipousuario int IDENTITY(1,1) NOT NULL,
    cod_tipousuario nvarchar(25),
    desc_tipousuario nvarchar(100),
    activo smallint,
    PRIMARY KEY(id_tipousuario)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_tipoUtillaje" int IDENTITY(1,1) NOT NULL,
    "cod_tipoUtillaje" nvarchar(50) NOT NULL,
    "desc_tipoUtillaje" nvarchar(250),
    "id_grupoUtillaje" int NOT NULL,
    "cavidadesMax" int NOT NULL,
    "SegCambio" int NOT NULL,
    "SegPreparacion" int NOT NULL,
    "Activo" tinyint NOT NULL,
    "gestionNumeroSerie" tinyint NOT NULL,
    "seg_Montaje" int NOT NULL,
    "seg_Desmontaje" int NOT NULL,
    PRIMARY KEY(id_tipoUtillaje)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_trazabilidadDefecto" int IDENTITY(1,1) NOT NULL,
    "cod_trazabilidadDefecto" nvarchar(25) NOT NULL,
    "desc_trazabilidadDefecto" nvarchar(50) NOT NULL,
    "id_trazabilidadTipoDefecto" int NOT NULL,
    "sumaNoK" tinyint NOT NULL,
    "restaOk" tinyint NOT NULL,
    activo smallint NOT NULL,
    "desc_trazabilidadDefecto_TranslationKey" varchar(69),
    PRIMARY KEY(id_trazabilidadDefecto),
    CONSTRAINT FK_cfg_trazabilidadDefecto_cfg_trazabilidadTipoDefecto FOREIGN key("id_trazabilidadTipoDefecto") REFERENCES "cfg_trazabilidadTipoDefecto"("Id_trazabilidadTipoDefecto"),
    CONSTRAINT CK_cfg_trazabilidadDefecto CHECK ([Cod_trazabilidadDefecto] IS NOT NULL AND rtrim(ltrim([Cod_trazabilidadDefecto]))<>'')
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_trazabilidadTipoDefecto" int IDENTITY(1,1) NOT NULL,
    "Cod_trazabilidadTipoDefecto" nvarchar(25) NOT NULL,
    "Desc_trazabilidadTipoDefecto" nvarchar(50) NOT NULL,
    "Activo" smallint,
    "desc_trazabilidadTipoDefecto_TranslationKey" varchar(77),
    PRIMARY KEY(Id_trazabilidadTipoDefecto),
    CONSTRAINT CK_cfg_trazabilidadTipoDefecto CHECK ([Cod_trazabilidadTipoDefecto] IS NOT NULL AND rtrim(ltrim([Cod_trazabilidadTipoDefecto]))<>'')
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_graf_pantalla int IDENTITY(1,1) NOT NULL,
    id_graf bigint NOT NULL,
    id_pantalla bigint NOT NULL,
    x bigint NOT NULL,
    y bigint NOT NULL,
    "Id_pantalladestino" int NOT NULL,
    "Id_tipocaja" int NOT NULL,
    PRIMARY KEY(id_graf_pantalla)
);
    "Id_grupografica" int IDENTITY(1,1) NOT NULL,
    "Desc_grupografica" nvarchar(250) NOT NULL,
    "AutoRefresco" tinyint NOT NULL,
    "FrecuenciaRefresco" int NOT NULL,
    "IntervaloGrafica" int NOT NULL,
    "TituloEjeIzquierdo" nvarchar(250) NOT NULL,
    "MinEjeIzquierdo" int NOT NULL,
    "MaxEjeIzquierdo" int NOT NULL,
    "TituloEjeDerecho" nvarchar(250) NOT NULL,
    "MinEjeDerecho" int NOT NULL,
    "MaxEjeDerecho" int NOT NULL,
    "PosicionLeyenda" smallint NOT NULL,
    "Activo" tinyint NOT NULL,
    PRIMARY KEY(Id_grupografica)
);
    "Id_grupografica_graf" int IDENTITY(1,1) NOT NULL,
    "Id_grupografica" int NOT NULL,
    "Id_graf" int NOT NULL,
    "EjeIzquierdo" tinyint NOT NULL,
    "EjeDerecho" tinyint NOT NULL,
    "Color" int NOT NULL,
    "Orden" int NOT NULL,
    "Nombre" nvarchar(250),
    "vMin" tinyint NOT NULL,
    "vMax" tinyint NOT NULL,
    "ColorMin" int NOT NULL,
    "ColorMax" int NOT NULL,
    PRIMARY KEY(Id_grupografica_graf),
    CONSTRAINT FK_cfg_trendex_grupografica_graf_cfg_trendex_grupografica FOREIGN key("Id_grupografica") REFERENCES cfg_trendex_grupografica("Id_grupografica"),
    CONSTRAINT FK_cfg_trendex_grupografica_graf_cfg_graf FOREIGN key("Id_graf") REFERENCES cfg_graf("Id_graf")
);
    "Id_pantalla" int IDENTITY(1,1) NOT NULL,
    "Desc_pantalla" varchar(50) NOT NULL,
    "Path" varchar(255) NOT NULL,
    "DF_GeneracionOT" nvarchar(45) NOT NULL,
    PRIMARY KEY(Id_pantalla)
);
    "Id_tsk_estadoproyecto" int IDENTITY(1,1) NOT NULL,
    "Id_tsk_modulo" int NOT NULL,
    "Cod_tsk_estadoproyecto" nvarchar(25) NOT NULL,
    "Desc_tsk_estadoproyecto" nvarchar(50) NOT NULL,
    "Orden" smallint NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_tsk_estadoproyecto),
    CONSTRAINT FK_cfg_tsk_estadoproyecto_cfg_tsk_modulo FOREIGN key("Id_tsk_modulo") REFERENCES cfg_tsk_modulo("Id_tsk_modulo")
);
    "Id_tsk_estadotarea" int IDENTITY(1,1) NOT NULL,
    "Id_tsk_modulo" int NOT NULL,
    "Cod_tsk_estadotarea" nvarchar(25) NOT NULL,
    "Desc_tsk_estadotarea" nvarchar(50) NOT NULL,
    "Orden" smallint NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_tsk_estadotarea),
    CONSTRAINT FK_cfg_tsk_estadotarea_cfg_tsk_modulo FOREIGN key("Id_tsk_modulo") REFERENCES cfg_tsk_modulo("Id_tsk_modulo")
);
    "Id_tsk_modulo" int IDENTITY(1,1) NOT NULL,
    "Cod_tsk_modulo" nvarchar(25) NOT NULL,
    "Desc_tsk_modulo" nvarchar(50) NOT NULL,
    "EnvioMailResponsableProyecto" smallint NOT NULL,
    "EnvioMailResponsableTarea" smallint NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_tsk_modulo)
);
    "Id_tsk_tipoproyecto" int IDENTITY(1,1) NOT NULL,
    "Id_tsk_modulo" int NOT NULL,
    "Cod_tsk_tipoproyecto" nvarchar(25) NOT NULL,
    "Desc_tsk_tipoproyecto" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_tsk_tipoproyecto),
    CONSTRAINT FK_cfg_tsk_tipoproyecto_cfg_tsk_modulo FOREIGN key("Id_tsk_modulo") REFERENCES cfg_tsk_modulo("Id_tsk_modulo")
);
    "Id_tsk_tipoproyecto_tipotarea" int IDENTITY(1,1) NOT NULL,
    "Id_tsk_tipoproyecto" int NOT NULL,
    "Id_tsk_tipotarea" int NOT NULL,
    "Cod_tsk_tipoproyecto_tipotarea" nvarchar(25),
    "Desc_tsk_tipoproyecto_tipotarea" nvarchar(50),
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_tsk_tipoproyecto_tipotarea)
);
    "Id_tsk_tipotarea" int IDENTITY(1,1) NOT NULL,
    "Id_tsk_modulo" int NOT NULL,
    "Cod_tsk_tipotarea" nvarchar(25) NOT NULL,
    "Desc_tsk_tipotarea" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_tsk_tipotarea),
    CONSTRAINT FK_cfg_tsk_tipotarea_cfg_tsk_modulo FOREIGN key("Id_tsk_modulo") REFERENCES cfg_tsk_modulo("Id_tsk_modulo")
);
    "Id_turno" int IDENTITY(1,1) NOT NULL,
    "Cod_turno" nvarchar(25) NOT NULL,
    "Desc_turno" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "Id_tipoturno" int NOT NULL,
    "Id_horario" int NOT NULL,
    "Ini_turno" nvarchar(25) NOT NULL,
    "Fin_turno" nvarchar(25) NOT NULL,
    "Id_paro" int NOT NULL,
    "OrdenTurno" tinyint NOT NULL,
    PRIMARY KEY(Id_turno),
    CONSTRAINT FK_cfg_turno_cfg_tipoturno FOREIGN key("Id_tipoturno") REFERENCES cfg_tipoturno("Id_tipoturno"),
    CONSTRAINT FK_cfg_turno_cfg_horario FOREIGN key("Id_horario") REFERENCES cfg_horario("Id_horario"),
    CONSTRAINT FK_cfg_turno_cfg_paro FOREIGN key("Id_paro") REFERENCES cfg_paro("Id_paro")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_usuario_area" int IDENTITY(1,1) NOT NULL,
    "Id_usuario" int NOT NULL,
    "Id_area" int NOT NULL,
    PRIMARY KEY(Id_usuario_area)
);
    id_utillaje int IDENTITY(1,1) NOT NULL,
    cod_utillaje nvarchar(50) NOT NULL,
    desc_utillaje nvarchar(250),
    "id_tipoUtillaje" int NOT NULL,
    "id_estadoUtillaje" int NOT NULL,
    cavidades int NOT NULL,
    "Activo" tinyint NOT NULL,
    "Rt_id_his_fase_utillaje" int NOT NULL,
    "Rt_cod_agrupacion" nvarchar(50),
    rt_id_maquina int NOT NULL,
    PRIMARY KEY(id_utillaje)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_valorLista" int IDENTITY(1,1) NOT NULL,
    grupo nvarchar(150) NOT NULL,
    "cod_valorLista" nvarchar(150) NOT NULL,
    "desc_valorLista" nvarchar(500) NOT NULL,
    orden int NOT NULL,
    observaciones nvarchar(max),
    activo tinyint NOT NULL,
    "desc_valorLista_TranslationKey" varchar(51),
    color int,
    PRIMARY KEY(Id_valorLista)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_valorListaBaliza" int IDENTITY(1,1) NOT NULL,
    "id_tipoBaliza" int NOT NULL,
    grupo nvarchar(150) NOT NULL,
    "cod_valorListaBaliza" nvarchar(150) NOT NULL,
    valor nvarchar(500) NOT NULL,
    orden int NOT NULL,
    "desc_valorListaBaliza" nvarchar(max),
    activo tinyint NOT NULL,
    color int,
    PRIMARY KEY(id_valorListaBaliza),
    CONSTRAINT FK_cfg_valorListaBaliza_cfg_tipoBaliza FOREIGN key("id_tipoBaliza") REFERENCES "cfg_tipoBaliza"("id_tipoBaliza")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_wam_almacen" int IDENTITY(1,1) NOT NULL,
    "Id_area" int NOT NULL,
    "Cod_wam_almacen" nvarchar(25),
    "Desc_wam_almacen" nvarchar(50),
    "Activo" smallint,
    PRIMARY KEY(Id_wam_almacen)
);
EXEC sp_addextendedproperty
    "Id_wam_contenedor" int IDENTITY(1,1) NOT NULL,
    "Cod_wam_contenedor" nvarchar(25) NOT NULL,
    "Desc_wam_contenedor" nvarchar(50) NOT NULL,
    "Tara" decimal(18,2) NOT NULL,
    "Estado" smallint NOT NULL,
    "Rfid_wam_contenedor" nvarchar(25) NOT NULL,
    "Id_area" int NOT NULL,
    PRIMARY KEY(Id_wam_contenedor)
);
EXEC sp_addextendedproperty
    "Id_wam_ubicacion" int IDENTITY(1,1) NOT NULL,
    "Cod_wam_ubicacion" nvarchar(25),
    "Desc_wam_ubicacion" nvarchar(50),
    "Id_wam_almacen" int,
    "Activo" smallint,
    "Ocupado" smallint,
    "Prioridad" int,
    "Fila" int,
    "Posicion" int,
    "Nivel" int,
    "Multiproducto" smallint,
    PRIMARY KEY(Id_wam_ubicacion),
    CONSTRAINT FK_cfg_wam_ubicacion_cfg_wam_almacen FOREIGN key("Id_wam_almacen") REFERENCES cfg_wam_almacen("Id_wam_almacen")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_ws_connection int IDENTITY(1,1) NOT NULL,
    cod_ws_connection nvarchar(50),
    desc_ws_connection nvarchar(max),
    "URL" nvarchar(max),
    security_type nvarchar(20),
    "AuthenticationType" nvarchar(100),
    xml_user nvarchar(200),
    "xml_Password" nvarchar(500),
    "ServerIp" nvarchar(25),
    "Port" nvarchar(10),
    "UseSocket" tinyint NOT NULL,
    "statusConnection" tinyint,
    orden int,
    observaciones nvarchar(max),
    "Activo" tinyint NOT NULL,
    xml_domain nvarchar(100) NOT NULL,
    PRIMARY KEY(id_ws_connection)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_ws_header int IDENTITY(1,1) NOT NULL,
    id_ws_connection int NOT NULL,
    id_ws_request int,
    tag_ws_header nvarchar(50),
    value_ws_header nvarchar(max),
    "Activo" tinyint NOT NULL,
    PRIMARY KEY(id_ws_header),
    CONSTRAINT FK_cfg_ws_header_cfg_ws_connection FOREIGN key(id_ws_connection) REFERENCES cfg_ws_connection(id_ws_connection)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_ws_request int IDENTITY(1,1) NOT NULL,
    cod_ws_request nvarchar(50),
    desc_ws_request nvarchar(max),
    id_ws_connection int NOT NULL,
    "ws_REQUEST" nvarchar(max),
    "ws_REQUEST_QUERY" nvarchar(max),
    "Method" nvarchar(100),
    "ContentType" nvarchar(100),
    "Accept" nvarchar(100),
    "URL" nvarchar(max),
    "URL_QUERY" nvarchar(max),
    "ws_create_LOG" int NOT NULL,
    "ws_RESPONSE_ACTION_SQL1" nvarchar(max),
    "ws_RESPONSE_ACTION_SQL2" nvarchar(max),
    orden int,
    id_agent int,
    observaciones nvarchar(max),
    campo_arrastrado nvarchar(max),
    continue_on_request_exception smallint,
    "Activo" tinyint NOT NULL,
    "dataFormBodySQL" nvarchar(max),
    "userAgent" nvarchar(500) NOT NULL,
    PRIMARY KEY(id_ws_request),
    CONSTRAINT FK_cfg_ws_request_cfg_ws_connection FOREIGN key(id_ws_connection) REFERENCES cfg_ws_connection(id_ws_connection)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_unidades_maquina int IDENTITY(1,1) NOT NULL,
    id_his_fase int NOT NULL,
    id_turno int NOT NULL,
    unidades int NOT NULL,
    dia_productivo datetime NOT NULL,
    fecha datetime NOT NULL,
    dif_tiempo int NOT NULL,
    PRIMARY KEY(id_unidades_maquina)
);
    id_maquina int,
    desc_maquina nvarchar(100),
    "Rt_Id_his_fase" int,
    alarma_contador int,
    rt_acu_unidades int,
    frec_ciclos_maquina int,
    "Dia_productivo" datetime,
    "Ultimo_Fecha" datetime,
    "Alarma_Fecha" datetime,
    "FechaActual" datetime,
    "Alarma" tinyint,
    id_debug_controlescalidad int IDENTITY(1,1) NOT NULL,
    "Id_his_cal_plancontrol" int,
    PRIMARY KEY(id_debug_controlescalidad)
);
    id_debug_sup1h int IDENTITY(1,1) NOT NULL,
    id_maquina int,
    desc_maquina nvarchar(100),
    rt_id_his_fase int,
    dia_productivo datetime,
    fecha_actual datetime,
    rt_seg_produccion int,
    rt_seg_preparacion int,
    rt_seg_paro int,
    rt_desc_paro nvarchar(100),
    rt_hora_inicio_paro datetime,
    ack_paros_calidad tinyint,
    last_reset_ack_paros_calidad datetime,
    rt_id_actividad int,
    "numControles" int,
    PRIMARY KEY(id_debug_sup1h)
);
    "id_his_agentPulling" int IDENTITY(1,1) NOT NULL,
    "PhysicalMemoryUsage" bigint NOT NULL,
    "TotalProcesorTime" decimal(18,4) NOT NULL,
    "Threads" int NOT NULL,
    "Handles" int NOT NULL,
    "LastEndDate" datetime NOT NULL,
    "PullingTimeMs" decimal(18,4) NOT NULL,
    PRIMARY KEY(id_his_agentPulling)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_his_agentTask" int IDENTITY(1,1) NOT NULL,
    "id_his_agentPulling" bigint NOT NULL,
    "id_cfg_agentTask" int NOT NULL,
    id_dq bigint NOT NULL,
    "TaskTimeMs" decimal(18,4) NOT NULL,
    "TaskBeforeSourceMs" decimal(18,4) NOT NULL,
    "TaskSourceTimeMs" decimal(18,4) NOT NULL,
    "TaskAfterSourceMs" decimal(18,4) NOT NULL,
    "TaskBeforeTargetMs" decimal(18,4) NOT NULL,
    "TaskTargetTimeMs" decimal(18,4) NOT NULL,
    "TaskAfterTargetMs" decimal(18,4) NOT NULL,
    "IniTaskDate" datetime NOT NULL,
    "ExecutedOK" bit NOT NULL,
    "Message" nvarchar(1000) NOT NULL,
    "ErrorOnSource" bit NOT NULL,
    "ErrorOnTarget" bit NOT NULL,
    PRIMARY KEY(id_his_agentTask),
    CONSTRAINT FK_his_agentTask_his_agentPulling FOREIGN key("id_his_agentPulling") REFERENCES "his_agentPulling"("id_his_agentPulling"),
    CONSTRAINT FK_his_agentTask_cfg_agentTask FOREIGN key("id_cfg_agentTask") REFERENCES "cfg_agentTask"("id_cfg_agentTask")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_his_alarma" int IDENTITY(1,1) NOT NULL,
    fecha_ini datetime,
    fecha_fin datetime,
    alarma bigint NOT NULL,
    comentario nvarchar(200),
    validado smallint NOT NULL,
    "usuarioValidado" nvarchar(50),
    "fecha_Validado" datetime,
    PRIMARY KEY(Id_his_alarma)
);
    "Id_his_alarmaGraf" int IDENTITY(1,1) NOT NULL,
    "Id_graf" int NOT NULL,
    fecha_ini datetime,
    fecha_fin datetime,
    alarma bigint NOT NULL,
    comentario nvarchar(200),
    validado smallint NOT NULL,
    "usuarioValidado" nvarchar(50),
    "fecha_Validado" datetime,
    PRIMARY KEY(Id_his_alarmaGraf)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_alerta int IDENTITY(1,1) NOT NULL,
    id_tipoalerta int NOT NULL,
    cod_alerta nvarchar(250),
    desc_alerta nvarchar(max),
    fecha_ini datetime NOT NULL,
    fecha_fin datetime NOT NULL,
    diascaducidad int NOT NULL,
    id_usuariocreacion int NOT NULL,
    activo tinyint NOT NULL,
    fecha_creacion datetime NOT NULL,
    obligatoria int NOT NULL,
    id_his_analisis int NOT NULL,
    PRIMARY KEY(id_his_alerta),
    CONSTRAINT FK_his_alerta_cfg_tipoalerta FOREIGN key(id_tipoalerta) REFERENCES cfg_tipoalerta(id_tipoalerta)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_alerta_accion int IDENTITY(1,1) NOT NULL,
    id_his_alerta int NOT NULL,
    cod_accion nvarchar(25),
    desc_accion nvarchar(250),
    orden int NOT NULL,
    ack tinyint NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_his_alerta_accion),
    CONSTRAINT FK_his_alerta_accion_his_alerta FOREIGN key(id_his_alerta) REFERENCES his_alerta(id_his_alerta)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_alerta_destino int IDENTITY(1,1) NOT NULL,
    id_his_alerta int NOT NULL,
    tabla nvarchar(50) NOT NULL,
    id_destino int NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_his_alerta_destino),
    CONSTRAINT FK_his_alerta_destino_his_alerta FOREIGN key(id_his_alerta) REFERENCES his_alerta(id_his_alerta)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_alerta_operario int IDENTITY(1,1) NOT NULL,
    id_his_alerta int NOT NULL,
    id_operario int NOT NULL,
    fecha datetime NOT NULL,
    activo tinyint NOT NULL,
    id_his_prod bigint NOT NULL,
    PRIMARY KEY(id_his_alerta_operario),
    CONSTRAINT FK_his_alerta_operario_his_alerta FOREIGN key(id_his_alerta) REFERENCES his_alerta(id_his_alerta),
    CONSTRAINT FK_his_alerta_operario_cfg_operario FOREIGN key(id_operario) REFERENCES cfg_operario("Id_operario")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_analisis int IDENTITY(1,1) NOT NULL,
    cod_his_analisis nvarchar(50),
    desc_his_analisis nvarchar(200),
    id_tipoanalisis int NOT NULL,
    "id_analisisOrigen" int,
    "Que" nvarchar(200),
    "Quien" nvarchar(200),
    "Cuando" datetime,
    "Donde" nvarchar(200),
    "Como" nvarchar(200),
    "Porque1" nvarchar(max),
    "Porque2" nvarchar(max),
    "Porque3" nvarchar(max),
    "Porque4" nvarchar(max),
    "Porque5" nvarchar(max),
    "PorqueRaiz" nvarchar(200),
    "id_operarioCreacion" int,
    fecha_creacion datetime NOT NULL,
    fecha_cierre datetime,
    id_maquina int,
    id_his_fase int,
    id_his_cal_plancontrol int,
    id_his_cal_plancontrol_res int,
    id_his_prod_defecto int,
    id_his_trazabilidad int,
    id_producto int,
    his_paro int,
    id_his_mnt_operacion int,
    "hostName" nvarchar(500),
    "id_analisisClasificacion" int NOT NULL,
    id_operario int NOT NULL,
    "Coste" decimal(20,4) NOT NULL,
    "ProductoServicio" nvarchar(25) NOT NULL,
    "cod_analisisCliente" nvarchar(50),
    id_grupoanalisis int NOT NULL,
    id_clienteplanta int NOT NULL,
    fecha_actualizacion datetime,
    "Cantidad" int NOT NULL,
    "Imagen" nvarchar(250) NOT NULL,
    "QueCliente" nvarchar(200),
    "QuienCliente" nvarchar(200),
    "CuandoCliente" datetime,
    "DondeCliente" nvarchar(200),
    "ComoCliente" nvarchar(200),
    "CantidadCliente" int NOT NULL,
    "ImagenCliente" nvarchar(250) NOT NULL,
    verificacion1 nvarchar(500),
    verificacion2 nvarchar(500),
    "CuandoTxt" nvarchar(max) NOT NULL,
    "CuandoClienteTxt" nvarchar(max) NOT NULL,
    "His_calidad" bigint NOT NULL,
    "DB_SPID" bigint NOT NULL,
    "id_analisisEstado" int NOT NULL,
    titulo nvarchar(200),
    "pathImagenOK" nvarchar(250),
    "pathImagenNOK" nvarchar(250),
    id_his_fase_rework int NOT NULL,
    PRIMARY KEY(id_his_analisis),
    CONSTRAINT FK_analisis_grupoanalisis FOREIGN key(id_grupoanalisis) REFERENCES cfg_grupoanalisis(id_grupoanalisis),
    CONSTRAINT FK_analisis_clienteplanta FOREIGN key(id_clienteplanta) REFERENCES cfg_clienteplanta(id_clienteplanta)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_analisis_operario int IDENTITY(1,1) NOT NULL,
    id_his_analisis int NOT NULL,
    id_operario int NOT NULL,
    lider tinyint NOT NULL,
    PRIMARY KEY(id_his_analisis_operario),
    CONSTRAINT FK_analisis_operario_analisis FOREIGN key(id_his_analisis) REFERENCES his_analisis(id_his_analisis),
    CONSTRAINT FK_analisis_operario_operario FOREIGN key(id_operario) REFERENCES cfg_operario("Id_operario")
);
EXEC sp_addextendedproperty
    "id_his_analisisEstado" int IDENTITY(1,1) NOT NULL,
    "id_analisisEstado" int,
    fecha datetime,
    id_operario int,
    comentarios nvarchar(max),
    id_his_analisis int,
    PRIMARY KEY(id_his_analisisEstado)
);
    "Id_his_appcc_control_parametro" int IDENTITY(1,1) NOT NULL,
    "Id_appcc_control_parametro" int NOT NULL,
    "Fecha" datetime NOT NULL,
    "Apto" smallint NOT NULL,
    "Observaciones" nvarchar(4000),
    "Id_usuario" int NOT NULL,
    PRIMARY KEY(Id_his_appcc_control_parametro)
);
    "Id_his_cal_alarma" int IDENTITY(1,1) NOT NULL,
    fecha_ini datetime,
    fecha_fin datetime,
    "Id_his_cal_plancontrol" bigint NOT NULL,
    "Comentario" nvarchar(200),
    "Cod_maquina" nvarchar(50),
    cod_of nvarchar(50),
    validado smallint NOT NULL,
    "usuarioValidado" nvarchar(50),
    "fecha_Validado" datetime,
    "Id_maquina" int NOT NULL,
    "Desc_alarma" nvarchar(50) NOT NULL,
    "Id_his_fase" int NOT NULL,
    "Cod_cal_plancontrol" nvarchar(50),
    "Desc_cal_plancontrol" nvarchar(100),
    "Id_Producto" int NOT NULL,
    PRIMARY KEY(Id_his_cal_alarma)
);
    id_his_cal_alarmas_approval_mail int IDENTITY(1,1) NOT NULL,
    id_maquina int NOT NULL,
    id_his_fase int NOT NULL,
    id_his_cal_plancontrol int NOT NULL,
    fecha_control datetime,
    alarma smallint NOT NULL,
    ack_mail smallint NOT NULL,
    PRIMARY KEY(id_his_cal_alarmas_approval_mail)
);
    id_his_cal_alarmas_mail int IDENTITY(1,1) NOT NULL,
    id_maquina int NOT NULL,
    id_his_fase int NOT NULL,
    id_his_cal_plancontrol int NOT NULL,
    fecha_control datetime,
    alarma smallint NOT NULL,
    tiempo_alarma int NOT NULL,
    ack_mail smallint NOT NULL,
    PRIMARY KEY(id_his_cal_alarmas_mail)
);
    id_his_cal_alarmas_maquina_mail int IDENTITY(1,1) NOT NULL,
    id_maquina int NOT NULL,
    dia_productivo datetime NOT NULL,
    id_turno int NOT NULL,
    id_cal_plancontrol int NOT NULL,
    fecha_control datetime NOT NULL,
    alarma smallint NOT NULL,
    ack_mail smallint NOT NULL,
    PRIMARY KEY(id_his_cal_alarmas_maquina_mail)
);
    "Id_his_cal_autorizacion" int IDENTITY(1,1) NOT NULL,
    id_operario int NOT NULL,
    "NivelCriticidad" tinyint NOT NULL,
    "Comentario" nvarchar(max),
    "FechaCreacion" datetime NOT NULL,
    PRIMARY KEY(Id_his_cal_autorizacion),
    CONSTRAINT FK_his_cal_autorizacion_cfg_operario FOREIGN key(id_operario) REFERENCES cfg_operario("Id_operario")
);
    "Id_his_cal_im" int IDENTITY(1,1) NOT NULL,
    "Id_cal_instrumentomedida" int,
    "Comentario" nvarchar(500),
    "Fecha" datetime NOT NULL,
    resultado tinyint NOT NULL,
    fecha_actualizacion datetime NOT NULL,
    realizado varchar(50),
    id_cal_tipocalibracion int,
    cod_cal_im nvarchar(50),
    certificado nvarchar(50),
    PRIMARY KEY(Id_his_cal_im),
    CONSTRAINT FK_his_cal_im_cfg_cal_tipocalibracion FOREIGN key(id_cal_tipocalibracion) REFERENCES cfg_cal_tipocalibracion(id_cal_tipocalibracion)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_cal_muestra int IDENTITY(1,1) NOT NULL,
    id_cal_tipomuestra int NOT NULL,
    cod_cal_muestra nvarchar(50) NOT NULL,
    fecha_muestra datetime NOT NULL,
    "Estado" int NOT NULL,
    id_his_fase int NOT NULL,
    id_maquina int NOT NULL,
    id_fase int NOT NULL,
    id_producto int NOT NULL,
    "Activo" tinyint NOT NULL,
    "Comments" nvarchar(max) NOT NULL,
    "Unidades" int NOT NULL,
    PRIMARY KEY(id_his_cal_muestra),
    CONSTRAINT FK_his_cal_muestra_cfg_cal_tipomuestra FOREIGN key(id_cal_tipomuestra) REFERENCES cfg_cal_tipomuestra(id_cal_tipomuestra)
);
EXEC sp_addextendedproperty
    "Id_his_cal_plancontrol" int IDENTITY(1,1) NOT NULL,
    "Id_his_fase" int NOT NULL,
    "Id_maquina" int NOT NULL,
    "Cod_cal_plancontrol" nvarchar(50) NOT NULL,
    "Desc_cal_plancontrol" nvarchar(200) NOT NULL,
    "Id_cal_tipocontrol" int NOT NULL,
    "Id_tipooperario" int NOT NULL,
    "Id_cal_grupocontrol" int NOT NULL,
    "Valor_MAX1" decimal(10,2),
    "Valor_MAX2" decimal(10,2),
    "Valor_MIN1" decimal(10,2),
    "Valor_MIN2" decimal(10,2),
    "Valor_nominal" decimal(10,2) NOT NULL,
    "Valor_nominal_alfanumerico" nvarchar(50),
    "Valor_list" nvarchar(max),
    "NumControlesSPC" int NOT NULL,
    "Frec_Ciclos_maquina" int NOT NULL,
    "Frec_Seg_maquina" int NOT NULL,
    "Approval" smallint NOT NULL,
    "InProcess" smallint NOT NULL,
    "LastControl" smallint NOT NULL,
    "Observaciones" nvarchar(max),
    "Activo" smallint NOT NULL,
    "Orden" smallint NOT NULL,
    "Cod_APPCC" varchar(250),
    "Ponderacion" decimal(10,2),
    "RequiereValidacion" smallint,
    "Imagen1" varchar(300),
    "Valor_list_resultado" nvarchar(max),
    "Ultimo_Fecha" datetime,
    "Ultimo_Valor" decimal(18,2),
    "Ultimo_Valor_Alfanumerico" nvarchar(max),
    "Ultimo_Contador" decimal(18,2),
    "Nuevo_Valor" decimal(18,2),
    "Nuevo_Valor_Alfanumerico" nvarchar(50),
    "Nuevo_Contador" decimal(18,2),
    "Id_his_albaran" int NOT NULL,
    "Clonable" tinyint,
    "NumVersion" int,
    "Ultimo_id_cal_im" int,
    "Ultimo_resultado" int,
    "Id_fase" int NOT NULL,
    "Ultimo_Id_cal_tipoim" int,
    "Ultimo_Suma" decimal(18,2) NOT NULL,
    "Ultimo_Media" decimal(18,2) NOT NULL,
    "Ultimo_Recorrido" decimal(18,2) NOT NULL,
    "NumPlanActual" bigint NOT NULL,
    "Valor_defecto" nvarchar(100),
    "Formula" nvarchar(500),
    "Parametros" nvarchar(2000),
    "Ultimo_Id_his_cal_plancontrol_res" bigint,
    "Cod_df" nvarchar(45),
    "NumValoresFueraSPC" int,
    "UnidadMedida" nvarchar(50),
    "Frec_seg_maquina_marcha" int NOT NULL,
    "Alarma_contador" decimal(18,4) NOT NULL,
    "Alarma_contador_marcha" decimal(18,4) NOT NULL,
    "Alarma_fecha" datetime,
    "Insercion" smallint NOT NULL,
    "Ag_Alarma_contador" decimal(18,4) NOT NULL,
    "Ag_Alarma_contador_marcha" decimal(18,4) NOT NULL,
    "Ag_Alarma_fecha" datetime,
    "Id_turno" int NOT NULL,
    "Dia_productivo" datetime,
    "Ag_ControlSinEntrar" int NOT NULL,
    "Id_cal_tipoplan" int,
    "His_calidad" bigint NOT NULL,
    ultimo_his_calidad int NOT NULL,
    "SqlValidacionResultado" nvarchar(max),
    "Id_tipoproducto" int,
    "PathImportarResultado" nvarchar(500),
    "esSlider" tinyint NOT NULL,
    "esPreserie" smallint,
    "Paros_Mantenimiento" smallint,
    "Paros_Ajustes_Produccion" smallint,
    "Paros_Produccion_tiempo" smallint,
    "Ultimo_Dia_productivo" datetime,
    "Ultimo_Id_turno" int,
    "id_cal_plancontrolVersion" int NOT NULL,
    "Ultimo_comentario" nvarchar(max),
    "Ultimo_id_his_cal_autorizacion" int NOT NULL,
    "ModoSPC" int NOT NULL,
    "id_tipoUtillaje" int NOT NULL,
    id_utillaje int NOT NULL,
    id_cal_tipocalibracion int,
    id_cal_instrumentomedida int,
    id_his_cal_im int,
    "generaNoConformidad" smallint NOT NULL,
    "id_tipoAnalisis" int NOT NULL,
    id_tipomaquina int NOT NULL,
    id_his_cal_auditoria int,
    id_cal_auditoria int,
    id_mnt_tipooperacion int NOT NULL,
    id_mnt_estadooperacion int NOT NULL,
    id_mnt_tipoelemento int NOT NULL,
    id_lpa_auditoria int NOT NULL,
    id_his_lpa_auditoria int NOT NULL,
    id_his_cal_muestra int,
    id_cal_tipomuestra int,
    "Id_area" int,
    id_linea int NOT NULL,
    "Fecha_creacion" datetime,
    id_mnt_proc int NOT NULL,
    id_his_mnt_operacion int NOT NULL,
    id_operario int NOT NULL,
    id_proveedor int NOT NULL,
    id_producto int NOT NULL,
    id_especificacion int NOT NULL,
    "Nuevo_comentario" nvarchar(max),
    valoraceptacion int,
    "Id_cal_grupotrendex" int,
    "Id_graf" int,
    "id_chk_checklistPlan" int NOT NULL,
    "id_his_chk_checklistPlan_maquina" int NOT NULL,
    "frec_seg_iniTurno" int,
    "frec_seg_finTurno" int,
    PRIMARY KEY(Id_his_cal_plancontrol),
    CONSTRAINT FK_his_cal_plancontrol_id_cal_tipocontrol FOREIGN key("Id_cal_tipocontrol") REFERENCES cfg_cal_tipocontrol("Id_cal_tipocontrol"),
    CONSTRAINT FK_his_cal_plancontrol_id_cal_grupocontrol FOREIGN key("Id_cal_grupocontrol") REFERENCES cfg_cal_grupocontrol("Id_cal_grupocontrol"),
    CONSTRAINT FK_his_cal_plancontrol_his_cal_autorizacion FOREIGN key("Ultimo_id_his_cal_autorizacion") REFERENCES his_cal_autorizacion("Id_his_cal_autorizacion"),
    CONSTRAINT FK_his_cal_plancontrol_cfg_cal_grupotrendex FOREIGN key("Id_cal_grupotrendex") REFERENCES cfg_cal_grupotrendex("Id_cal_grupotrendex"),
    CONSTRAINT FK_his_cal_plancontrol_cfg_graf FOREIGN key("Id_graf") REFERENCES cfg_graf("Id_graf")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_cal_plancontrol_im int IDENTITY(1,1) NOT NULL,
    id_his_cal_plancontrol int NOT NULL,
    id_cal_instrumentomedida int NOT NULL,
    orden int NOT NULL,
    PRIMARY KEY(id_his_cal_plancontrol_im),
    CONSTRAINT FK_his_cal_plancontrol_im_id_his_cal_plancontrol FOREIGN key(id_his_cal_plancontrol) REFERENCES his_cal_plancontrol("Id_his_cal_plancontrol"),
    CONSTRAINT FK_his_cal_plancontrol_im_id_cal_instrumentomedida FOREIGN key(id_cal_instrumentomedida) REFERENCES cfg_cal_instrumentomedida("Id_cal_instrumentomedida")
);
EXEC sp_addextendedproperty
    "Id_his_cal_plancontrol_res" int IDENTITY(1,1) NOT NULL,
    "Id_his_cal_plancontrol" int NOT NULL,
    "Valor" decimal(18,2) NOT NULL,
    "Valor_alfanumerico" nvarchar(100) NOT NULL,
    "Valor_list" nvarchar(max) NOT NULL,
    "Resultado" int NOT NULL,
    "Clonado" smallint,
    "Comentario" nvarchar(max),
    "Validacion1" int NOT NULL,
    "UsuarioValidacion1" nvarchar(50),
    "FechaValidacion1" datetime,
    "ComentarioValidacion1" nvarchar(max),
    "Validacion2" int NOT NULL,
    "UsuarioValidacion2" nvarchar(50),
    "FechaValidacion2" datetime,
    "ComentarioValidacion2" nvarchar(max),
    "Id_operario" int NOT NULL,
    "Fecha" datetime NOT NULL,
    "Fecha_modificacion" datetime,
    "Id_usuario_modificacion" int,
    "Suma" decimal(18,2) NOT NULL,
    "Media" decimal(18,2) NOT NULL,
    "Recorrido" decimal(18,2) NOT NULL,
    "His_calidad" bigint NOT NULL,
    "Id_cal_tipoim" int,
    "Id_cal_im" int,
    "Dia_productivo" datetime,
    "Id_turno" int,
    "Id_his_cal_autorizacion" int NOT NULL,
    "QualityMode" int,
    id_utillaje int NOT NULL,
    "posicionUtillaje" int NOT NULL,
    "numMuestra" int NOT NULL,
    fecha_muestra datetime,
    PRIMARY KEY(Id_his_cal_plancontrol_res),
    CONSTRAINT FK_his_cal_plancontrol_res_id_his_cal_plancontrol FOREIGN key("Id_his_cal_plancontrol") REFERENCES his_cal_plancontrol("Id_his_cal_plancontrol"),
    CONSTRAINT FK_his_cal_plancontrol_res_id_operario FOREIGN key("Id_operario") REFERENCES cfg_operario("Id_operario"),
    CONSTRAINT FK_his_cal_plancontrol_res_his_cal_autorizacion FOREIGN key("Id_his_cal_autorizacion") REFERENCES his_cal_autorizacion("Id_his_cal_autorizacion")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_his_cal_plancontrol_res_spc" int IDENTITY(1,1) NOT NULL,
    "Id_his_cal_plancontrol_res" bigint NOT NULL,
    "Valor" decimal(8,2) NOT NULL,
    "ValorAlfanumerico" nvarchar(250),
    PRIMARY KEY(Id_his_cal_plancontrol_res_spc),
    CONSTRAINT FK_his_cal_plancontrol_res_spc_his_cal_plancontrol_res FOREIGN key("Id_his_cal_plancontrol_res") REFERENCES his_cal_plancontrol_res("Id_his_cal_plancontrol_res")
);
    id_his_cal_plancontrol_tipoim int IDENTITY(1,1) NOT NULL,
    id_his_cal_plancontrol int NOT NULL,
    id_cal_tipoim int NOT NULL,
    PRIMARY KEY(id_his_cal_plancontrol_tipoim),
    CONSTRAINT FK_his_cal_plancontrol_tipoim_id_his_cal_plancontrol FOREIGN key(id_his_cal_plancontrol) REFERENCES his_cal_plancontrol("Id_his_cal_plancontrol"),
    CONSTRAINT FK_his_cal_plancontrol_tipoim_id_cal_tipoim FOREIGN key(id_cal_tipoim) REFERENCES cfg_cal_tipoim("Id_cal_tipoim")
);
    "Id_calendarioEquipoOperario" int IDENTITY(1,1) NOT NULL,
    "FechaInicio" datetime NOT NULL,
    "FechaFin" datetime NOT NULL,
    "Id_maquina" int NOT NULL,
    "Id_Equipooperario" int NOT NULL,
    "Id_turno" int NOT NULL,
    PRIMARY KEY(Id_calendarioEquipoOperario)
);
    "id_his_calendarioSerie" int IDENTITY(1,1) NOT NULL,
    fecha_ini datetime NOT NULL,
    fecha_fin datetime NOT NULL,
    "frecuenciaModo" smallint NOT NULL,
    frecuencia int NOT NULL,
    lunes tinyint NOT NULL,
    martes tinyint NOT NULL,
    miercoles tinyint NOT NULL,
    jueves tinyint NOT NULL,
    viernes tinyint NOT NULL,
    sabado tinyint NOT NULL,
    domingo tinyint NOT NULL,
    "semanaMes" smallint NOT NULL,
    "diaTipo" smallint NOT NULL,
    "diaMes" smallint NOT NULL,
    "diaSemana" smallint NOT NULL,
    mes smallint NOT NULL,
    PRIMARY KEY(id_his_calendarioSerie)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_his_CfgConfig" int IDENTITY(1,1) NOT NULL,
    "Type" tinyint NOT NULL,
    "ChangeDate" datetime NOT NULL,
    "ChangeHostname" nvarchar(100) NOT NULL,
    "ChangeLastNetUser" nvarchar(100),
    "ChangeLastUser" nvarchar(100),
    id_config int NOT NULL,
    cod_config nvarchar(100) NOT NULL,
    desc_config nvarchar(max) NOT NULL,
    "id_ConfigModulo" int NOT NULL,
    "id_tipoConfigControl" int NOT NULL,
    "cod_Agrupacion" nvarchar(100) NOT NULL,
    orden int NOT NULL,
    "DefaultValue" nvarchar(max) NOT NULL,
    "sqlList" nvarchar(max) NOT NULL,
    "id_TipoConfigTabla" int NOT NULL,
    "sp_Selector" nvarchar(500) NOT NULL,
    "Core" bit NOT NULL,
    "LastUpdate" datetime NOT NULL,
    "LastNetUser" nvarchar(100),
    "LastUser" nvarchar(100),
    "Activo" smallint NOT NULL,
    "MinLevelVisibility" smallint NOT NULL,
    "MinLevelEdit" smallint NOT NULL,
    PRIMARY KEY(id_his_CfgConfig)
);
EXEC sp_addextendedproperty
    "id_his_chk_checklistPlan_maquina" int IDENTITY(1,1) NOT NULL,
    "id_chk_checklistPlan_maquina" int NOT NULL,
    "fechaAlta" datetime NOT NULL,
    fecha_ini datetime NOT NULL,
    fecha_fin datetime NOT NULL,
    observaciones nvarchar(500),
    activo tinyint NOT NULL,
    PRIMARY KEY(id_his_chk_checklistPlan_maquina),
    CONSTRAINT FK_his_chk_checklistPlan_maquina_cfg_chk_checklistPlan_maquina FOREIGN key("id_chk_checklistPlan_maquina") REFERENCES "cfg_chk_checklistPlan_maquina"("id_chk_checklistPlan_maquina")
);
    "Id_his_comentario" int IDENTITY(1,1) NOT NULL,
    "Id_his_fase" int NOT NULL,
    "Id_his_prod" int NOT NULL,
    "Id_turno" int NOT NULL,
    "Id_maquina" int NOT NULL,
    "Id_operario" int NOT NULL,
    "Fecha" datetime,
    "Dia_Productivo" datetime,
    "Comentario" nvarchar(200),
    PRIMARY KEY(Id_his_comentario)
);
    "id_his_Config" int IDENTITY(1,1) NOT NULL,
    id_config int NOT NULL,
    "id_configTabla" int NOT NULL,
    id_tabla int NOT NULL,
    "Valor" nvarchar(max) NOT NULL,
    "LastUpdate" datetime NOT NULL,
    "LastNetUser" nvarchar(50),
    "LastUser" nvarchar(50),
    "Activo" smallint NOT NULL,
    PRIMARY KEY(id_his_Config),
    CONSTRAINT FK_cfg_ConfigSTD_cfg_Config FOREIGN key(id_config) REFERENCES "cfg_Config"(id_config),
    CONSTRAINT FK_his_Config_cfg_ConfigTabla FOREIGN key("id_configTabla") REFERENCES "cfg_ConfigTabla"("id_configTabla")
);
EXEC sp_addextendedproperty
        Se mantienen los históricos con su fecha de cambio.';
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_his_doc" int IDENTITY(1,1) NOT NULL,
    "Cod_his_doc" nvarchar(100) NOT NULL,
    "Desc_his_doc" nvarchar(200),
    "Activo" smallint NOT NULL,
    "Id_doc_tipodoc" int,
    "Version" smallint,
    "Fecha" datetime,
    "Cod_usuario" nvarchar(25) NOT NULL,
    "Adjunto" smallint,
    "Path" nvarchar(250) NOT NULL,
    "Size" int,
    "Comentario" varchar(300),
    "Cod_doc_tabla" nvarchar(50) NOT NULL,
    "Id_tabla" bigint NOT NULL,
    "FechaCaducidad" datetime NOT NULL,
    "Datos" varbinary(max),
    "AbrirConAplicacionWindows" smallint NOT NULL,
    PRIMARY KEY(Id_his_doc),
    CONSTRAINT FK_his_doc_cfg_doc_tipodoc FOREIGN key("Id_doc_tipodoc") REFERENCES cfg_doc_tipodoc("Id_doc_tipodoc"),
    CONSTRAINT FK_his_doc_cfg_doc_tabla FOREIGN key("Cod_doc_tabla") REFERENCES cfg_doc_tabla("Cod_doc_tabla")
);
EXEC sp_addextendedproperty
    "id_his_estadoUtillaje" int IDENTITY(1,1) NOT NULL,
    id_operario int NOT NULL,
    fecha_ini datetime,
    fecha_fin datetime,
    "id_estadoUtillaje" int NOT NULL,
    id_utillaje int NOT NULL,
    comentario nvarchar(500),
    id_maquina int NOT NULL,
    "Acu_unidades_ini" int NOT NULL,
    "Acu_unidades_fin" int NOT NULL,
    cod_agrupacion nvarchar(50),
    id_his_fase_utillaje int NOT NULL,
    unidades int NOT NULL,
    PRIMARY KEY(id_his_estadoUtillaje),
    CONSTRAINT FK_his_estadoUtillaje_cfg_maquina FOREIGN key(id_maquina) REFERENCES cfg_maquina("Id_maquina")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_his_etiqueta" int IDENTITY(1,1) NOT NULL,
    "Id_his_fase" int NOT NULL,
    "Num_pallet" int NOT NULL,
    "Num_caja" int NOT NULL,
    "Fecha" datetime NOT NULL,
    "Trama" varchar(max) NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_his_etiqueta),
    CONSTRAINT FK_his_etiqueta_his_fase FOREIGN key("Id_his_fase") REFERENCES his_fase("Id_his_fase")
);
    "Id_his_fase" int IDENTITY(1,1) NOT NULL,
    "Cod_his_fase" nvarchar(50),
    "Desc_his_fase" nvarchar(250),
    "Id_his_of" int,
    "Id_fase" int NOT NULL,
    "Id_estadoof" int,
    "Orden" int,
    "Fecha_ini" datetime,
    "Fecha_fin" datetime,
    "Seg_Planning_Preparacion" int NOT NULL,
    "Seg_Planning_Produccion" int NOT NULL,
    "Unidades_planning" int NOT NULL,
    "Unidades_planning2" int NOT NULL,
    "Unidades_planning_Preparacion" int NOT NULL,
    "Id_tipoplanning" int,
    "Orden_his_fase" int NOT NULL,
    "Seg_Planning_FestivosSumados" int NOT NULL,
    "Rendimientonominal1" decimal(8,2) NOT NULL,
    "Rendimientonominal2" decimal(8,2) NOT NULL,
    "Bloqueada" smallint NOT NULL,
    "Id_modofuncionamientofase" int NOT NULL,
    "Factor_multiplicativo" decimal(8,2) NOT NULL,
    "ERP_ini" tinyint NOT NULL,
    "ERP_fin" tinyint NOT NULL,
    "ColorPlanificador" int,
    "ObjetivoYield" decimal(8,2) NOT NULL,
    "Velocidadoperario" decimal(8,2) NOT NULL,
    "Ag_UnidadesGA" decimal(18,2) NOT NULL,
    "Ag_PesoGA" decimal(18,2) NOT NULL,
    "Ag_MaxGA" decimal(18,2) NOT NULL,
    "Ag_PesoTotal" decimal(18,4) NOT NULL,
    "CajasPorPalet" int NOT NULL,
    "PiezasPorCaja" int NOT NULL,
    "PiezasPorPalet" int NOT NULL,
    "PesoNeto" decimal(18,3) NOT NULL,
    "FechaCaducidad" datetime NOT NULL,
    "FechaCierre" datetime,
    erp_modif smallint,
    id_operario_cierre int,
    id_operario_apertura int,
    "SegCicloNominal" int NOT NULL,
    "CosteOperarioHora" decimal(10,4),
    "CosteMaquinaHora" decimal(10,4),
    "CosteUnitario" decimal(10,4) NOT NULL,
    cod_agrupacion nvarchar(50) NOT NULL,
    "id_tipoUtillajeMolde" int NOT NULL,
    "id_utillajeMolde" int NOT NULL,
    "seg_Planning_FinProduccion" int NOT NULL,
    plan_fecha_ini_minima datetime,
    plan_fecha_ini datetime,
    plan_fecha_fin datetime,
    plan_id_maquina int,
    plan_bloqueada int NOT NULL,
    plan_orden int NOT NULL,
    plan_prioridad int NOT NULL,
    plan_ubicada int NOT NULL,
    plan_seg_preparacion int NOT NULL,
    plan_seg_produccion int NOT NULL,
    plan_color int,
    plan_bloq_seg_preparacion tinyint NOT NULL,
    plan_alerta nvarchar(500) NOT NULL,
    "plan_numOperarios" int NOT NULL,
    plan_fecha_ini_prod datetime,
    "plan_operacionPrevia" int NOT NULL,
    plan_solapamiento_ant int NOT NULL,
    plan_tiposolapamiento_ant int NOT NULL,
    plan_nivel int NOT NULL,
    plan_id_his_fase_ant int NOT NULL,
    plan_espera int NOT NULL,
    plan_seg_improductivo int NOT NULL,
    "plan_toleranciaMargen" int NOT NULL,
    plan_rt_fecha_ini_minima datetime,
    plan_rt_espera int NOT NULL,
    plan_rt_id_maquina int NOT NULL,
    plan_rt_color int,
    plan_rt_fecha_ini_prod datetime,
    plan_id_his_fase_pos int NOT NULL,
    plan_solapamiento_pos int NOT NULL,
    plan_tiposolapamiento_pos int NOT NULL,
    "plan_rotarSecuencia" tinyint NOT NULL,
    PRIMARY KEY(Id_his_fase),
    CONSTRAINT FK_his_fase_his_of FOREIGN key("Id_his_of") REFERENCES his_of("Id_his_of"),
    CONSTRAINT FK_his_fase_cfg_fase FOREIGN key("Id_fase") REFERENCES cfg_fase("Id_fase"),
    CONSTRAINT FK_his_fase_cfg_estadoof FOREIGN key("Id_estadoof") REFERENCES cfg_estadoof("Id_estadoof"),
    CONSTRAINT FK_his_fase_cfg_tipoplanning FOREIGN key("Id_tipoplanning") REFERENCES cfg_tipoplanning(id_tipoplanning),
    CONSTRAINT FK_his_fase_cfg_modofuncionamientofase FOREIGN key("Id_modofuncionamientofase") REFERENCES cfg_modofuncionamientofase("Id_modofuncionamientofase")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_fase_especificacion int IDENTITY(1,1) NOT NULL,
    id_his_fase bigint NOT NULL,
    id_especificacion int NOT NULL,
    valor_nominal decimal(10,2),
    "valor_MIN1" decimal(10,2),
    "valor_MAX1" decimal(10,2),
    texto_resultado nvarchar(150),
    observaciones nvarchar(max),
    activo tinyint NOT NULL,
    PRIMARY KEY(id_his_fase_especificacion),
    CONSTRAINT FK_his_fase_especificacion_cfg_especificacion FOREIGN key(id_especificacion) REFERENCES cfg_especificacion(id_especificacion)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_his_fase_lote" int IDENTITY(1,1) NOT NULL,
    "Id_his_fase" int NOT NULL,
    "Id_his_lote" int NOT NULL,
    "Activo" smallint NOT NULL,
    "Fecha" datetime NOT NULL,
    "Cod_lote" varchar(50) NOT NULL,
    "Id_producto" int NOT NULL,
    "Id_maquina" int NOT NULL,
    "Id_operario" int NOT NULL,
    "Unidades" int NOT NULL,
    PRIMARY KEY(Id_his_fase_lote),
    CONSTRAINT FK_his_fase_lote_his_fase FOREIGN key("Id_his_fase") REFERENCES his_fase("Id_his_fase")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_his_fase_maquina" int IDENTITY(1,1) NOT NULL,
    "Id_his_fase" int NOT NULL,
    "Id_maquina" int NOT NULL,
    "Activo" smallint NOT NULL,
    "Id_modofuncionamientofase" int NOT NULL,
    "SegCicloNominal" int NOT NULL,
    "Factor_Multiplicativo" decimal(8,2) NOT NULL,
    "RendimientoNominal1" decimal(8,2) NOT NULL,
    "RendimientoNominal2" decimal(8,2) NOT NULL,
    PRIMARY KEY(Id_his_fase_maquina),
    CONSTRAINT FK_his_fase_maquina_his_fase FOREIGN key("Id_his_fase") REFERENCES his_fase("Id_his_fase"),
    CONSTRAINT FK_his_fase_maquina_cfg_maquina FOREIGN key("Id_maquina") REFERENCES cfg_maquina("Id_maquina"),
    CONSTRAINT FK_his_fase_maquina_cfg_modofuncionamientofase FOREIGN key("Id_modofuncionamientofase") REFERENCES cfg_modofuncionamientofase("Id_modofuncionamientofase")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_fase_mermas int IDENTITY(1,1) NOT NULL,
    id_his_fase int NOT NULL,
    id_maquina int NOT NULL,
    id_producto int NOT NULL,
    cantidad decimal(13,3) NOT NULL,
    motivo nvarchar(500),
    id_operario int NOT NULL,
    fecha datetime NOT NULL,
    id_motivo_merma int,
    PRIMARY KEY(id_his_fase_mermas)
);
    "Id_his_fase_observacion" int IDENTITY(1,1) NOT NULL,
    "Id_his_fase" int NOT NULL,
    "Id_maquina" int NOT NULL,
    "Id_operario" int NOT NULL,
    "Fecha" datetime NOT NULL,
    "Observacion" nvarchar(200),
    "Enviado" tinyint NOT NULL,
    PRIMARY KEY(Id_his_fase_observacion)
);
    "Id_his_fase_operario" int IDENTITY(1,1) NOT NULL,
    "Id_his_fase" int NOT NULL,
    "Id_operario" int NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_his_fase_operario),
    CONSTRAINT FK_his_fase_operario_his_fase FOREIGN key("Id_his_fase") REFERENCES his_fase("Id_his_fase"),
    CONSTRAINT FK_his_fase_operario_cfg_operario FOREIGN key("Id_operario") REFERENCES cfg_operario("Id_operario")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_his_fase_producto" int IDENTITY(1,1) NOT NULL,
    "Id_his_fase" int NOT NULL,
    "Id_producto" int NOT NULL,
    "Activo" smallint NOT NULL,
    "Orden" int,
    "Unidades" decimal(18,4),
    "EntradaSalida" tinyint NOT NULL,
    "Tipo_corte" tinyint NOT NULL,
    "CosteUnitario" decimal(10,4),
    "UnidadMedida2" nvarchar(50),
    "Unidades2" decimal(18,4),
    "Peso" decimal(18,4),
    "id_tipotrazabilidadEntrada" int NOT NULL,
    "id_tipotrazabilidadSalida" int NOT NULL,
    "UnidadesParalela" decimal(18,4),
    "factorMultiplicativoSalida" int,
    "PesoTara" decimal(18,4),
    PRIMARY KEY(Id_his_fase_producto),
    CONSTRAINT FK_his_fase_producto_his_fase FOREIGN key("Id_his_fase") REFERENCES his_fase("Id_his_fase"),
    CONSTRAINT FK_his_fase_producto_cfg_producto FOREIGN key("Id_producto") REFERENCES cfg_producto("Id_producto")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_fase_utillaje int IDENTITY(1,1) NOT NULL,
    id_his_fase bigint NOT NULL,
    "id_tipoUtillaje" int NOT NULL,
    id_utillaje int NOT NULL,
    obligatorio smallint NOT NULL,
    activo smallint NOT NULL,
    orden int NOT NULL,
    "Rt_id_utillaje" int NOT NULL,
    unidades_planning int NOT NULL,
    PRIMARY KEY(id_his_fase_utillaje),
    CONSTRAINT FK_his_fase_utillaje_cfg_tipoUtillaje FOREIGN key("id_tipoUtillaje") REFERENCES "cfg_tipoUtillaje"("id_tipoUtillaje"),
    CONSTRAINT FK_his_fase_utillaje_cfg_utillaje FOREIGN key(id_utillaje) REFERENCES cfg_utillaje(id_utillaje),
    CONSTRAINT FK_his_fase_utillaje_RTcfg_utillaje FOREIGN key("Rt_id_utillaje") REFERENCES cfg_utillaje(id_utillaje)
);
EXEC sp_addextendedproperty
    "id_his_fifoMovement" int IDENTITY(1,1) NOT NULL,
    "id_fifoMovementType" int NOT NULL,
    id_fifo int NOT NULL,
    id_producto int NOT NULL,
    batch nvarchar(50),
    quantity numeric(18,4) NOT NULL,
    remain_quantity numeric(18,4),
    create_date datetime NOT NULL,
    ack int,
    ack_date datetime,
    host_name nvarchar(100) NOT NULL,
    "msgError" nvarchar(250),
    id_prd_fifo int,
    PRIMARY KEY(id_his_fifoMovement),
    CONSTRAINT FK_his_fifoMovement_cfg_fifoMovementType FOREIGN key("id_fifoMovementType") REFERENCES "cfg_fifoMovementType"("id_fifoMovementType"),
    CONSTRAINT FK_his_fifoMovement_cfg_fifo FOREIGN key(id_fifo) REFERENCES cfg_fifo(id_fifo),
    CONSTRAINT FK_his_fifoMovement_cfg_producto FOREIGN key(id_producto) REFERENCES cfg_producto("Id_producto")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_formula int IDENTITY(1,1) NOT NULL,
    cod_his_formula nvarchar(25) NOT NULL,
    desc_his_formula nvarchar(250) NOT NULL,
    id_formula int NOT NULL,
    id_his_fase int NOT NULL,
    cantidad decimal(18,3) NOT NULL,
    fecha_ini datetime,
    fecha_fin datetime,
    fecha_creacion datetime NOT NULL,
    id_operario_ini int,
    id_operario_fin int,
    "id_estadoFormula" int NOT NULL,
    id_maquina int NOT NULL,
    activo tinyint NOT NULL,
    "Observaciones" nvarchar(500),
    PRIMARY KEY(id_his_formula),
    CONSTRAINT FK_id_formula FOREIGN key(id_formula) REFERENCES cfg_formula(id_formula)
);
    "id_his_formulaPaso" int IDENTITY(1,1) NOT NULL,
    "cod_his_formulaPaso" nvarchar(25) NOT NULL,
    "desc_his_formulaPaso" nvarchar(250) NOT NULL,
    id_his_formula int NOT NULL,
    orden int NOT NULL,
    "tiempoTeorico" int,
    temperatura decimal(18,4),
    velocidad decimal(18,4),
    unidades decimal(18,4),
    "toleranciaSup" decimal(18,4),
    "toleranciaInf" decimal(18,4),
    "tipoTolerancia" int,
    obligatorio tinyint NOT NULL,
    "anterioresRealizados" tinyint NOT NULL,
    id_producto int,
    "id_estadoFormulaPaso" int NOT NULL,
    id_operario_ini int,
    id_operario_fin int,
    fecha_ini datetime,
    fecha_fin datetime,
    "pasoActual" tinyint NOT NULL,
    "unidadMedida" nvarchar(50),
    id_graf_bascula int,
    id_graf_temperatura int,
    id_graf_velocidad int,
    "SQLSeleccionBascula" nvarchar(max),
    activo tinyint NOT NULL,
    "permitePausarPaso" tinyint NOT NULL,
    "Observaciones" nvarchar(500),
    anadido tinyint NOT NULL,
    "PC" nvarchar(50),
    "PasoFueraTolerancia" tinyint NOT NULL,
    PRIMARY KEY(id_his_formulaPaso),
    CONSTRAINT FK_id_his_formula FOREIGN key(id_his_formula) REFERENCES his_formula(id_his_formula),
    CONSTRAINT FK_his_formulaPaso_id_producto FOREIGN key(id_producto) REFERENCES cfg_producto("Id_producto"),
    CONSTRAINT FK_id_estadoFormulaPaso FOREIGN key("id_estadoFormulaPaso") REFERENCES "cfg_estadoFormulaPaso"("id_estadoFormulaPaso")
);
    "id_his_formulaPaso_estado" int IDENTITY(1,1) NOT NULL,
    "id_his_formulaPaso" int NOT NULL,
    fecha_ini datetime NOT NULL,
    fecha_fin datetime,
    id_operario_ini int,
    id_operario_fin int,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_his_formulaPaso_estado),
    CONSTRAINT FK_his_formulaPaso_estado_his_formulaPaso FOREIGN key("id_his_formulaPaso") REFERENCES "his_formulaPaso"("id_his_formulaPaso")
);
    "Fecha" datetime NOT NULL,
    "Id_maquina" int NOT NULL,
    "Id_graf" int NOT NULL,
    "Valor" decimal(9,2),
    "Vmax" decimal(9,2),
    "Vmin" decimal(9,2),
    "VEsperado" smallint,
    id_his_fase int,
    dia_productivo datetime,
    id_turno int,
    PRIMARY KEY(Fecha,Id_maquina,Id_graf)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_his_horaOEE" int IDENTITY(1,1) NOT NULL,
    "Id_maquina" int NOT NULL,
    "Fecha_ini" datetime NOT NULL,
    "Fecha_fin" datetime NOT NULL,
    "Id_turno" int NOT NULL,
    "Dia_Productivo" datetime,
    "ObjetivoOEE" decimal(18,2),
    "HoraOEE" decimal(18,2) NOT NULL,
    "EvolucionOEE" decimal(18,2) NOT NULL,
    "Unidades_teo" int NOT NULL,
    "Unidades_OK" int NOT NULL,
    "Unidades" int NOT NULL,
    "M" int NOT NULL,
    "M_PNP" int NOT NULL,
    PRIMARY KEY(Id_his_horaOEE)
);
    id_his_kpi int IDENTITY(1,1) NOT NULL,
    id_kpi int NOT NULL,
    "Kpi" decimal(18,4) NOT NULL,
    "Id_table" bigint,
    "Id_table2" bigint,
    "Id_table3" bigint,
    "Id_table4" bigint,
    "Id_table5" bigint,
    "Cod_tableId" nvarchar(50),
    "Cod_tableId2" nvarchar(50),
    "Cod_tableId3" nvarchar(50),
    "Cod_tableId4" nvarchar(50),
    "Cod_tableId5" nvarchar(50),
    "Desc_tableId" nvarchar(250),
    "Desc_tableId2" nvarchar(250),
    "Desc_tableId3" nvarchar(250),
    "Desc_tableId4" nvarchar(250),
    "Desc_tableId5" nvarchar(250),
    "Cod_kpi_table" nvarchar(50),
    "Cod_kpi_table2" nvarchar(50),
    "Cod_kpi_table3" nvarchar(50),
    "Cod_kpi_table4" nvarchar(50),
    "Cod_kpi_table5" nvarchar(50),
    "StartDate" datetime NOT NULL,
    "EndDate" datetime NOT NULL,
    "YYYY" int,
    "MM" int,
    "WK" int,
    "DD" int,
    "HH" int,
    "CalculationType" char(1) NOT NULL,
    "Nominal" decimal(18,3) NOT NULL,
    "Min" decimal(18,3) NOT NULL,
    "Max" decimal(18,3) NOT NULL,
    "ColorGreenValue1" decimal(18,2) NOT NULL,
    "ColorGreenValue2" decimal(18,2) NOT NULL,
    "ColorOrangeValue1" decimal(18,2) NOT NULL,
    "ColorOrangeValue2" decimal(18,2) NOT NULL,
    "ColorRedValue1" decimal(18,2) NOT NULL,
    "ColorRedValue2" decimal(18,2) NOT NULL,
    "CreationDate" datetime NOT NULL,
    "LastUpdate" datetime NOT NULL,
    "AlarmReported" tinyint,
    PRIMARY KEY(id_his_kpi)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_his_KPIObjetivo" int IDENTITY(1,1) NOT NULL,
    "id_KPI" int NOT NULL,
    "Fecha_ini" datetime,
    "ColorGreenValue1" decimal(18,2) NOT NULL,
    "ColorGreenValue2" decimal(18,2) NOT NULL,
    "ColorOrangeValue1" decimal(18,2) NOT NULL,
    "ColorOrangeValue2" decimal(18,2) NOT NULL,
    "ColorRedValue1" decimal(18,2) NOT NULL,
    "ColorRedValue2" decimal(18,2) NOT NULL,
    "Nominal" decimal(18,3) NOT NULL,
    "Min" decimal(18,3) NOT NULL,
    "Max" decimal(18,3) NOT NULL,
    "Id_table" bigint,
    "Id_table2" bigint,
    "Id_table3" bigint,
    "Id_table4" bigint,
    "Id_table5" bigint,
    "Cod_kpi_table" nvarchar(50),
    "Cod_kpi_table2" nvarchar(50),
    "Cod_kpi_table3" nvarchar(50),
    "Cod_kpi_table4" nvarchar(50),
    "Cod_kpi_table5" nvarchar(50),
    PRIMARY KEY(id_his_KPIObjetivo),
    CONSTRAINT FK_his_KPIObjetivo_cfg_KPI FOREIGN key("id_KPI") REFERENCES "cfg_KPI"("id_KPI")
);
    "Id_his_lab_muestra" int IDENTITY(1,1) NOT NULL,
    "Cod_his_lab_muestra" nvarchar(25) NOT NULL,
    "Desc_his_lab_muestra" nvarchar(50) NOT NULL,
    "ObservacionesMuestra" nvarchar(max),
    "Fecha_muestra" datetime NOT NULL,
    "Id_producto" int NOT NULL,
    "Cod_lote_entrada" nvarchar(25),
    "Cod_lote_salida" nvarchar(25),
    "Id_usuario" int NOT NULL,
    "Id_lab_departamento" int NOT NULL,
    "Id_lab_estadomuestra" int NOT NULL,
    "Prioridad" smallint NOT NULL,
    "Id_lab_proveedormuestra" int NOT NULL,
    "Id_lab_proveedor" int NOT NULL,
    "Fecha_salida" datetime,
    "Coste_real" decimal(10,2) NOT NULL,
    "Fecha_resultado" datetime,
    "ObservacionesResultado" nvarchar(max),
    "Validacion" smallint NOT NULL,
    "Id_UsuarioValidacion" int,
    "FechaValidacion" datetime,
    "ComentarioValidacion" nvarchar(max),
    "Activo" smallint NOT NULL,
    CONSTRAINT FK_his_lab_muestra_his_lab_muestra FOREIGN key("Id_his_lab_muestra") REFERENCES his_lab_muestra("Id_his_lab_muestra"),
    CONSTRAINT FK_his_lab_muestra_cfg_producto FOREIGN key("Id_producto") REFERENCES cfg_producto("Id_producto"),
    CONSTRAINT FK_his_lab_muestra_cfg_lab_departamento FOREIGN key("Id_lab_departamento") REFERENCES cfg_lab_departamento("Id_lab_departamento"),
    CONSTRAINT FK_his_lab_muestra_cfg_lab_estadomuestra FOREIGN key("Id_lab_estadomuestra") REFERENCES cfg_lab_estadomuestra("Id_lab_estadomuestra"),
    CONSTRAINT FK_his_lab_muestra_cfg_lab_proveedormuestra FOREIGN key("Id_lab_proveedormuestra") REFERENCES cfg_lab_proveedormuestra("Id_lab_proveedormuestra"),
    CONSTRAINT FK_his_lab_muestra_cfg_lab_proveedor FOREIGN key("Id_lab_proveedor") REFERENCES cfg_lab_proveedor("Id_lab_proveedor")
);
    "Id_his_lab_muestra_control" int IDENTITY(1,1) NOT NULL,
    "Id_his_lab_muestra" int NOT NULL,
    "Id_lab_control" int NOT NULL,
    "Valor" decimal(10,2),
    "Id_lab_procedimiento" int NOT NULL,
    "Observaciones" nvarchar(max),
    "Valor_MAX" decimal(18,2) NOT NULL,
    "Valor_MIN" decimal(18,2) NOT NULL,
    PRIMARY KEY(Id_his_lab_muestra_control),
    CONSTRAINT FK_his_lab_muestra_control_his_lab_muestra FOREIGN key("Id_his_lab_muestra") REFERENCES his_lab_muestra("Id_his_lab_muestra"),
    CONSTRAINT FK_his_lab_muestra_control_cfg_lab_control FOREIGN key("Id_lab_control") REFERENCES cfg_lab_control("Id_lab_control"),
    CONSTRAINT FK_his_lab_muestra_control_cfg_lab_procedimiento FOREIGN key("Id_lab_procedimiento") REFERENCES cfg_lab_procedimiento("Id_lab_procedimiento")
);
    "Id_his_lote" int IDENTITY(1,1) NOT NULL,
    "Id_tipolote" int NOT NULL,
    "Id_producto" int NOT NULL,
    "Cod_lote" nvarchar(25) NOT NULL,
    "Desc_lote" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "Fecha_ini" datetime,
    "Unidades" int NOT NULL,
    "Manual" int NOT NULL,
    id_wam_almacen int NOT NULL,
    PRIMARY KEY(Id_his_lote),
    CONSTRAINT FK_his_lote_cfg_tipolote FOREIGN key("Id_tipolote") REFERENCES cfg_tipolote("Id_tipolote"),
    CONSTRAINT FK_his_lote_cfg_producto FOREIGN key("Id_producto") REFERENCES cfg_producto("Id_producto")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_lpa_auditoria int IDENTITY(1,1) NOT NULL,
    id_lpa_auditoria_operario int NOT NULL,
    fecha_ini datetime NOT NULL,
    fecha_fin datetime,
    activo tinyint NOT NULL,
    observaciones nvarchar(500) NOT NULL,
    id_maquina int NOT NULL,
    id_producto int NOT NULL,
    id_operario int NOT NULL,
    operarios nvarchar(300) NOT NULL,
    titulo nvarchar(250),
    PRIMARY KEY(id_his_lpa_auditoria),
    CONSTRAINT FK_his_lpa_auditoria_cfg_lpa_auditoria_operario FOREIGN key(id_lpa_auditoria_operario) REFERENCES cfg_lpa_auditoria_operario(id_lpa_auditoria_operario),
    CONSTRAINT FK_his_lpa_auditoria_cfg_maquina FOREIGN key(id_maquina) REFERENCES cfg_maquina("Id_maquina"),
    CONSTRAINT FK_his_lpa_auditoria_cfg_producto FOREIGN key(id_producto) REFERENCES cfg_producto("Id_producto"),
    CONSTRAINT FK_his_lpa_auditoria_cfg_operario FOREIGN key(id_operario) REFERENCES cfg_operario("Id_operario")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_mantenimiento int IDENTITY(1,1) NOT NULL,
    id_maquina int,
    "Tema" varchar(80),
    "Id_OperarioD" int NOT NULL,
    "Desc_his_mantenimiento" varchar(500) NOT NULL,
    "Visto" smallint,
    "FechaAck" datetime,
    "Prioridad" int,
    "HayComentarios" smallint,
    "Id_OperarioR" int NOT NULL,
    "Respuesta" varchar(500) NOT NULL,
    "HayRespuesta" smallint,
    "Id_OperarioM" int NOT NULL,
    "Id_OperarioC" int NOT NULL,
    "FaltaRecambio" smallint,
    "FechaVerificado" datetime,
    "FechaCreacion" datetime NOT NULL,
    PRIMARY KEY(id_his_mantenimiento)
);
    id_his_maquina int IDENTITY(1,1) NOT NULL,
    cod_maquina nvarchar(50) NOT NULL,
    cod_of nvarchar(50) NOT NULL,
    cod_fase nvarchar(50) NOT NULL,
    "Unidades_ok" int NOT NULL,
    "Unidades_ok_enviado" int NOT NULL,
    "Unidades_nok" int NOT NULL,
    "Unidades_nok_enviado" int NOT NULL,
    PRIMARY KEY(id_his_maquina)
);
    id_his_mbl_log int IDENTITY(1,1) NOT NULL,
    desc_mbl_log nvarchar(max),
    fecha datetime NOT NULL,
    PRIMARY KEY(id_his_mbl_log)
);
    id_mbl_operacion int IDENTITY(1,1) NOT NULL,
    "ID_Operacion" int,
    "ID_Averia" int,
    "Codigo_Operacion" nvarchar(50),
    "Operacion" nvarchar(250),
    "ID_Equipo" int,
    "ID_Urgencia" int,
    "ID_Estado" int,
    "ID_Operario_Alta" int,
    "Fecha_Alta" nvarchar(50),
    "Observaciones" nvarchar(500),
    "ID_Tipo_Operacion" int,
    "ID_Causa_Averia" int,
    "AndroidID" nvarchar(50),
    "FechaEnvio" nvarchar(50),
    "Importado" tinyint NOT NULL,
    "Fecha_Cierre" nvarchar(50),
    "Observaciones_Accion" nvarchar(500),
    "Firma" text,
    "Imagen" text,
    "FirmaByte" varbinary(max),
    "ImagenByte" varbinary(max),
    PRIMARY KEY(id_mbl_operacion)
);
    id_his_mbl_punto int IDENTITY(1,1) NOT NULL,
    "ID_Operacion" int,
    "Entrar_Dato" int,
    "Valor" nvarchar(20),
    "OpcionSel" nvarchar(50),
    "ID_Punto" int,
    "ID_Operacion_Punto" int,
    "Punto" nvarchar(100),
    "AndroidID" nvarchar(50),
    "FechaEnvio" nvarchar(50),
    "Importado" tinyint NOT NULL,
    PRIMARY KEY(id_his_mbl_punto)
);
    id_mbl_ot int IDENTITY(1,1) NOT NULL,
    id_his_mnt_operacion int,
    fechafin nvarchar(50),
    fechainicio nvarchar(50),
    id_operario int,
    "FechaEnvio" nvarchar(50),
    "AndroidID" nvarchar(50),
    "Importado" tinyint NOT NULL,
    PRIMARY KEY(id_mbl_ot)
);
    "Id_his_mensaje_operario" int IDENTITY(1,1) NOT NULL,
    "Id_mensaje" int NOT NULL,
    "Id_operario" int NOT NULL,
    "Fecha_ack" datetime,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_his_mensaje_operario),
    CONSTRAINT FK_his_mensaje_operario_cfg_mensaje FOREIGN key("Id_mensaje") REFERENCES cfg_mensaje("Id_mensaje"),
    CONSTRAINT FK_his_mensaje_operario_cfg_operario FOREIGN key("Id_operario") REFERENCES cfg_operario("Id_operario")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_his_mnt_albaran" int IDENTITY(1,1) NOT NULL,
    "Cod_mnt_albaran" nvarchar(100) NOT NULL,
    "Desc_mnt_albaran" nvarchar(100),
    "Observaciones" nvarchar(max),
    "Fecha_generacion" datetime NOT NULL,
    "Fecha_entrada" datetime,
    "Transporte" nvarchar(200),
    "Id_mnt_proveedor" int NOT NULL,
    "Id_usuario" int NOT NULL,
    "Coste_transporte" decimal(18,2) NOT NULL,
    "Cod_mnt_operacion" nvarchar(25),
    "Finalizado" tinyint NOT NULL,
    "Num_Recepcion" bigint NOT NULL,
    "TipoAlbaran" tinyint NOT NULL,
    "Id_mnt_formatoalbaran" int NOT NULL,
    "Id_mnt_almacen" int NOT NULL,
    "Id_mnt_cuentacoste" int,
    "Id_mnt_tipocoste" int,
    "Id_mnt_centroservicio" int,
    "Portes" decimal(18,2) NOT NULL,
    "Id_mnt_elemento" int,
    "Id_his_mnt_pedido" int,
    "Iva_transporte" decimal(18,2) NOT NULL,
    "Id_divisa" int,
    "Erp" tinyint NOT NULL,
    prc_descuento decimal(18,2) NOT NULL,
    "Erp_num_factura" nvarchar(50),
    "Erp_fecha_factura" datetime,
    PRIMARY KEY(Id_his_mnt_albaran)
);
EXEC sp_addextendedproperty
    "Id_his_mnt_albaranlinea" int IDENTITY(1,1) NOT NULL,
    "Id_his_mnt_albaran" int NOT NULL,
    "Id_his_mnt_pedidolinea" int NOT NULL,
    "Id_his_mnt_almacen" int,
    "Unidades_OK" decimal(20,4) NOT NULL,
    "Unidades_NOK" decimal(20,4) NOT NULL,
    "Coste" decimal(20,4) NOT NULL,
    "Id_usuario" int NOT NULL,
    "ServicioExterno" tinyint NOT NULL,
    "Id_mnt_recambio" int,
    prc_descuento decimal(18,2) NOT NULL,
    ref_proveedor nvarchar(100),
    PRIMARY KEY(Id_his_mnt_albaranlinea),
    CONSTRAINT fk_his_mnt_albaranlinea_his_mnt_albaran FOREIGN key("Id_his_mnt_albaran") REFERENCES his_mnt_albaran("Id_his_mnt_albaran")
);
    "Id_his_mnt_almacen" int IDENTITY(1,1) NOT NULL,
    "Id_mnt_almacen" int NOT NULL,
    "Id_mnt_recambio" bigint NOT NULL,
    "Unidades" decimal(20,4) NOT NULL,
    "Unidades2" decimal(20,4) NOT NULL,
    "Unidades3" decimal(20,4) NOT NULL,
    "Tipo" nvarchar(1) NOT NULL,
    "DH" datetime NOT NULL,
    "DH_Caducidad" datetime NOT NULL,
    "Observaciones" nvarchar(500),
    "Id_operario" int NOT NULL,
    "Activo" smallint NOT NULL,
    "Lote" nvarchar(250),
    "Ubicacion" varchar(50) NOT NULL,
    "Estado" smallint NOT NULL,
    "Regularizado" smallint NOT NULL,
    "Pedido" nvarchar(50) NOT NULL,
    "Id_his_mnt_operacion" int,
    "Id_his_mnt_albaran" int,
    ack int NOT NULL,
    PRIMARY KEY(Id_his_mnt_almacen),
    CONSTRAINT FK_his_mnt_almacen_id_mnt_recambio FOREIGN key("Id_mnt_recambio") REFERENCES cfg_mnt_recambio("Id_mnt_recambio")
);
    id_his_mnt_elemento int IDENTITY(1,1) NOT NULL,
    id_mnt_elemento int NOT NULL,
    id_maquina int NOT NULL,
    fecha_ini datetime NOT NULL,
    fecha_fin datetime NOT NULL,
    unidades_ok bigint NOT NULL,
    unidades_nok bigint NOT NULL,
    id_producto int NOT NULL,
    id_his_fase int NOT NULL,
    PRIMARY KEY(id_his_mnt_elemento),
    CONSTRAINT FK_his_elemento_cfg_elemento FOREIGN key(id_mnt_elemento) REFERENCES cfg_mnt_elemento("Id_mnt_elemento"),
    CONSTRAINT FK_his_mnt_elemento_cfg_maquina FOREIGN key(id_maquina) REFERENCES cfg_maquina("Id_maquina")
);
    "Id_his_mnt_elementoestado" int IDENTITY(1,1) NOT NULL,
    "Id_mnt_elemento" int NOT NULL,
    "Id_mnt_estadoelemento" int NOT NULL,
    "Id_mnt_averia" int,
    "Id_mnt_averiacausa" int,
    "Id_mnt_averiaaccion" int,
    "Observaciones" nvarchar(500) NOT NULL,
    "Fecha" datetime NOT NULL,
    "Erp" tinyint NOT NULL,
    "Id_producto" int,
    "Id_operario" int NOT NULL,
    "Id_his_fase" int NOT NULL,
    PRIMARY KEY(Id_his_mnt_elementoestado),
    CONSTRAINT FK_his_mnt_elementoestado_cfg_mnt_elemento FOREIGN key("Id_mnt_elemento") REFERENCES cfg_mnt_elemento("Id_mnt_elemento"),
    CONSTRAINT FK_his_mnt_elementoestado_cfg_mnt_estadoelemento FOREIGN key("Id_mnt_estadoelemento") REFERENCES cfg_mnt_estadoelemento(id_mnt_estadoelemento),
    CONSTRAINT FK_his_mnt_elementoestado_cfg_mnt_averia FOREIGN key("Id_mnt_averia") REFERENCES cfg_mnt_averia(id_mnt_averia),
    CONSTRAINT FK_his_mnt_elementoestado_cfg_mnt_averiacausa FOREIGN key("Id_mnt_averiacausa") REFERENCES cfg_mnt_averiacausa(id_mnt_averiacausa),
    CONSTRAINT FK_his_mnt_elementoestado_cfg_mnt_averiaaccion FOREIGN key("Id_mnt_averiaaccion") REFERENCES cfg_mnt_averiaaccion(id_mnt_averiaaccion)
);
    "Id_his_mnt_elementoEvento" int IDENTITY(1,1) NOT NULL,
    "Desc_mnt_elementoEvento" varchar(50) NOT NULL,
    "Fecha_ini" datetime,
    "Fecha_fin" datetime,
    "Id_mnt_elemento" int NOT NULL,
    "Observaciones" varchar(max),
    "HorasFuncionamiento" int,
    PRIMARY KEY(Id_his_mnt_elementoEvento)
);
    "Id_his_mnt_factura" int IDENTITY(1,1) NOT NULL,
    "Cod_mnt_factura" nvarchar(25) NOT NULL,
    "Desc_mnt_factura" nvarchar(50),
    "Observaciones" nvarchar(500),
    "Fecha_generacion" datetime NOT NULL,
    "Fecha_entrada" datetime,
    "Id_mnt_proveedor" int NOT NULL,
    "Id_usuario" int,
    "Finalizado" tinyint NOT NULL,
    "Escaner" nvarchar(25),
    PRIMARY KEY(Id_his_mnt_factura)
);
    "Id_his_mnt_factura_albaran" int IDENTITY(1,1) NOT NULL,
    "Id_his_mnt_factura" int NOT NULL,
    "Id_his_mnt_albaran" int NOT NULL,
    "Id_usuario" int NOT NULL,
    PRIMARY KEY(Id_his_mnt_factura_albaran)
);
    id_his_mnt_operacion int IDENTITY(1,1) NOT NULL,
    "Id_mnt_elemento" bigint,
    "Cod_mnt_operacion" varchar(25) NOT NULL,
    "Desc_mnt_operacion" varchar(400) NOT NULL,
    "NivelUrgencia" bigint NOT NULL,
    "Id_mnt_estadooperacion" int NOT NULL,
    "Id_UsuarioAlta" int NOT NULL,
    "FechaAlta" datetime NOT NULL,
    "FechaPrevision" datetime,
    "Observaciones" varchar(max),
    "DiasPeriod" bigint,
    "CiclosPeriod" bigint,
    "HorasPeriod" bigint,
    "FechaUltimo" datetime NOT NULL,
    "FechaProx" datetime,
    "CiclosUltimo" bigint NOT NULL,
    "CiclosProx" bigint NOT NULL,
    "HorasUltimo" bigint NOT NULL,
    "HorasProx" bigint NOT NULL,
    "CiclosActual" bigint NOT NULL,
    "HorasActual" bigint NOT NULL,
    "Id_mnt_tipooperacion" bigint NOT NULL,
    "Activo" smallint NOT NULL,
    "Id_mnt_proc" int NOT NULL,
    "Id_mnt_centroservicio" int NOT NULL,
    "Id_OperarioAlta" int NOT NULL,
    "Id_mnt_averia" int NOT NULL,
    "Id_mnt_averiacausa" int NOT NULL,
    "ObservacionesAccion" nvarchar(2000),
    "ContadorUltimo" decimal(18,2) NOT NULL,
    "ContadorActual" decimal(18,2) NOT NULL,
    "SegundosPlanning" bigint NOT NULL,
    "HorasUrgencia" int NOT NULL,
    "HorasCaducidad" int NOT NULL,
    "Id_mnt_tipocoste" int NOT NULL,
    "Id_mnt_proveedor" int,
    "FechaCaducado" datetime,
    "FechaCierre" datetime,
    "Id_UsuarioCierre" int NOT NULL,
    id_mnt_elemento_proc int NOT NULL,
    cod_autogeneracion nvarchar(50),
    "Color" int,
    "Id_mnt_contrato" int,
    "Cod_usuario_bloqueo" nvarchar(50),
    "Fecha_bloqueo" datetime,
    "AndroidCode" nvarchar(100),
    "ParoProduccion" tinyint NOT NULL,
    "lastUpdate" datetime NOT NULL,
    "ObservacionesMnt" nvarchar(max),
    PRIMARY KEY(id_his_mnt_operacion),
    CONSTRAINT FK_his_mnt_operacion_cfg_mnt_estadooperacion FOREIGN key("Id_mnt_estadooperacion") REFERENCES cfg_mnt_estadooperacion(id_mnt_estadooperacion),
    CONSTRAINT FK_his_mnt_operacion_cfg_mnt_tipooperacion FOREIGN key("Id_mnt_tipooperacion") REFERENCES cfg_mnt_tipooperacion("Id_mnt_tipooperacion")
);
EXEC sp_addextendedproperty
    id_mnt_operacion_imagen int IDENTITY(1,1) NOT NULL,
    id_his_mnt_operacion int NOT NULL,
    "Imagen" varbinary(max),
    "Firma" varbinary(max),
    "ImagenString" text,
    "FirmaString" text,
    PRIMARY KEY(id_mnt_operacion_imagen)
);
    id_his_mnt_operacion_punto int IDENTITY(1,1) NOT NULL,
    id_his_mnt_operacion bigint NOT NULL,
    id_mnt_punto int NOT NULL,
    "Valor" decimal(18,2) NOT NULL,
    "OpcionSel" int NOT NULL,
    "OpcionOk" tinyint NOT NULL,
    "Desc_mnt_punto" nvarchar(100),
    "TipoPunto" tinyint,
    "Fecha" datetime NOT NULL,
    PRIMARY KEY(id_his_mnt_operacion_punto),
    CONSTRAINT fk_id_his_mnt_operacion FOREIGN key(id_his_mnt_operacion) REFERENCES his_mnt_operacion(id_his_mnt_operacion)
);
    id_his_mnt_operacioncoste int IDENTITY(1,1) NOT NULL,
    id_his_mnt_operacion int NOT NULL,
    num_pedido nvarchar(50),
    id_mnt_proveedor int NOT NULL,
    "Concepto" nvarchar(255) NOT NULL,
    "Coste" decimal(9,2) NOT NULL,
    "Fecha" datetime NOT NULL,
    "Fecha_Alta" datetime NOT NULL,
    id_usuariocreador nchar(10),
    "Activo" tinyint NOT NULL,
    PRIMARY KEY(id_his_mnt_operacioncoste)
);
    id_his_mnt_pedido int IDENTITY(1,1) NOT NULL,
    fecha_generacion datetime NOT NULL,
    fecha_expedicion datetime,
    id_mnt_proveedor int NOT NULL,
    transporte nvarchar(200),
    cod_mnt_pedido bigint NOT NULL,
    id_usuario int NOT NULL,
    prc_iva decimal(18,2) NOT NULL,
    prc_descuento decimal(18,2) NOT NULL,
    "Observaciones" nvarchar(max),
    id_mnt_formapago int NOT NULL,
    portes tinyint NOT NULL,
    id_mnt_idcontable int NOT NULL,
    id_mnt_formatopedido int NOT NULL,
    id_usuario_planning_autorizar int NOT NULL,
    fecha_autorizado datetime,
    id_mnt_estadopedido int NOT NULL,
    id_usuario_aut int,
    fecha_cierre datetime,
    confirmado smallint NOT NULL,
    id_fabrica int NOT NULL,
    PRIMARY KEY(id_his_mnt_pedido)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_mnt_pedidolinea int IDENTITY(1,1) NOT NULL,
    id_his_mnt_pedido int NOT NULL,
    id_mnt_recambio bigint NOT NULL,
    unidades decimal(20,4) NOT NULL,
    fecha_entrega datetime NOT NULL,
    coste_teorico decimal(20,4) NOT NULL,
    id_mnt_almacen int NOT NULL,
    id_usuario int,
    autorizado tinyint NOT NULL,
    observaciones nvarchar(500),
    last_user int,
    last_date datetime,
    fecha_autorizado datetime,
    "Cod_mnt_operacion" varchar(25) NOT NULL,
    num_linea int NOT NULL,
    descuento decimal(18,2) NOT NULL,
    id_mnt_cuentacoste int,
    id_mnt_tipocoste int,
    "observacionesRecambio" nvarchar(500),
    "Desc_mnt_recambio" nvarchar(250),
    id_his_mnt_recambios int,
    "Unidades_XUD_Compra" decimal(20,4) NOT NULL,
    "Unidades_Compra" decimal(22,4) NOT NULL,
    "Id_mnt_Unidad_Compra" int NOT NULL,
    PRIMARY KEY(id_his_mnt_pedidolinea),
    CONSTRAINT FK_his_mnt_pedidolinea_his_mnt_pedido FOREIGN key(id_his_mnt_pedido) REFERENCES his_mnt_pedido(id_his_mnt_pedido),
    CONSTRAINT FK_his_mnt_pedidolinea_cfg_mnt_recambio FOREIGN key(id_mnt_recambio) REFERENCES cfg_mnt_recambio("Id_mnt_recambio"),
    CONSTRAINT FK_his_mnt_pedidolinea_cfg_mnt_unidades FOREIGN key("Id_mnt_Unidad_Compra") REFERENCES cfg_mnt_unidad("Id_mnt_Unidad")
);
    "Id_his_mnt_recambio" int IDENTITY(1,1) NOT NULL,
    "Id_mnt_recambio" bigint NOT NULL,
    "Id_his_mnt_operacion" bigint NOT NULL,
    "NumSerie" varchar(50),
    "Cantidad" bigint NOT NULL,
    "Fecha" datetime,
    "Observaciones" varchar(max),
    "Activo" smallint NOT NULL,
    "Id_his_mnt_albaranlinea" int NOT NULL,
    "Coste" decimal(18,2) NOT NULL,
    "Id_operario" int NOT NULL,
    "Id_mnt_almacen" int NOT NULL,
    "AlbaranOk" tinyint NOT NULL,
    PRIMARY KEY(Id_his_mnt_recambio)
);
    id_his_mnt_recambio_pm int IDENTITY(1,1) NOT NULL,
    "Fecha" datetime NOT NULL,
    "Num_Recepcion" bigint NOT NULL,
    "PMAnterior" decimal(20,4),
    "PMNuevo" decimal(20,4),
    "PUAnterior" decimal(20,4),
    "PUNuevo" decimal(20,4),
    id_mnt_recambio int NOT NULL,
    PRIMARY KEY(id_his_mnt_recambio_pm)
);
    "Id_his_mnt_recambios" int IDENTITY(1,1) NOT NULL,
    "Id_mnt_seccion" bigint NOT NULL,
    "Desc_recambio" varchar(200) NOT NULL,
    "Observaciones1" varchar(500) NOT NULL,
    "Fecha_pedido" datetime NOT NULL,
    "Prioridad" bigint NOT NULL,
    "Estado" bigint NOT NULL,
    "Operario" varchar(8) NOT NULL,
    "Unidades" bigint NOT NULL,
    "Cod_recambio" varchar(80) NOT NULL,
    "Arribada" smallint NOT NULL,
    "Muntada" smallint NOT NULL,
    "Demanada" smallint NOT NULL,
    "Observaciones2" varchar(500) NOT NULL,
    "Observaciones3" varchar(500) NOT NULL,
    "FilePath" varchar(500) NOT NULL,
    "Destino" varchar(50) NOT NULL,
    "NoConforme" smallint NOT NULL,
    "TipoSolicitud" smallint NOT NULL,
    PRIMARY KEY(Id_his_mnt_recambios),
    CONSTRAINT CK_his_mnt_recambios_unidades CHECK ([unidades]>=(1))
);
EXEC sp_addextendedproperty
    "Id_his_mnt_usuario" int IDENTITY(1,1) NOT NULL,
    "Id_usuario" bigint NOT NULL,
    "Id_his_mnt_operacion" bigint NOT NULL,
    "Fecha_ini" datetime,
    "Fecha_fin" datetime,
    "Activo" smallint NOT NULL,
    "PdsSimultaneas" smallint NOT NULL,
    "Coste" decimal(18,2) NOT NULL,
    "Id_operario" bigint NOT NULL,
    PRIMARY KEY(Id_his_mnt_usuario)
);
    "Id_His_objetivoOEE" int IDENTITY(1,1) NOT NULL,
    "Id_WorkGroup" int NOT NULL,
    "TimePeriod" varchar(25) NOT NULL,
    "ObjetivoOEE" decimal(18,2) NOT NULL,
    "Id_TipoWorkGroup" int NOT NULL,
    "Fecha_Ini" datetime,
    "Fecha_Fin" datetime,
    "ObjetivoOEE_Naranja" decimal(18,2) NOT NULL,
    "ObjetivoOEE_Verde" decimal(18,2) NOT NULL,
    PRIMARY KEY(Id_His_objetivoOEE)
);
    "Id_his_of" int IDENTITY(1,1) NOT NULL,
    "Id_producto" int NOT NULL,
    "Id_estadoof" int NOT NULL,
    "Cod_of" nvarchar(50) NOT NULL,
    "Desc_of" nvarchar(max) NOT NULL,
    "Fecha_ini" datetime NOT NULL,
    "Fecha_fin" datetime NOT NULL,
    "Fecha_entrega" datetime NOT NULL,
    "Unidades_planning" int NOT NULL,
    "Unidades_planning2" int NOT NULL,
    "Id_cliente" int NOT NULL,
    "Fecha_UltimaModificacion" datetime,
    "Fecha_creacion" datetime NOT NULL,
    "Html" nvarchar(1000) NOT NULL,
    "Activo" smallint NOT NULL,
    "Id_tipoof" int NOT NULL,
    "Id_his_proyecto" int,
    observaciones_of ntext,
    "AUTO_CODOF" tinyint NOT NULL,
    PRIMARY KEY(Id_his_of),
    CONSTRAINT FK_his_of_cfg_producto FOREIGN key("Id_producto") REFERENCES cfg_producto("Id_producto"),
    CONSTRAINT FK_his_of_cfg_estadoof FOREIGN key("Id_estadoof") REFERENCES cfg_estadoof("Id_estadoof"),
    CONSTRAINT FK_his_of_cfg_cliente FOREIGN key("Id_cliente") REFERENCES cfg_cliente("Id_cliente"),
    CONSTRAINT FK_his_of_cfg_tipoof FOREIGN key("Id_tipoof") REFERENCES cfg_tipoof("Id_tipoof")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_his_operario" int IDENTITY(1,1) NOT NULL,
    "Id_maquina" int NOT NULL,
    "Fecha_ini" datetime,
    "Fecha_fin" datetime,
    "Num_operario_1" int NOT NULL,
    "Num_operario_2" int NOT NULL,
    "Activo" int NOT NULL,
    "Id_operario_new" int NOT NULL,
    "Id_operario_mod" int NOT NULL,
    "Dia_productivo" datetime NOT NULL,
    PRIMARY KEY(Id_his_operario)
);
    id_his_operarioof int IDENTITY(1,1) NOT NULL,
    dia_productivo date NOT NULL,
    id_turno int NOT NULL,
    id_his_of int NOT NULL,
    fecha_envio datetime NOT NULL,
    PRIMARY KEY(id_his_operarioof)
);
    "Id_his_paro_obs" int IDENTITY(1,1) NOT NULL,
    "His_paro" int NOT NULL,
    "Observaciones" nvarchar(max),
    "Id_operario" int,
    "Id_tipoobservaciones" int,
    "Id_his_paro_obs_padre" int,
    "Fecha" datetime NOT NULL,
    "Enviado" tinyint NOT NULL,
    PRIMARY KEY(Id_his_paro_obs)
);
    id_his_pesada int IDENTITY(1,1) NOT NULL,
    id_maquina int NOT NULL,
    fecha datetime NOT NULL,
    "Peso" decimal(20,4) NOT NULL,
    "TS2" decimal(20,4) NOT NULL,
    "TS1" decimal(20,4) NOT NULL,
    "TI1" decimal(20,4) NOT NULL,
    "TI2" decimal(20,4) NOT NULL,
    "Peso_Nominal" decimal(20,4) NOT NULL,
    cod_producto nvarchar(25) NOT NULL,
    id_producto int NOT NULL,
    "Aceptado" tinyint NOT NULL,
    "Cod_Rechazo" nvarchar(25) NOT NULL,
    "ContadorPesada" int NOT NULL,
    "Dia_productivo" datetime,
    "Id_his_fase" int NOT NULL,
    PRIMARY KEY(id_his_pesada)
);
    id_his_estadopeticion int IDENTITY(1,1) NOT NULL,
    id_his_peticion int NOT NULL,
    id_estadopeticion int NOT NULL,
    fecha_inicio datetime NOT NULL,
    fecha_fin datetime,
    id_operario int NOT NULL,
    id_ubicacion int NOT NULL,
    PRIMARY KEY(id_his_estadopeticion),
    CONSTRAINT FK_his_pet_estadopeticion_his_pet_peticion FOREIGN key(id_his_peticion) REFERENCES his_pet_peticion(id_his_peticion),
    CONSTRAINT FK_his_pet_estadopeticion_cfg_pet_estadopeticion FOREIGN key(id_estadopeticion) REFERENCES cfg_pet_estadopeticion(id_estadopeticion)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_peticion int IDENTITY(1,1) NOT NULL,
    cod_his_peticion nvarchar(25) NOT NULL,
    desc_his_peticion nvarchar(50),
    id_tipopeticion int NOT NULL,
    cantidad_inicial decimal(18,3) NOT NULL,
    cantidad_actual decimal(18,3) NOT NULL,
    id_estadopeticion int NOT NULL,
    id_ubicacion int NOT NULL,
    fecha_alta datetime NOT NULL,
    fecha_cierre datetime,
    fecha_ultimamodificacion datetime,
    prioridad tinyint NOT NULL,
    observaciones nvarchar(400),
    erp tinyint NOT NULL,
    activo tinyint NOT NULL,
    id_operario_alta int NOT NULL,
    id_operario_cierre int,
    id_his_peticion_origen int,
    id_entidad int NOT NULL,
    id_activo int NOT NULL,
    id_producto int NOT NULL,
    id_mnt_recambio int NOT NULL,
    id_utillaje int NOT NULL,
    his_peticion int,
    PRIMARY KEY(id_his_peticion),
    CONSTRAINT FK_his_pet_peticion_cfg_pet_tipopeticion FOREIGN key(id_tipopeticion) REFERENCES cfg_pet_tipopeticion(id_tipopeticion),
    CONSTRAINT FK_his_pet_peticion_cfg_pet_estadopeticion FOREIGN key(id_estadopeticion) REFERENCES cfg_pet_estadopeticion(id_estadopeticion),
    CONSTRAINT FK_his_pet_peticion_cfg_pet_ubicacion FOREIGN key(id_ubicacion) REFERENCES cfg_pet_ubicacion(id_ubicacion)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_his_planAccion" int IDENTITY(1,1) NOT NULL,
    "desc_his_planAccion" nvarchar(max),
    cod_tabla nvarchar(200) NOT NULL,
    id_tabla int NOT NULL,
    orden int,
    "id_planAccion" int NOT NULL,
    PRIMARY KEY(id_his_planAccion)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_his_planAccionTarea" int IDENTITY(1,1) NOT NULL,
    "id_his_planAccion" int NOT NULL,
    "desc_his_planAccionTarea" nvarchar(max),
    "id_operarioCreacion" int NOT NULL,
    fecha_creacion datetime NOT NULL,
    fecha_prevista datetime,
    "id_operarioPrevisto" int NOT NULL,
    fecha_finalizada datetime,
    "id_operarioFinalizada" int,
    "comentarioFinalizada" nvarchar(200),
    finalizada smallint NOT NULL,
    "id_planAccionTarea" int,
    efectividad int,
    cantidad int NOT NULL,
    "cantidadNOK" int NOT NULL,
    "pathImagen" nvarchar(250),
    "pathDocumento" nvarchar(250),
    id_his_cal_plancontrol int,
    PRIMARY KEY(id_his_planAccionTarea),
    CONSTRAINT FK_his_planAccionTarea_his_planAccion FOREIGN key("id_his_planAccion") REFERENCES "his_planAccion"("id_his_planAccion")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_planning int IDENTITY(1,1) NOT NULL,
    id_escenario int NOT NULL,
    id_clave int NOT NULL,
    id_clave_padre int NOT NULL,
    id_estado int NOT NULL,
    id_recurso int NOT NULL,
    seg_planning_prep bigint NOT NULL,
    seg_planning bigint NOT NULL,
    rendimiento decimal(8,2) NOT NULL,
    prc_cumplimiento decimal(8,2) NOT NULL,
    fecha_ini datetime NOT NULL,
    fecha_fin datetime NOT NULL,
    bloqueada tinyint NOT NULL,
    estado tinyint NOT NULL,
    color int NOT NULL,
    prioridad int NOT NULL,
    info_adicional nvarchar(50),
    PRIMARY KEY(id_his_planning),
    CONSTRAINT FK_his_planning_cfg_escenario FOREIGN key(id_escenario) REFERENCES cfg_escenario("Id_escenario")
);
    "Id_his_prod" int IDENTITY(1,1) NOT NULL,
    "Id_maquina" int NOT NULL,
    "Activo" smallint NOT NULL,
    "Dia_productivo" datetime NOT NULL,
    "Id_turno" int NOT NULL,
    "His_maquina" int NOT NULL,
    "Id_his_fase" int NOT NULL,
    "Id_actividad" int NOT NULL,
    "Id_modofuncionamientofase" int NOT NULL,
    "Fecha_ini" datetime,
    "Fecha_fin" datetime,
    "Rendimientonominal1" decimal(8,2) NOT NULL,
    "Rendimientonominal2" decimal(8,2) NOT NULL,
    "Unidades_ok" int NOT NULL,
    "Unidades_nok" int NOT NULL,
    "Unidades_cal" int NOT NULL,
    "Unidades_repro" int NOT NULL,
    "Unidades_ok2" int NOT NULL,
    "Unidades_nok2" int NOT NULL,
    "Unidades_cal2" int NOT NULL,
    "Unidades_repro2" int NOT NULL,
    "Unidades_ok2_mult" int NOT NULL,
    "Unidades1" int NOT NULL,
    "Unidades2" int NOT NULL,
    "Unidades3" int NOT NULL,
    "Unidades4" int NOT NULL,
    "Unidades5" int NOT NULL,
    "Unidades6" int NOT NULL,
    "Unidades7" int NOT NULL,
    "Unidades8" int NOT NULL,
    "Unidades9" int NOT NULL,
    "Unidades10" int NOT NULL,
    "Id_operario" int NOT NULL,
    "Observaciones" nvarchar(100),
    "Erp" int NOT NULL,
    "Enviado" tinyint NOT NULL,
    "Last_reg_user" nvarchar(100),
    "Last_reg_date" datetime,
    "Factor_multiplicativo" decimal(8,2) NOT NULL,
    "PP" int NOT NULL,
    "PNP" int NOT NULL,
    "NAF" int NOT NULL,
    "PCALIDAD" int NOT NULL,
    "PPERF" int NOT NULL,
    "OPER" int NOT NULL,
    "Id_equipooperario" int NOT NULL,
    "UnidadesFinal" int NOT NULL,
    "OperFinal" int NOT NULL,
    "OperDAK" int NOT NULL,
    "NumOfs" int NOT NULL,
    "His_parte_prod" int NOT NULL,
    "SegCicloNominal" int NOT NULL,
    "NumOper" decimal(10,6),
    PRIMARY KEY(Id_his_prod),
    CONSTRAINT FK_his_prod_cfg_maquina FOREIGN key("Id_maquina") REFERENCES cfg_maquina("Id_maquina"),
    CONSTRAINT FK_his_prod_cfg_turno FOREIGN key("Id_turno") REFERENCES cfg_turno("Id_turno"),
    CONSTRAINT FK_his_prod_his_fase FOREIGN key("Id_his_fase") REFERENCES his_fase("Id_his_fase"),
    CONSTRAINT FK_his_prod_cfg_actividad FOREIGN key("Id_actividad") REFERENCES cfg_actividad("Id_actividad"),
    CONSTRAINT FK_his_prod_cfg_operario FOREIGN key("Id_operario") REFERENCES cfg_operario("Id_operario"),
    CONSTRAINT FK_his_prod_cfg_equipooperario FOREIGN key("Id_equipooperario") REFERENCES cfg_equipooperario("Id_EquipoOperario")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_his_prod_defecto" int IDENTITY(1,1) NOT NULL,
    "Id_his_prod" int NOT NULL,
    "Id_defecto" int NOT NULL,
    "His_defecto" int NOT NULL,
    "Unidades" int NOT NULL,
    "Activo" smallint NOT NULL,
    "Id_operario" int NOT NULL,
    last_reg_user nvarchar(100),
    last_reg_date datetime,
    "Id_his_fase" int NOT NULL,
    scrap smallint NOT NULL,
    id_utillaje int NOT NULL,
    "posicionUtillaje" int NOT NULL,
    PRIMARY KEY(Id_his_prod_defecto),
    CONSTRAINT FK_his_prod_defecto_his_prod FOREIGN key("Id_his_prod") REFERENCES his_prod("Id_his_prod"),
    CONSTRAINT FK_his_prod_defecto_cfg_defecto FOREIGN key("Id_defecto") REFERENCES cfg_defecto("Id_defecto")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_prod_defecto_visual int IDENTITY(1,1) NOT NULL,
    id_his_prod_defecto int NOT NULL,
    prc_pos_x decimal(18,3) NOT NULL,
    prc_pos_y decimal(18,3) NOT NULL,
    prc_square_size decimal(18,3) NOT NULL,
    PRIMARY KEY(id_his_prod_defecto_visual),
    CONSTRAINT FK_his_prod_defecto_his_prod_defecto_visual FOREIGN key(id_his_prod_defecto) REFERENCES his_prod_defecto("Id_his_prod_defecto")
);
    "Id_his_prod_lote" int IDENTITY(1,1) NOT NULL,
    "Id_his_prod" int NOT NULL,
    "Id_his_lote" int NOT NULL,
    "Modo" smallint NOT NULL,
    "His_lote" int NOT NULL,
    "Unidades_ok" int NOT NULL,
    "Unidades_nok" int NOT NULL,
    "Unidades_ok2_mult" int NOT NULL,
    "Id_paro" int NOT NULL,
    "TipoUnidades" int NOT NULL,
    "Activo" smallint NOT NULL,
    last_reg_user nvarchar(100),
    last_reg_date datetime,
    PRIMARY KEY(Id_his_prod_lote),
    CONSTRAINT FK_his_prod_lote_his_prod FOREIGN key("Id_his_prod") REFERENCES his_prod("Id_his_prod"),
    CONSTRAINT FK_his_prod_lote_his_lote FOREIGN key("Id_his_lote") REFERENCES his_lote("Id_his_lote")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_prod_modif_rend int IDENTITY(1,1) NOT NULL,
    "Id_his_fase" int NOT NULL,
    id_maquina int NOT NULL,
    "Rendimientonominal_new" decimal(8,2) NOT NULL,
    "Rendimientonominal_old" decimal(8,2) NOT NULL,
    "Id_operario" int NOT NULL,
    "Id_usuario" int NOT NULL,
    "Fecha" datetime NOT NULL
);
    "Id_his_prod_of" int IDENTITY(1,1) NOT NULL,
    "Id_his_fase" int NOT NULL,
    "Id_his_prod" int NOT NULL,
    "Unidades_ok" int NOT NULL,
    "Unidades_nok" int NOT NULL,
    "Unidades_repro" int NOT NULL,
    "Unidades_cal" int NOT NULL,
    "Unidades_ok2" int NOT NULL,
    "Unidades_nok2" int NOT NULL,
    "Unidades_repro2" int NOT NULL,
    "Unidades_cal2" int NOT NULL,
    "Rendimientonominal1" decimal(10,2) NOT NULL,
    "Rendimientonominal2" decimal(10,2) NOT NULL,
    "Activo" smallint NOT NULL,
    "Factor_multiplicativo" int NOT NULL,
    "SegCicloNominal" int NOT NULL,
    "ProduccionNokFinal" decimal(18,4) NOT NULL,
    "ProduccionFinal" decimal(18,4) NOT NULL,
    PRIMARY KEY(Id_his_prod_of),
    CONSTRAINT FK_his_prod_of_his_fase FOREIGN key("Id_his_fase") REFERENCES his_fase("Id_his_fase"),
    CONSTRAINT FK_his_prod_of_his_prod FOREIGN key("Id_his_prod") REFERENCES his_prod("Id_his_prod")
);
EXEC sp_addextendedproperty
    "Id_his_prod_operario" int IDENTITY(1,1) NOT NULL,
    "Id_his_prod" int NOT NULL,
    "Id_operario" int NOT NULL,
    "His_operario" int NOT NULL,
    "Id_tipooperario" int NOT NULL,
    "MaquinasSimultaneas" smallint NOT NULL,
    "Id_actividadoperario" int NOT NULL,
    "Activo" smallint NOT NULL,
    last_reg_user nvarchar(100),
    last_reg_date datetime,
    "Erp" int NOT NULL,
    "Id_peticionexterna" smallint NOT NULL,
    "Id_peticionentradaexterna" tinyint NOT NULL,
    "Id_peticionsalidaexterna" tinyint NOT NULL,
    PRIMARY KEY(Id_his_prod_operario),
    CONSTRAINT FK_his_prod_operario_his_prod FOREIGN key("Id_his_prod") REFERENCES his_prod("Id_his_prod"),
    CONSTRAINT FK_his_prod_operario_cfg_operario FOREIGN key("Id_operario") REFERENCES cfg_operario("Id_operario"),
    CONSTRAINT FK_his_prod_operario_cfg_tipooperario FOREIGN key("Id_tipooperario") REFERENCES cfg_tipooperario("Id_tipooperario"),
    CONSTRAINT FK_his_prod_operario_cfg_actividadoperario FOREIGN key("Id_actividadoperario") REFERENCES cfg_actividadoperario("Id_actividadoperario")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_his_prod_paro" int IDENTITY(1,1) NOT NULL,
    "Id_his_prod" int NOT NULL,
    "Id_paro" int NOT NULL,
    "His_paro" int NOT NULL,
    "Fecha_ini" datetime,
    "Fecha_fin" datetime,
    "Seg_paro_max" int NOT NULL,
    "Seg_paro_nominal" int NOT NULL,
    "Activo" smallint NOT NULL,
    last_reg_user nvarchar(100),
    last_reg_date datetime,
    "Id_operario" int NOT NULL,
    "Fecha_operario" datetime,
    PRIMARY KEY(Id_his_prod_paro),
    CONSTRAINT FK_his_prod_paro_his_prod FOREIGN key("Id_his_prod") REFERENCES his_prod("Id_his_prod"),
    CONSTRAINT FK_his_prod_paro_cfg_paro FOREIGN key("Id_paro") REFERENCES cfg_paro("Id_paro")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_prod_reportemanual int IDENTITY(1,1) NOT NULL,
    id_his_prod int NOT NULL,
    id_operario int NOT NULL,
    unidades int NOT NULL,
    fecha datetime NOT NULL,
    tipounidad nvarchar(50) NOT NULL,
    id_his_fase int NOT NULL,
    fecha_creacion datetime,
    "Last_reg_user" nvarchar(100),
    "Last_reg_date" datetime,
    PRIMARY KEY(id_his_prod_reportemanual),
    CONSTRAINT FK_his_prod_reportesmanuales_his_prod FOREIGN key(id_his_prod) REFERENCES his_prod("Id_his_prod")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_his_producciones int IDENTITY(1,1) NOT NULL,
    dia_productivo varchar(25) NOT NULL,
    id_his_fase int NOT NULL,
    id_maquina int NOT NULL,
    unidades_ok int,
    unidades_nok int,
    PRIMARY KEY(id_his_producciones)
);
    "Id_his_proyecto" int IDENTITY(1,1) NOT NULL,
    "Cod_proyecto" nvarchar(25),
    "Desc_proyecto" nvarchar(50),
    "Fecha_Entrega" datetime,
    "Fecha_Entrega_Real" datetime,
    "Id_cliente" int,
    "Pedido" varchar(50),
    "TiempoConcedidoH" int NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_his_proyecto),
    CONSTRAINT FK_his_proyecto_cfg_cliente FOREIGN key("Id_cliente") REFERENCES cfg_cliente("Id_cliente")
);
    "Id_his_rrhh_contrato" int IDENTITY(1,1) NOT NULL,
    "Id_operario" int NOT NULL,
    "NIF" varchar(14),
    "Fecha_alta" datetime NOT NULL,
    "Fecha_vencimento" datetime,
    "Fecha_baja" datetime,
    "Id_rrhh_contrato_motivo_baja" int,
    "Id_rrhh_contrato_tipo" int,
    "Id_rrhh_contrato_tipo_coste" int,
    "Id_rrhh_contrato_categoria" int,
    "Id_rrhh_departamento" int,
    "Id_rrhh_ett" int,
    "Comentarios" varchar(4000),
    "Fecha_valoracion" datetime,
    "Vencimento_valoracion" datetime,
    "N_valoracion" smallint NOT NULL,
    PRIMARY KEY(Id_his_rrhh_contrato),
    CONSTRAINT FK_his_rrhh_contrato_cfg_operario FOREIGN key("Id_operario") REFERENCES cfg_operario("Id_operario"),
    CONSTRAINT FK_his_rrhh_contrato_cfg_rrhh_contrato_motivo_baja FOREIGN key("Id_rrhh_contrato_motivo_baja") REFERENCES cfg_rrhh_contrato_motivo_baja("Id_rrhh_contrato_motivo_baja"),
    CONSTRAINT FK_his_rrhh_contrato_cfg_rrhh_contrato_tipo FOREIGN key("Id_rrhh_contrato_tipo") REFERENCES cfg_rrhh_contrato_tipo("Id_rrhh_contrato_tipo"),
    CONSTRAINT FK_his_rrhh_contrato_cfg_rrhh_contrato_tipo_coste FOREIGN key("Id_rrhh_contrato_tipo_coste") REFERENCES cfg_rrhh_contrato_tipo_coste("Id_rrhh_contrato_tipo_coste"),
    CONSTRAINT FK_his_rrhh_contrato_cfg_rrhh_contrato_categoria FOREIGN key("Id_rrhh_contrato_categoria") REFERENCES cfg_rrhh_contrato_categoria("Id_rrhh_contrato_categoria"),
    CONSTRAINT FK_his_rrhh_contrato_cfg_rrhh_departamento FOREIGN key("Id_rrhh_departamento") REFERENCES cfg_rrhh_departamento("Id_rrhh_departamento"),
    CONSTRAINT FK_his_rrhh_contrato_cfg_rrhh_ett FOREIGN key("Id_rrhh_ett") REFERENCES cfg_rrhh_ett("Id_rrhh_ett")
);
    "Id_his_rrhh_formacion" int IDENTITY(1,1) NOT NULL,
    "Id_operario" int NOT NULL,
    "NIF" varchar(10),
    "Id_rrhh_titulo" int NOT NULL,
    "Id_rrhh_titulo_detalle" int,
    "Centro_cursado" varchar(100),
    "Formacion_adicional" varchar(4000),
    PRIMARY KEY(Id_his_rrhh_formacion),
    CONSTRAINT FK_his_rrhh_formacion_cfg_operario FOREIGN key("Id_operario") REFERENCES cfg_operario("Id_operario"),
    CONSTRAINT FK_his_rrhh_formacion_cfg_rrhh_titulo FOREIGN key("Id_rrhh_titulo") REFERENCES cfg_rrhh_titulo("Id_rrhh_titulo"),
    CONSTRAINT FK_his_rrhh_formacion_cfg_rrhh_titulo_detalle FOREIGN key("Id_rrhh_titulo_detalle") REFERENCES cfg_rrhh_titulo_detalle("Id_rrhh_titulo_detalle")
);
    "Id_his_rrhh_formacion_interna" int IDENTITY(1,1) NOT NULL,
    "Id_operario" int NOT NULL,
    "NIF" varchar(10),
    "Desc_rrhh_titulo_curso" varchar(100),
    "Fecha_ini" datetime,
    "Fecha_fin" datetime,
    "Duracion" smallint,
    "Comentarios" varchar(4000),
    "Coste" smallint,
    "Centro_Formativo" varchar(50),
    PRIMARY KEY(Id_his_rrhh_formacion_interna),
    CONSTRAINT FK_his_rrhh_formacion_interna_cfg_operario FOREIGN key("Id_operario") REFERENCES cfg_operario("Id_operario")
);
    "Id_his_rrhh_it" int IDENTITY(1,1) NOT NULL,
    "Id_operario" int NOT NULL,
    "NIF" varchar(10),
    "Fecha_alta" datetime NOT NULL,
    "Fecha_baja" datetime NOT NULL,
    "Id_rrhh_it_tipo_baja" int,
    "Desc_rrhh_it_tipo_baja" varchar(100),
    PRIMARY KEY(Id_his_rrhh_it),
    CONSTRAINT FK_his_rrhh_it_cfg_operario FOREIGN key("Id_operario") REFERENCES cfg_operario("Id_operario"),
    CONSTRAINT FK_his_rrhh_it_cfg_rrhh_it_tipo_baja FOREIGN key("Id_rrhh_it_tipo_baja") REFERENCES cfg_rrhh_it_tipo_baja("Id_rrhh_it_tipo_baja")
);
    "Id_his_rrhh_marcaje" int IDENTITY(1,1) NOT NULL,
    "Id_rrhh_marcaje" int,
    "Id_operario" int,
    "Fecha" datetime,
    "Terminal" int,
    "Tipo" varchar(1),
    PRIMARY KEY(Id_his_rrhh_marcaje)
);
    id_his_seq_criterio int IDENTITY(1,1) NOT NULL,
    desc_his_seq_criterio nvarchar(20) NOT NULL,
    id_seq_criterio int NOT NULL,
    tipo nvarchar(20) NOT NULL,
    orden int NOT NULL,
    PRIMARY KEY(id_his_seq_criterio),
    CONSTRAINT FK_his_seq_criterio_cfg_seq_criterio FOREIGN key(id_seq_criterio) REFERENCES cfg_seq_criterio(id_seq_criterio)
);
    "id_server_projectVersion" int IDENTITY(1,1) NOT NULL,
    id_server int,
    "ProjectVersion" int,
    fecha datetime,
    cod_usuario nvarchar(50),
    comments nvarchar(250),
    "ShortLog" nvarchar(max),
    "LongLog" nvarchar(max),
    PRIMARY KEY(id_server_projectVersion)
);
    "Id_his_syncro" int IDENTITY(1,1) NOT NULL,
    "Cod_his_syncro" nvarchar(50),
    "Desc_his_syncro" nvarchar(250),
    "Id_usuario" int,
    "Id_Servidor" int,
    "ProjectVersion" int,
    "Cod_PC" nvarchar(50),
    "DH" datetime NOT NULL,
    PRIMARY KEY(Id_his_syncro)
);
    "Id_his_syncroObjeto" int IDENTITY(1,1) NOT NULL,
    "Id_his_syncro" int NOT NULL,
    "Tipo" nvarchar(50),
    "Id_syncroObjeto" int NOT NULL,
    "Cod_syncroObjeto" nvarchar(50),
    "Fecha_modficacion_origen" datetime,
    "Fecha_modficacion_destino" datetime,
    syncronization_result nvarchar(250),
    "Desc_syncroObjeto" nvarchar(100),
    "ScriptExecuted" tinyint NOT NULL,
    "Execution_result" nvarchar(max),
    activo tinyint NOT NULL,
    PRIMARY KEY(Id_his_syncroObjeto)
);
    id_his_trazabilidad int IDENTITY(1,1) NOT NULL,
    "Fecha_ini" datetime,
    "Fecha_fin" datetime,
    id_producto_final int NOT NULL,
    id_maquina int NOT NULL,
    id_producto int NOT NULL,
    id_producto_alt int NOT NULL,
    id_producto_new int NOT NULL,
    "Lote" nvarchar(250),
    "Estado" int NOT NULL,
    cantidad decimal(18,3) NOT NULL,
    cantidad2 decimal(18,3),
    id_operario1 int NOT NULL,
    id_operario2 int NOT NULL,
    id_operario_new int NOT NULL,
    id_operario_mod int,
    "Activo" int NOT NULL,
    "Acu_unidades_ini" int NOT NULL,
    "Acu_unidades_fin" int NOT NULL,
    id_his_lote int NOT NULL,
    id_his_fase int NOT NULL,
    "Erp" int NOT NULL,
    ack smallint NOT NULL,
    "Dia_productivo" datetime,
    id_turno int NOT NULL,
    his_trazabilidad int NOT NULL,
    "EntradaSalida" tinyint NOT NULL,
    "StorageUnit" nvarchar(100),
    "IdPalet" nvarchar(100),
    "NumCajas" int,
    "IdContador" int,
    "Operacion" nvarchar(255),
    "EAN" varchar(max),
    "Manual" tinyint,
    "Imprimido" tinyint,
    unidades int NOT NULL,
    unidades2 int NOT NULL,
    "Acu_unidades_ini1" int NOT NULL,
    "Acu_unidades_ini2" int NOT NULL,
    "Acu_unidades_ini3" int NOT NULL,
    "Acu_unidades_ini4" int NOT NULL,
    "Acu_unidades_ini5" int NOT NULL,
    "Acu_unidades_fin1" int NOT NULL,
    "Acu_unidades_fin2" int NOT NULL,
    "Acu_unidades_fin3" int NOT NULL,
    "Acu_unidades_fin4" int NOT NULL,
    "Acu_unidades_fin5" int NOT NULL,
    "Ubicacion" nvarchar(250),
    "Peso" decimal(18,4),
    "SSCC" nvarchar(50),
    id_operario_ini int NOT NULL,
    "Next_id_his_Fase" int NOT NULL,
    "Unidades_ini" decimal(18,3) NOT NULL,
    id_his_formula int NOT NULL,
    "id_his_formulaPaso" int NOT NULL,
    "UnidadesParalela" decimal(18,4),
    "Id_defecto" int,
    "id_his_trazabilidadContenedor" bigint NOT NULL,
    "id_tipotrazabilidadEntradaUsed" int NOT NULL,
    "id_tipotrazabilidadSalidaUsed" int NOT NULL,
    "PesoTara" decimal(18,4),
    "id_trazabilidadDefecto" int,
    "PesoNeto" decimal(19,4),
    PRIMARY KEY(id_his_trazabilidad),
    CONSTRAINT FK_his_trazabilidad_his_trazabilidadContenedor FOREIGN key("id_his_trazabilidadContenedor") REFERENCES "his_trazabilidadContenedor"("id_his_trazabilidadContenedor"),
    CONSTRAINT FK_his_trazabilidad_cfg_trazabilidadDefecto FOREIGN key("id_trazabilidadDefecto") REFERENCES "cfg_trazabilidadDefecto"("id_trazabilidadDefecto")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_his_trazabilidadContenedor" int IDENTITY(1,1) NOT NULL,
    "cod_his_trazabilidadContenedor" nvarchar(50) NOT NULL,
    "desc_his_trazabilidadContenedor" nvarchar(250),
    "Unidades" decimal(18,4) NOT NULL,
    "Peso" decimal(18,4) NOT NULL,
    "UnidadesParalela" decimal(18,4) NOT NULL,
    "NumBultos" decimal(18,4) NOT NULL,
    "SSCC" nvarchar(50),
    "UnidadesTeo" decimal(18,3),
    "UnidadesParalelaTeo" decimal(18,3),
    "PesoTeo" decimal(18,4),
    "NumBultosTeo" decimal(18,4),
    "Ubicacion" nvarchar(250),
    "StorageUnit" nvarchar(100),
    "Erp" int NOT NULL,
    "Activo" tinyint NOT NULL,
    "id_tipotrazabilidadContenedorUsed" tinyint NOT NULL,
    PRIMARY KEY(id_his_trazabilidadContenedor)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_his_trazabilidadContenedor_maquina" int IDENTITY(1,1) NOT NULL,
    "id_his_trazabilidadContenedor" bigint NOT NULL,
    id_maquina int NOT NULL,
    id_his_fase bigint NOT NULL,
    id_producto int NOT NULL,
    estado tinyint NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_his_trazabilidadContenedor_maquina),
    CONSTRAINT FK_his_trazabilidadContenedor_maquina_his_trazabilidadContenedor FOREIGN key("id_his_trazabilidadContenedor") REFERENCES "his_trazabilidadContenedor"("id_his_trazabilidadContenedor"),
    CONSTRAINT FK_his_trazabilidadContenedor_maquina_cfg_maquina FOREIGN key(id_maquina) REFERENCES cfg_maquina("Id_maquina"),
    CONSTRAINT FK_his_trazabilidadContenedor_maquina_cfg_producto FOREIGN key(id_producto) REFERENCES cfg_producto("Id_producto")
);
    "Id_his_trazabilidadEntradaSalida" int IDENTITY(1,1) NOT NULL,
    "Id_his_trazabilidadEntrada" int NOT NULL,
    "Id_his_trazabilidadSalida" int NOT NULL,
    PRIMARY KEY(Id_his_trazabilidadEntradaSalida),
    CONSTRAINT FK_his_trazabilidadEntradaSalida_his_trazabilidad_Entrada FOREIGN key("Id_his_trazabilidadEntrada") REFERENCES his_trazabilidad(id_his_trazabilidad),
    CONSTRAINT FK_his_trazabilidadEntradaSalida_his_trazabilidad_Salida FOREIGN key("Id_his_trazabilidadSalida") REFERENCES his_trazabilidad(id_his_trazabilidad)
);
    "Id_his_tsk_proyecto" int IDENTITY(1,1) NOT NULL,
    "Cod_his_tsk_proyecto" nvarchar(25),
    "Desc_his_tsk_proyecto" nvarchar(50) NOT NULL,
    "Id_tsk_modulo" int NOT NULL,
    "Id_tsk_tipoproyecto" int NOT NULL,
    "Id_cliente" int NOT NULL,
    "Id_area" int NOT NULL,
    "Id_tsk_estadoproyecto" int NOT NULL,
    "Observaciones" nvarchar(max),
    "Causa" nvarchar(max),
    "Acciones" nvarchar(max),
    "Id_usuario_creacion" int NOT NULL,
    "Id_usuario" int NOT NULL,
    "Fecha_creacion" datetime NOT NULL,
    "Fecha_cierre_prevista" datetime,
    "Fecha_cierre_limite" datetime,
    "Id_usuario_cierre" int,
    "Fecha_cierre" datetime,
    "Observaciones_cierre" nchar(10),
    "MailEnviado" smallint NOT NULL,
    "Activo" smallint NOT NULL,
    "Cus_Cod_Lote" nvarchar(100),
    "Cus_DesestimadaCausa" smallint NOT NULL,
    "Cus_DesestimadaAccion" smallint NOT NULL,
    "Cus_ImplantadaAccion" smallint NOT NULL,
    "Cus_VerificadaEficacia" smallint NOT NULL,
    "Cus_DocModificada" smallint NOT NULL,
    "Cus_ProcedeNuevaAccion" smallint NOT NULL,
    PRIMARY KEY(Id_his_tsk_proyecto),
    CONSTRAINT FK_his_tsk_proyecto_cfg_tsk_modulo FOREIGN key("Id_tsk_modulo") REFERENCES cfg_tsk_modulo("Id_tsk_modulo"),
    CONSTRAINT FK_his_tsk_proyecto_cfg_tsk_tipoproyecto FOREIGN key("Id_tsk_tipoproyecto") REFERENCES cfg_tsk_tipoproyecto("Id_tsk_tipoproyecto"),
    CONSTRAINT FK_his_tsk_proyecto_cfg_cliente FOREIGN key("Id_cliente") REFERENCES cfg_cliente("Id_cliente"),
    CONSTRAINT FK_his_tsk_proyecto_cfg_area FOREIGN key("Id_area") REFERENCES cfg_area("Id_area"),
    CONSTRAINT FK_his_tsk_proyecto_cfg_tsk_estadoproyecto FOREIGN key("Id_tsk_estadoproyecto") REFERENCES cfg_tsk_estadoproyecto("Id_tsk_estadoproyecto"),
    CONSTRAINT FK_his_tsk_proyecto_sys_usuario_creacion FOREIGN key("Id_usuario_creacion") REFERENCES sys_usuario("Id_usuario"),
    CONSTRAINT FK_his_tsk_proyecto_sys_usuario FOREIGN key("Id_usuario") REFERENCES sys_usuario("Id_usuario")
);
    "Id_his_tsk_tarea" int IDENTITY(1,1) NOT NULL,
    "Id_his_tsk_proyecto" int NOT NULL,
    "Id_tsk_tipotarea" int NOT NULL,
    "Cod_his_tsk_tarea" nvarchar(25) NOT NULL,
    "Desc_his_tsk_tarea" nvarchar(50) NOT NULL,
    "Observaciones" nvarchar(max),
    "Prioridad" smallint NOT NULL,
    "Id_usuario" int NOT NULL,
    "Fecha_ini" datetime NOT NULL,
    "Fecha_fin" datetime,
    "Id_tsk_estadotarea" int NOT NULL,
    "MailEnviado" smallint NOT NULL,
    PRIMARY KEY(Id_his_tsk_tarea),
    CONSTRAINT FK_his_tsk_tarea_cfg_tsk_tipotarea FOREIGN key("Id_tsk_tipotarea") REFERENCES cfg_tsk_tipotarea("Id_tsk_tipotarea"),
    CONSTRAINT FK_his_tsk_tarea_sys_usuario FOREIGN key("Id_usuario") REFERENCES sys_usuario("Id_usuario"),
    CONSTRAINT FK_his_tsk_tarea_cfg_tsk_estadotarea FOREIGN key("Id_tsk_estadotarea") REFERENCES cfg_tsk_estadotarea("Id_tsk_estadotarea")
);
    "Id_his_wam_almacen" int IDENTITY(1,1) NOT NULL,
    "Id_wam_ubicacion" int NOT NULL,
    "Id_wam_ubicacion_propuesta" int NOT NULL,
    "Id_producto" int NOT NULL,
    "Id_wam_contenedor" int NOT NULL,
    "Unidades" int NOT NULL,
    "Unidades2" decimal(18,2) NOT NULL,
    "Unidades3" decimal(18,2) NOT NULL,
    "Tipo" nvarchar(1) NOT NULL,
    "DH" datetime NOT NULL,
    "DH_Caducidad" datetime NOT NULL,
    "Observaciones" nvarchar(500),
    "Id_operario" int NOT NULL,
    "Activo" smallint NOT NULL,
    "Lote" nvarchar(250),
    "Contenedor" varchar(50) NOT NULL,
    "Estado" smallint NOT NULL,
    "Regularizado" smallint NOT NULL,
    "Pedido" nvarchar(50) NOT NULL,
    PRIMARY KEY(Id_his_wam_almacen)
);
    id_his_ws_webservice int IDENTITY(1,1) NOT NULL,
    id_ws_connection int,
    id_ws_request int,
    "Fecha_generacion" datetime NOT NULL,
    "Fecha_proceso" datetime,
    ack smallint,
    "ErrorMessage" nvarchar(50),
    "URL" nvarchar(max),
    "Request" nvarchar(max),
    "Result1" nvarchar(max),
    "Result2" nvarchar(max),
    "fechaReproceso" datetime,
    "usuarioReproceso" nvarchar(50),
    PRIMARY KEY(id_his_ws_webservice)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_prd_baliza int IDENTITY(1,1) NOT NULL,
    id_baliza int NOT NULL,
    "led1Color" nvarchar(50),
    "led2Color" nvarchar(50),
    "led3Color" nvarchar(50),
    "led4Color" nvarchar(50),
    "led5Color" nvarchar(50),
    "blinkingControl" nvarchar(50),
    "buzzerPattern" nvarchar(50),
    "lastUpdate" datetime,
    PRIMARY KEY(id_prd_baliza),
    CONSTRAINT FK_prd_baliza_cfg_baliza FOREIGN key(id_baliza) REFERENCES cfg_baliza(id_baliza)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_prd_ctm" int IDENTITY(1,1) NOT NULL,
    "Id_maquina" int NOT NULL,
    "Id_operario" int NOT NULL,
    "Desc_operario" nvarchar(50) NOT NULL,
    "His_operario" int NOT NULL,
    "Fecha_ini" datetime,
    "Id_actividadoperario" int NOT NULL,
    "Activo" smallint NOT NULL,
    "Id_tipooperario" int NOT NULL,
    "Id_his_prod_of" int,
    "Id_his_fase" int NOT NULL,
    "Id_his_prod" int NOT NULL,
    "Id_actividad" int NOT NULL,
    PRIMARY KEY(Id_prd_ctm)
);
    "Id_prd_defecto" int IDENTITY(1,1) NOT NULL,
    "Id_maquina" int NOT NULL,
    "Id_defecto" int NOT NULL,
    "Cod_defecto" nvarchar(25),
    "Desc_defecto" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    "Id_his_prod_defecto" int NOT NULL,
    "Unidades" int NOT NULL,
    "Orden" smallint NOT NULL,
    "His_defecto" int NOT NULL,
    "Unidades_nok_plc" int NOT NULL,
    "Unidades_nok_old_rt" int NOT NULL,
    "Unidades_nok_turno" int NOT NULL,
    "Unidades_nok_diaproductivo" int NOT NULL,
    "Fecha_ini" datetime,
    "SumaNOK" smallint NOT NULL,
    "RestaOK" tinyint NOT NULL,
    "CampoFactorMultiplicativo" nvarchar(100) NOT NULL,
    PRIMARY KEY(Id_prd_defecto),
    CONSTRAINT FK_prd_defecto_cfg_maquina FOREIGN key("Id_maquina") REFERENCES cfg_maquina("Id_maquina")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_prd_erp" int IDENTITY(1,1) NOT NULL,
    "Id_operacion" int NOT NULL,
    "Tipooperacion" nchar(2) NOT NULL,
    "DH_generacion" datetime NOT NULL,
    "DH_proceso" datetime,
    "Ack" tinyint NOT NULL,
    "Parametro1" varchar(50),
    "Parametro2" varchar(100),
    "Parametro3" varchar(250),
    "Parametro4" varchar(50),
    "Parametro5" varchar(50),
    "Parametro6" varchar(100),
    "Parametro7" varchar(100),
    "Parametro8" varchar(50),
    "Parametro9" varchar(50),
    "Parametro10" varchar(50),
    "Parametro11" varchar(1000),
    "Parametro12" varchar(100),
    "Parametro13" varchar(100),
    "Parametro14" varchar(50),
    "Parametro15" varchar(50),
    "Parametro16" varchar(50),
    "Parametro17" varchar(50),
    "Parametro18" varchar(50),
    "Parametro19" varchar(50),
    "Parametro20" varchar(50),
    "Parametro21" varchar(50),
    "Parametro22" varchar(50),
    "Parametro23" varchar(50),
    "Parametro24" varchar(50),
    "Parametro25" varchar(50),
    "Parametro26" varchar(50),
    "Parametro27" varchar(50),
    "Parametro28" varchar(50),
    "Parametro29" varchar(50),
    "Parametro30" varchar(25),
    "Parametro31" varchar(250),
    "Parametro32" varchar(50),
    "Parametro33" varchar(50),
    "Parametro34" varchar(25),
    "Parametro35" varchar(50),
    "Parametro36" varchar(50),
    "Parametro37" varchar(50),
    "Parametro38" varchar(50),
    "Parametro39" varchar(50),
    "Parametro40" varchar(50),
    "Parametro41" varchar(50),
    "Parametro42" varchar(50),
    "Parametro43" varchar(50),
    "Parametro44" varchar(2),
    "Parametro45" varchar(50),
    "Parametro46" varchar(50),
    "Parametro47" varchar(50),
    "Parametro48" varchar(150),
    "Parametro49" varchar(1),
    "Parametro50" varchar(50),
    "Parametro51" varchar(25),
    "Parametro52" varchar(50),
    "Parametro53" varchar(50),
    "Parametro54" varchar(50),
    "Parametro55" varchar(50),
    "Parametro56" varchar(50),
    "Parametro57" varchar(50),
    "Parametro58" varchar(50),
    "Parametro59" varchar(50),
    "Parametro60" varchar(50),
    "Parametro61" varchar(50),
    "Parametro62" varchar(50),
    "Parametro63" varchar(50),
    "Parametro64" varchar(50),
    "Parametro65" varchar(50),
    "Parametro66" varchar(50),
    "Parametro67" varchar(50),
    "Parametro68" varchar(50),
    "Parametro69" varchar(50),
    "Parametro70" varchar(50),
    "Parametro71" varchar(50),
    "Parametro72" varchar(25),
    "Parametro73" varchar(50),
    "Parametro74" varchar(250),
    "Parametro75" varchar(50),
    "Parametro76" varchar(50),
    "Parametro77" varchar(50),
    "Parametro78" varchar(50),
    "Parametro79" varchar(50),
    "Parametro80" varchar(50),
    "Parametro81" varchar(50),
    "Parametro82" varchar(50),
    "Parametro83" varchar(50),
    "Parametro84" varchar(50),
    "Parametro85" varchar(50),
    "Parametro86" varchar(50),
    "Parametro87" varchar(50),
    "Parametro88" varchar(50),
    "Parametro89" varchar(50),
    "Parametro90" varchar(250),
    "Parametro91" varchar(250),
    "Parametro92" varchar(250),
    "Parametro93" varchar(250),
    "Parametro94" varchar(250),
    "Parametro95" varchar(250),
    "Parametro96" varchar(250),
    "Parametro97" varchar(250),
    "Parametro98" varchar(250),
    "Parametro99" varchar(250),
    "Parametro100" varchar(250),
    "Parametro101" varchar(250),
    "Parametro102" varchar(250),
    "Parametro103" varchar(250),
    "Parametro104" varchar(250),
    "Parametro105" varchar(250),
    "Parametro106" varchar(250),
    "Parametro107" varchar(250),
    "Parametro108" varchar(250),
    "Parametro109" varchar(250),
    "Parametro110" varchar(50),
    PRIMARY KEY(Id_prd_erp)
);
    "Id_prd_erp" int IDENTITY(1,1) NOT NULL,
    "Id_operacion" int NOT NULL,
    "Tipooperacion" nchar(3),
    "DH_generacion" datetime NOT NULL,
    "DH_proceso" datetime,
    "Ack" tinyint NOT NULL,
    "Parametro1" varchar(50),
    "Parametro2" varchar(100),
    "Parametro3" varchar(50),
    "Parametro4" varchar(50),
    "Parametro5" varchar(200),
    "Parametro6" varchar(50),
    "Parametro7" varchar(50),
    "Parametro8" varchar(50),
    "Parametro9" varchar(50),
    "Parametro10" varchar(50),
    "Parametro11" varchar(1000),
    "Parametro12" varchar(100),
    "Parametro13" varchar(100),
    "Parametro14" varchar(50),
    "Parametro15" varchar(50),
    "Parametro16" varchar(50),
    "Parametro17" varchar(50),
    "Parametro18" varchar(50),
    "Parametro19" varchar(50),
    "Parametro20" varchar(50),
    "Parametro21" varchar(50),
    "Parametro22" varchar(50),
    "Parametro23" varchar(50),
    "Parametro24" varchar(50),
    "Parametro25" varchar(50),
    "Parametro26" varchar(50),
    "Parametro27" varchar(50),
    "Parametro28" varchar(50),
    "Parametro29" varchar(50),
    "Parametro30" varchar(25),
    "Parametro31" varchar(250),
    "Parametro32" varchar(50),
    "Parametro33" varchar(50),
    "Parametro34" varchar(25),
    "Parametro35" varchar(250),
    "Parametro36" varchar(50),
    "Parametro37" varchar(50),
    "Parametro38" varchar(50),
    "Parametro39" varchar(50),
    "Parametro40" varchar(50),
    "Parametro41" varchar(500),
    "Parametro42" varchar(50),
    "Parametro43" varchar(50),
    "Parametro44" varchar(2),
    "Parametro45" varchar(50),
    "Parametro46" varchar(50),
    "Parametro47" varchar(50),
    "Parametro48" varchar(150),
    "Parametro49" varchar(1),
    "Parametro50" varchar(50),
    "Parametro51" varchar(25),
    "Parametro52" varchar(50),
    "Parametro53" varchar(50),
    "Parametro54" varchar(50),
    "Parametro55" varchar(50),
    "Parametro56" varchar(50),
    "Parametro57" varchar(50),
    "Parametro58" varchar(50),
    "Parametro59" varchar(50),
    "Parametro60" varchar(50),
    "Parametro61" varchar(50),
    "Parametro62" varchar(50),
    "Parametro63" varchar(50),
    "Parametro64" varchar(50),
    "Parametro65" varchar(50),
    "Parametro66" varchar(50),
    "Parametro67" varchar(50),
    "Parametro68" varchar(50),
    "Parametro69" varchar(50),
    "Parametro70" varchar(50),
    "Parametro71" varchar(50),
    "Parametro72" varchar(25),
    "Parametro73" varchar(50),
    "Parametro74" varchar(250),
    "Parametro75" varchar(50),
    "Parametro76" varchar(50),
    "Parametro77" varchar(50),
    "Parametro78" varchar(50),
    "Parametro79" varchar(50),
    "Parametro80" varchar(50),
    "Parametro81" varchar(50),
    "Parametro82" varchar(50),
    "Parametro83" varchar(50),
    "Parametro84" varchar(50),
    "Parametro85" varchar(50),
    "Parametro86" varchar(50),
    "Parametro87" varchar(50),
    "Parametro88" varchar(50),
    "Parametro89" varchar(50),
    "Parametro90" varchar(250),
    "Parametro91" varchar(250),
    "Parametro92" varchar(250),
    "Parametro93" varchar(250),
    "Parametro94" varchar(250),
    "Parametro95" varchar(250),
    "Parametro96" varchar(250),
    "Parametro97" varchar(250),
    "Parametro98" varchar(250),
    "Parametro99" varchar(250),
    "Parametro100" varchar(250),
    "Parametro101" varchar(250),
    "Parametro102" varchar(250),
    "Parametro103" varchar(250),
    "Parametro104" varchar(250),
    "Parametro105" varchar(250),
    "Parametro106" varchar(250),
    "Parametro107" varchar(250),
    "Parametro108" varchar(250),
    "Parametro109" varchar(250),
    "Parametro110" varchar(50),
    "ERROR" ntext,
    "P121" nvarchar(250),
    "P122" nvarchar(250),
    "P123" nvarchar(250),
    "P124" nvarchar(250),
    "P125" nvarchar(250),
    "P126" nvarchar(250),
    "P127" nvarchar(250),
    "P128" nvarchar(250),
    "P129" text,
    "P130" nvarchar(250),
    "P131" nvarchar(250),
    "P132" nvarchar(250),
    "P133" nvarchar(250),
    "P134" nvarchar(250),
    "P135" nvarchar(250),
    "P136" text,
    "P137" nvarchar(250),
    "P138" nvarchar(250),
    "P139" nvarchar(250),
    "P140" nvarchar(250),
    "P141" nvarchar(250),
    "P142" nvarchar(250),
    "P143" nvarchar(250),
    "P144" nvarchar(250),
    "P145" text,
    "P146" nvarchar(250),
    "P147" nvarchar(250),
    "P148" nvarchar(250),
    "P149" nvarchar(250),
    "P150" nvarchar(250),
    "P151" nvarchar(250),
    "P152" nvarchar(250),
    "P153" text,
    "P154" nvarchar(250),
    "P155" nvarchar(250),
    "P156" nvarchar(250),
    "P157" nvarchar(250),
    "P158" text,
    "P159" nvarchar(250),
    "P160" nvarchar(250),
    "P161" nvarchar(250),
    "P162" nvarchar(250),
    "P163" nvarchar(250),
    "P164" nvarchar(250),
    "P165" nvarchar(250),
    "P166" nvarchar(250),
    "P167" nvarchar(250),
    "P168" nvarchar(250),
    "P169" nvarchar(250),
    "P170" nvarchar(250),
    "P171" nvarchar(250),
    "P172" nvarchar(250),
    "P173" nvarchar(250),
    "P174" nvarchar(250),
    "P175" nvarchar(250),
    "P176" nvarchar(250),
    "P177" nvarchar(250),
    "P178" nvarchar(250),
    "P179" nvarchar(250),
    "P180" nvarchar(250),
    "P181" nvarchar(250),
    "P182" nvarchar(250),
    "P183" nvarchar(250),
    "P184" nvarchar(250),
    "P185" nvarchar(250),
    "P186" nvarchar(250),
    "P187" nvarchar(250),
    "P188" nvarchar(250),
    "P189" nvarchar(250),
    "P190" nvarchar(250),
    "P191" nvarchar(250),
    "P192" nvarchar(250),
    "P193" nvarchar(250),
    "P194" nvarchar(250),
    "P195" nvarchar(250),
    "P196" nvarchar(250),
    "P197" nvarchar(250),
    "P198" nvarchar(250),
    "P199" nvarchar(250),
    "P200" nvarchar(250),
    "P201" nvarchar(250),
    "P202" nvarchar(250),
    "P203" nvarchar(250),
    "P204" nvarchar(250),
    "P205" nvarchar(250),
    "P206" nvarchar(250),
    "P207" nvarchar(250),
    "P208" nvarchar(250),
    "P209" nvarchar(250),
    "P210" nvarchar(250),
    "P211" nvarchar(250),
    "P212" nvarchar(250),
    "P213" nvarchar(250),
    "P214" nvarchar(250),
    "P215" nvarchar(250),
    "P216" nvarchar(250),
    "P217" nvarchar(250),
    "P218" nvarchar(250),
    "P219" nvarchar(250),
    "P220" nvarchar(250),
    "P221" nvarchar(250),
    "P222" nvarchar(250),
    "P223" text,
    "P224" nvarchar(250),
    "P225" nvarchar(250),
    "P226" nvarchar(250),
    "P227" nvarchar(250),
    "P228" nvarchar(250),
    "P229" text,
    id_usuario int,
    "Fecha_generacion" datetime NOT NULL,
    PRIMARY KEY(Id_prd_erp)
);
EXEC sp_addextendedproperty
    "Id_prd_erp_out" int IDENTITY(1,1) NOT NULL,
    "Id_operacion" int NOT NULL,
    "Tipooperacion" nchar(2) NOT NULL,
    "DH_generacion" datetime NOT NULL,
    "DH_proceso" datetime,
    "Ack" tinyint NOT NULL,
    "Parametro1" varchar(25),
    "Parametro2" varchar(100),
    "Parametro3" varchar(25),
    "Parametro4" varchar(50),
    "Parametro5" varchar(50),
    "Parametro6" varchar(50),
    "Parametro7" varchar(50),
    "Parametro8" varchar(50),
    "Parametro9" varchar(50),
    "Parametro10" varchar(50),
    "Parametro11" varchar(1000),
    "Parametro12" varchar(100),
    "Parametro13" varchar(100),
    "Parametro14" varchar(50),
    "Parametro15" varchar(50),
    "Parametro16" varchar(50),
    "Parametro17" varchar(50),
    "Parametro18" varchar(50),
    "Parametro19" varchar(50),
    "Parametro20" varchar(50),
    "Parametro21" varchar(50),
    "Parametro22" varchar(50),
    "Parametro23" varchar(50),
    "Parametro24" varchar(50),
    "Parametro25" varchar(50),
    "Parametro26" varchar(50),
    "Parametro27" varchar(50),
    "Parametro28" varchar(50),
    "Parametro29" varchar(50),
    "Parametro30" varchar(25),
    "Parametro31" varchar(250),
    "Parametro32" varchar(50),
    "Parametro33" varchar(50),
    "Parametro34" varchar(25),
    "Parametro35" varchar(50),
    "Parametro36" varchar(50),
    "Parametro37" varchar(50),
    "Parametro38" varchar(50),
    "Parametro39" varchar(50),
    "Parametro40" varchar(50),
    "Parametro41" varchar(50),
    "Parametro42" varchar(50),
    "Parametro43" varchar(50),
    "Parametro44" varchar(2),
    "Parametro45" varchar(50),
    "Parametro46" varchar(50),
    "Parametro47" varchar(50),
    "Parametro48" varchar(150),
    "Parametro49" varchar(1),
    "Parametro50" varchar(50),
    "Parametro51" varchar(25),
    "Parametro52" varchar(50),
    "Parametro53" varchar(50),
    "Parametro54" varchar(50),
    "Parametro55" varchar(50),
    "Parametro56" varchar(50),
    "Parametro57" varchar(50),
    "Parametro58" varchar(50),
    "Parametro59" varchar(50),
    "Parametro60" varchar(50),
    "Parametro61" varchar(50),
    "Parametro62" varchar(50),
    "Parametro63" varchar(50),
    "Parametro64" varchar(50),
    "Parametro65" varchar(50),
    "Parametro66" varchar(50),
    "Parametro67" varchar(50),
    "Parametro68" varchar(50),
    "Parametro69" varchar(50),
    "Parametro70" varchar(50),
    "Parametro71" varchar(50),
    "Parametro72" varchar(25),
    "Parametro73" varchar(50),
    "Parametro74" varchar(250),
    "Parametro75" varchar(50),
    "Parametro76" varchar(50),
    "Parametro77" varchar(50),
    "Parametro78" varchar(50),
    "Parametro79" varchar(50),
    "Parametro80" varchar(50),
    "Parametro81" varchar(50),
    "Parametro82" varchar(50),
    "Parametro83" varchar(50),
    "Parametro84" varchar(50),
    "Parametro85" varchar(50),
    "Parametro86" varchar(50),
    "Parametro87" varchar(50),
    "Parametro88" varchar(50),
    "Parametro89" varchar(50),
    "Parametro90" varchar(250),
    "Parametro91" varchar(250),
    "Parametro92" varchar(250),
    "Parametro93" varchar(250),
    "Parametro94" varchar(250),
    "Parametro95" varchar(250),
    "Parametro96" varchar(250),
    "Parametro97" varchar(250),
    "Parametro98" varchar(250),
    "Parametro99" varchar(250),
    "Parametro100" varchar(250),
    "Parametro101" varchar(250),
    "Parametro102" varchar(250),
    "Parametro103" varchar(250),
    "Parametro104" varchar(250),
    "Parametro105" varchar(250),
    "Parametro106" varchar(250),
    "Parametro107" varchar(250),
    "Parametro108" varchar(250),
    "Parametro109" varchar(250),
    "Parametro110" varchar(50),
    "ERROR" nvarchar(max),
    PRIMARY KEY(Id_prd_erp_out)
);
    id_prd_fifo int IDENTITY(1,1) NOT NULL,
    id_fifo int NOT NULL,
    id_producto int NOT NULL,
    batch nvarchar(50) NOT NULL,
    quantity numeric(18,4) NOT NULL,
    "order" int NOT NULL,
    rearrange int,
    creation_date datetime NOT NULL,
    "last_id_his_fifoMovement" int NOT NULL,
    last_update datetime,
    PRIMARY KEY(id_prd_fifo),
    CONSTRAINT FK_prd_fifo_cfg_fifo FOREIGN key(id_fifo) REFERENCES cfg_fifo(id_fifo),
    CONSTRAINT FK_prd_fifo_cfg_producto FOREIGN key(id_producto) REFERENCES cfg_producto("Id_producto")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_prd_lote" int IDENTITY(1,1) NOT NULL,
    "Id_maquina" int NOT NULL,
    "Id_producto" int NOT NULL,
    "Cod_lote" nvarchar(25) NOT NULL,
    "Desc_producto" nvarchar(25) NOT NULL,
    "His_lote" int NOT NULL,
    "Orden" int NOT NULL,
    "Id_paro" int NOT NULL,
    "Desc_paro" nvarchar(25) NOT NULL,
    "Id_his_prod_lote" int NOT NULL,
    "Id_his_lote" int NOT NULL,
    "Factor_multiplicativo2" int NOT NULL,
    "Unidades_ok" int NOT NULL,
    "Unidades_nok" int NOT NULL,
    "Unidades_ok2_mult" int NOT NULL,
    "Unidades_ok_lote" int NOT NULL,
    "Unidades_nok_lote" int NOT NULL,
    "Modo" smallint NOT NULL,
    "Seg_lote" int NOT NULL,
    "Hora_inicio_lote" datetime,
    "Fecha_ini" datetime,
    "TipoUnidades" int NOT NULL,
    "Activo" smallint NOT NULL,
    PRIMARY KEY(Id_prd_lote),
    CONSTRAINT FK_prd_lote_cfg_maquina FOREIGN key("Id_maquina") REFERENCES cfg_maquina("Id_maquina")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_prd_mnt_elemento int IDENTITY(1,1) NOT NULL,
    id_mnt_elemento int NOT NULL,
    id_maquina int NOT NULL,
    fecha_ini datetime NOT NULL,
    rt_id_his_mnt_elemento bigint,
    acu_unidades_ok_ini bigint NOT NULL,
    acu_unidades_nok_ini bigint NOT NULL,
    PRIMARY KEY(id_prd_mnt_elemento),
    CONSTRAINT FK_prd_mnt_elemento_cfg_mnt_elemento FOREIGN key(id_mnt_elemento) REFERENCES cfg_mnt_elemento("Id_mnt_elemento"),
    CONSTRAINT FK_prd_elemento_his_elemento FOREIGN key(rt_id_his_mnt_elemento) REFERENCES his_mnt_elemento(id_his_mnt_elemento)
);
    id_prd_mnt_usuario int IDENTITY(1,1) NOT NULL,
    id_usuario int NOT NULL,
    id_his_mnt_operacion int NOT NULL,
    id_operario int NOT NULL,
    fecha_ini datetime,
    "lastUpdate" datetime NOT NULL,
    PRIMARY KEY(id_prd_mnt_usuario)
);
    "Id_prd_of" int IDENTITY(1,1) NOT NULL,
    "Id_maquina" int NOT NULL,
    "Orden" int NOT NULL,
    "Id_his_fase" int NOT NULL,
    "Unidades_ok" int NOT NULL,
    "Unidades_nok" int NOT NULL,
    "Unidades_repro" int NOT NULL,
    "Unidades_cal" int NOT NULL,
    "Unidades_ok2" int NOT NULL,
    "Unidades_nok2" int NOT NULL,
    "Unidades_repro2" int NOT NULL,
    "Unidades_cal2" int NOT NULL,
    "Id_his_prod_of" int NOT NULL,
    "Unidades_ok_of" int NOT NULL,
    "Unidades_nok_of" int NOT NULL,
    "Unidades_repro_of" int NOT NULL,
    "Unidades_cal_of" int NOT NULL,
    "Unidades_ok2_of" int NOT NULL,
    "Unidades_nok2_of" int NOT NULL,
    "Unidades_repro2_of" int NOT NULL,
    "Unidades_cal2_of" int NOT NULL,
    "Unidades_ok_preparacion" int NOT NULL,
    "Unidades_nok_preparacion" int NOT NULL,
    "Seg" int NOT NULL,
    "Factormultiplicativo" decimal(10,2) NOT NULL,
    "Activo" smallint NOT NULL,
    "Rendimientonominal1" decimal(10,2) NOT NULL,
    "Rendimientonominal2" decimal(10,2) NOT NULL,
    "rt_SegCicloNominal" int NOT NULL,
    "Rt_UnidadesOkOFMaquinaTurno" decimal(18,4) NOT NULL,
    "Rt_UnidadesNokOFMaquinaTurno" decimal(18,4) NOT NULL,
    "Rt_UnidadesReproOFMaquinaTurno" decimal(18,4) NOT NULL,
    "Rt_UnidadesCalOFMaquinaTurno" decimal(18,4) NOT NULL,
    "Rt_UnidadesOk2OFMaquinaTurno" decimal(18,4) NOT NULL,
    "Rt_UnidadesNok2OFMaquinaTurno" decimal(18,4) NOT NULL,
    "Rt_UnidadesRepro2OFMaquinaTurno" decimal(18,4) NOT NULL,
    "Rt_UnidadesCal2OFMaquinaTurno" decimal(18,4) NOT NULL,
    "Rt_Seg_preparacionOFMaquinaTurno" decimal(18,4) NOT NULL,
    "Rt_Seg_produccionOFMaquinaTurno" decimal(18,4) NOT NULL,
    "Rt_Seg_preparacionOFMaquina" decimal(18,4) NOT NULL,
    "Rt_Seg_produccionOFMaquina" decimal(18,4) NOT NULL,
    "Rt_UnidadesOkOF" decimal(18,4) NOT NULL,
    "Rt_UnidadesNokOF" decimal(18,4) NOT NULL,
    "Rt_UnidadesReproOF" decimal(18,4) NOT NULL,
    "Rt_UnidadesCalOF" decimal(18,4) NOT NULL,
    "Rt_UnidadesOk2OF" decimal(18,4) NOT NULL,
    "Rt_UnidadesNok2OF" decimal(18,4) NOT NULL,
    "Rt_UnidadesRepro2OF" decimal(18,4) NOT NULL,
    "Rt_UnidadesCal2OF" decimal(18,4) NOT NULL,
    "Rt_Seg_preparacionOF" decimal(18,4) NOT NULL,
    "Rt_Seg_produccionOF" decimal(18,4) NOT NULL,
    "Rt_UnidadesOkOFMaquina" decimal(18,4) NOT NULL,
    "Rt_UnidadesNokOFMaquina" decimal(18,4) NOT NULL,
    "Rt_UnidadesReproOFMaquina" decimal(18,4) NOT NULL,
    "Rt_UnidadesCalOFMaquina" decimal(18,4) NOT NULL,
    "Rt_UnidadesOk2OFMaquina" decimal(18,4) NOT NULL,
    "Rt_UnidadesNok2OFMaquina" decimal(18,4) NOT NULL,
    "Rt_UnidadesRepro2OFMaquina" decimal(18,4) NOT NULL,
    "Rt_UnidadesCal2OFMaquina" decimal(18,4) NOT NULL,
    "Ag_Rt_OEE_OF" decimal(8,2) NOT NULL,
    "Ag_Rt_Cal_OF" decimal(8,2) NOT NULL,
    "Ag_Rt_Disp_OF" decimal(8,2) NOT NULL,
    "Ag_Rt_Rend_OF" decimal(8,2) NOT NULL,
    "Ag_Rt_M_OF" int NOT NULL,
    "Ag_Rt_PP_OF" int NOT NULL,
    "Ag_Rt_PNP_OF" int NOT NULL,
    PRIMARY KEY(Id_prd_of),
    CONSTRAINT FK_prd_of_cfg_maquina FOREIGN key("Id_maquina") REFERENCES cfg_maquina("Id_maquina"),
    CONSTRAINT FK_prd_of_his_fase FOREIGN key("Id_his_fase") REFERENCES his_fase("Id_his_fase")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_op_maquina int IDENTITY(1,1) NOT NULL,
    id_maquina int NOT NULL,
    id_op int NOT NULL,
    alarma nvarchar(250),
    color nvarchar(250),
    PRIMARY KEY(id_op_maquina),
    CONSTRAINT FK_prd_op_maquina_id_maquina FOREIGN key(id_maquina) REFERENCES cfg_maquina("Id_maquina"),
    CONSTRAINT FK_prd_op_maquina_id_op FOREIGN key(id_op) REFERENCES cfg_op(id_op)
);
    "Id_prd_operario" int IDENTITY(1,1) NOT NULL,
    "Id_maquina" int NOT NULL,
    "Id_operario" int NOT NULL,
    "Desc_operario" nvarchar(50) NOT NULL,
    "His_operario" int NOT NULL,
    "Fecha_ini" datetime,
    "Id_actividadoperario" int NOT NULL,
    "Activo" smallint NOT NULL,
    "Id_tipooperario" int NOT NULL,
    PRIMARY KEY(Id_prd_operario),
    CONSTRAINT FK_prd_operario_cfg_maquina FOREIGN key("Id_maquina") REFERENCES cfg_maquina("Id_maquina"),
    CONSTRAINT FK_prd_operario_cfg_actividadoperario FOREIGN key("Id_actividadoperario") REFERENCES cfg_actividadoperario("Id_actividadoperario")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_prd_operarioCola" int IDENTITY(1,1) NOT NULL,
    id_operario int NOT NULL,
    id_maquina int NOT NULL,
    "Fecha_ini" datetime NOT NULL,
    "id_actividadOperario" int NOT NULL,
    PRIMARY KEY(id_prd_operarioCola)
);
    "Id_prd_parte" int IDENTITY(1,1) NOT NULL,
    "Id_maquina" int NOT NULL,
    "Fecha_ini" datetime,
    "Fecha_fin" datetime,
    PRIMARY KEY(Id_prd_parte),
    CONSTRAINT FK_prd_parte_cfg_maquina FOREIGN key("Id_maquina") REFERENCES cfg_maquina("Id_maquina")
);
    "Id_prd_parte_prod" int IDENTITY(1,1) NOT NULL,
    "Id_prd_parte" int NOT NULL,
    "Id_his_fase" int NOT NULL,
    "Unidades_ok" int NOT NULL,
    "Unidades_nok" int NOT NULL,
    "Id_defecto" int NOT NULL,
    "Fecha_ini" datetime,
    "Id_his_prod" int NOT NULL,
    "Id_operario" int,
    "Id_actividad" int NOT NULL,
    "Id_maquina" int NOT NULL,
    PRIMARY KEY(Id_prd_parte_prod),
    CONSTRAINT FK_prd_parte_prod_his_fase FOREIGN key("Id_his_fase") REFERENCES his_fase("Id_his_fase"),
    CONSTRAINT FK_prd_parte_prod_cfg_defecto FOREIGN key("Id_defecto") REFERENCES cfg_defecto("Id_defecto")
);
    "Id_prd_servidor" int IDENTITY(1,1) NOT NULL,
    "Id_maquina" int NOT NULL,
    "Id_operacion" int NOT NULL,
    "Hora_inicio" datetime,
    "Ack" int NOT NULL,
    "Respuesta" int NOT NULL,
    "S1" nvarchar(250),
    "S2" nvarchar(50) NOT NULL,
    "S3" nvarchar(50) NOT NULL,
    "S4" nvarchar(50) NOT NULL,
    "S5" nvarchar(50) NOT NULL,
    "S6" nvarchar(50) NOT NULL,
    "Id_operario" int NOT NULL,
    "Activo" smallint NOT NULL,
    "S7" nvarchar(50) NOT NULL,
    "S8" nvarchar(50) NOT NULL,
    "S9" nvarchar(50) NOT NULL,
    "Fecha_creacion" datetime,
    "HOSTNAME" nvarchar(100),
    "MultiWCID" nvarchar(50) NOT NULL,
    "S10" nvarchar(50) NOT NULL,
    PRIMARY KEY(Id_prd_servidor)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_syncroObjeto" int IDENTITY(1,1) NOT NULL,
    "Id_objeto" int NOT NULL,
    "Cod_syncroObjeto" nvarchar(70),
    "Desc_syncroObjeto" nvarchar(250),
    "Tipo" nvarchar(50) NOT NULL,
    "Ack" tinyint,
    "Error" nvarchar(250),
    "PC" nvarchar(50),
    "Activo" tinyint NOT NULL,
    cod_package nvarchar(200) NOT NULL,
    "projectVersion" int NOT NULL,
    PRIMARY KEY(Id_syncroObjeto),
    CONSTRAINT FK_prd_syncroObjeto_projectVersion FOREIGN key("projectVersion") REFERENCES "sys_projectVersion"("ProjectVersion")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_prd_syncroObjetoRemoto" int IDENTITY(1,1) NOT NULL,
    id_server int NOT NULL,
    tipo nvarchar(50) NOT NULL,
    "id_syncroObjetoRemoto" int NOT NULL,
    "cod_syncroObjetoRemoto" nvarchar(140) NOT NULL,
    "desc_syncroObjetoRemoto" nvarchar(120),
    fecha datetime NOT NULL,
    "projectVersion" int NOT NULL,
    activo tinyint NOT NULL,
    cod_usuario nvarchar(50),
    "GlobalScript" nvarchar(max),
    id_programa int,
    comments nvarchar(max),
    sql nvarchar(max),
    "manualExecution" tinyint,
    "projectVersionSQL" nvarchar(50),
    PRIMARY KEY(id_prd_syncroObjetoRemoto)
);
    "Id_prd_wam_ubicacion_producto" int IDENTITY(1,1) NOT NULL,
    "Id_producto" int NOT NULL,
    "Id_wam_ubicacion" int NOT NULL,
    "Id_wam_contenedor" int NOT NULL,
    "Unidades" decimal(18,2) NOT NULL,
    "Unidades2" decimal(18,2) NOT NULL,
    "Unidades3" decimal(18,2) NOT NULL,
    "DH_Caducidad" datetime NOT NULL,
    "Lote" nvarchar(20) NOT NULL,
    "DH_UltimoMovimiento" datetime NOT NULL,
    "Contenedor" varchar(50) NOT NULL
);
    "Id_sum_changeover" int IDENTITY(1,1) NOT NULL,
    dh_generacion datetime NOT NULL,
    "Id_area" int NOT NULL,
    "Cod_area" nvarchar(50) NOT NULL,
    "Desc_area" nvarchar(250) NOT NULL,
    his_maquina bigint NOT NULL,
    "Id_maquina" int NOT NULL,
    "Cod_maquina" nvarchar(25) NOT NULL,
    "Desc_maquina" nvarchar(250) NOT NULL,
    "Dia_productivo" datetime NOT NULL,
    "Id_his_fase" bigint NOT NULL,
    "Id_actividad" int NOT NULL,
    "Cod_actividad" nvarchar(25),
    "Desc_actividad" nvarchar(50) NOT NULL,
    "Fecha_ini" datetime,
    "Fecha_fin" datetime,
    "Segundos" int,
    "CambioFormato" int,
    "Cod_of" nvarchar(25) NOT NULL,
    "Cod_his_fase" nvarchar(50),
    "Desc_his_fase" nvarchar(250),
    "Id_producto" int NOT NULL,
    "Cod_producto" nvarchar(50) NOT NULL,
    "Desc_producto" nvarchar(250) NOT NULL,
    "Id_producto_Anterior" int NOT NULL,
    "Cod_producto_Anterior" nvarchar(50),
    "Desc_producto_Anterior" nvarchar(250),
    "Segundos_teoricos" int,
    PRIMARY KEY(Id_sum_changeover)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_sum_defect int IDENTITY(1,1) NOT NULL,
    dh_generacion datetime NOT NULL,
    id_maquina int NOT NULL,
    cod_maquina nvarchar(25),
    desc_maquina nvarchar(250),
    "MaquinaPrincipal" tinyint NOT NULL,
    id_tipomaquina int NOT NULL,
    cod_tipomaquina nvarchar(25),
    desc_tipomaquina nvarchar(50),
    id_area int NOT NULL,
    cod_area nvarchar(25),
    desc_area nvarchar(50),
    id_fabrica int NOT NULL,
    cod_fabrica nvarchar(25),
    desc_fabrica nvarchar(25),
    id_empresa int NOT NULL,
    cod_empresa nvarchar(25),
    desc_empresa nvarchar(25),
    id_linea int NOT NULL,
    cod_linea nvarchar(25),
    desc_linea nvarchar(250),
    dia_productivo datetime NOT NULL,
    id_turno int NOT NULL,
    cod_turno nvarchar(100),
    desc_turno nvarchar(100),
    id_actividad int NOT NULL,
    cod_actividad nvarchar(25),
    desc_actividad nvarchar(50),
    id_fase int NOT NULL,
    cod_fase nvarchar(50),
    desc_fase nvarchar(250),
    id_his_fase int NOT NULL,
    cod_his_fase nvarchar(50),
    desc_his_fase nvarchar(250),
    id_producto int NOT NULL,
    cod_producto nvarchar(250),
    desc_producto nvarchar(250),
    id_his_of int NOT NULL,
    cod_of nvarchar(50),
    fecha_ini datetime NOT NULL,
    fecha_fin datetime NOT NULL,
    unidades decimal(18,4) NOT NULL,
    tipounidades1 int NOT NULL,
    tipounidades2 int NOT NULL,
    tipounidades3 int NOT NULL,
    tipounidades4 int NOT NULL,
    id_defecto int NOT NULL,
    cod_defecto nvarchar(50),
    desc_defecto nvarchar(50),
    id_tipodefecto int NOT NULL,
    cod_tipodefecto nvarchar(50),
    desc_tipodefecto nvarchar(50),
    his_defecto int,
    ack tinyint NOT NULL,
    scrap smallint NOT NULL,
    id_utillaje int NOT NULL,
    "posicionUtillaje" int,
    cod_utillaje nvarchar(50),
    id_operario int,
    cod_operario nvarchar(50),
    desc_operario nvarchar(250),
    PRIMARY KEY(id_sum_defect)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_sum_downtime int IDENTITY(1,1) NOT NULL,
    dh_generacion datetime NOT NULL,
    id_maquina int NOT NULL,
    cod_maquina nvarchar(25) NOT NULL,
    desc_maquina nvarchar(250) NOT NULL,
    "MaquinaPrincipal" tinyint NOT NULL,
    id_tipomaquina int NOT NULL,
    cod_tipomaquina nvarchar(25) NOT NULL,
    desc_tipomaquina nvarchar(50) NOT NULL,
    id_area int NOT NULL,
    cod_area nvarchar(25) NOT NULL,
    desc_area nvarchar(50) NOT NULL,
    id_fabrica int,
    cod_fabrica nvarchar(25),
    desc_fabrica nvarchar(25),
    id_empresa int,
    cod_empresa nvarchar(25),
    desc_empresa nvarchar(25),
    id_linea int NOT NULL,
    cod_linea nvarchar(50),
    desc_linea nvarchar(250),
    dia_productivo datetime,
    id_turno int NOT NULL,
    cod_turno nvarchar(100) NOT NULL,
    desc_turno nvarchar(100) NOT NULL,
    fecha_ini datetime NOT NULL,
    fecha_fin datetime NOT NULL,
    id_actividad int NOT NULL,
    cod_actividad nvarchar(25),
    desc_actividad nvarchar(50),
    id_producto int NOT NULL,
    cod_producto nvarchar(50) NOT NULL,
    desc_producto nvarchar(250) NOT NULL,
    id_fase int,
    cod_fase nvarchar(50),
    desc_fase nvarchar(250),
    id_his_fase int NOT NULL,
    cod_his_fase nvarchar(50),
    desc_his_fase nvarchar(250),
    id_his_of int NOT NULL,
    cod_of nvarchar(25) NOT NULL,
    fecha_ini_of datetime,
    id_paro int NOT NULL,
    cod_paro nvarchar(50) NOT NULL,
    desc_paro nvarchar(50) NOT NULL,
    id_tipoparo int NOT NULL,
    cod_tipoparo nvarchar(25) NOT NULL,
    desc_tipoparo nvarchar(50) NOT NULL,
    "id_tipoparoOEE" int NOT NULL,
    "cod_tipoparoOEE" nvarchar(25) NOT NULL,
    "desc_tipoparoOEE" nvarchar(50) NOT NULL,
    id_tipoparo1 int NOT NULL,
    cod_tipoparo1 nvarchar(25) NOT NULL,
    desc_tipoparo1 nvarchar(50) NOT NULL,
    id_tipoparo2 int NOT NULL,
    cod_tipoparo2 nvarchar(25) NOT NULL,
    desc_tipoparo2 nvarchar(50) NOT NULL,
    id_tipoparo3 int,
    cod_tipoparo3 nvarchar(25),
    desc_tipoparo3 nvarchar(50),
    id_tipoparo4 int,
    cod_tipoparo4 nvarchar(25),
    desc_tipoparo4 nvarchar(50),
    observaciones nvarchar(100) NOT NULL,
    his_paro int NOT NULL,
    seg int NOT NULL,
    numparo int NOT NULL,
    "PP" int NOT NULL,
    "PNP" int NOT NULL,
    "NAF" int NOT NULL,
    "PCALIDAD" int NOT NULL,
    "PPERF" int NOT NULL,
    PRIMARY KEY(id_sum_downtime)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_sum_mnt_maintenanceorder int IDENTITY(1,1) NOT NULL,
    id_his_mnt_operacion int NOT NULL,
    cod_mnt_operacion nvarchar(25) NOT NULL,
    desc_mnt_operacion nvarchar(250) NOT NULL,
    observaciones nvarchar(max) NOT NULL,
    "ObservacionesAccion" nvarchar(max) NOT NULL,
    id_mnt_averia int,
    cod_mnt_averia nvarchar(25),
    desc_mnt_averia nvarchar(150),
    id_mnt_avericausa int,
    cod_mnt_averiacausa nvarchar(25),
    desc_mnt_averiacausa nvarchar(150),
    id_mnt_elemento_proc int,
    cod_mnt_elemento_proc nvarchar(25),
    desc_mnt_elemento_proc nvarchar(150),
    id_mnt_elemento int NOT NULL,
    cod_mnt_elemento nvarchar(50) NOT NULL,
    desc_mnt_elemento nvarchar(250) NOT NULL,
    arbol nvarchar(500),
    id_n1 int NOT NULL,
    cod_n1 nvarchar(50) NOT NULL,
    desc_n1 nvarchar(250) NOT NULL,
    id_n2 int NOT NULL,
    cod_n2 nvarchar(50) NOT NULL,
    desc_n2 nvarchar(250) NOT NULL,
    id_n3 int NOT NULL,
    cod_n3 nvarchar(50) NOT NULL,
    desc_n3 nvarchar(250) NOT NULL,
    id_n4 int NOT NULL,
    cod_n4 nvarchar(50) NOT NULL,
    desc_n4 nvarchar(250) NOT NULL,
    id_n5 int NOT NULL,
    cod_n5 nvarchar(50) NOT NULL,
    desc_n5 nvarchar(250) NOT NULL,
    id_n6 int NOT NULL,
    cod_n6 nvarchar(50) NOT NULL,
    desc_n6 nvarchar(250) NOT NULL,
    id_n7 int NOT NULL,
    cod_n7 nvarchar(50) NOT NULL,
    desc_n7 nvarchar(250) NOT NULL,
    id_n8 int NOT NULL,
    cod_n8 nvarchar(50) NOT NULL,
    desc_n8 nvarchar(250) NOT NULL,
    id_mnt_tipooperacion int NOT NULL,
    cod_mnt_tipooperacion nvarchar(25) NOT NULL,
    desc_mnt_tipooperacion nvarchar(100) NOT NULL,
    id_mnt_estadooperacion int NOT NULL,
    cod_mnt_estadooperacion nvarchar(25) NOT NULL,
    desc_mnt_estadooperacion nvarchar(100) NOT NULL,
    final int NOT NULL,
    "FechaAlta" datetime NOT NULL,
    "FechaProx" datetime NOT NULL,
    "FechaCierrePlanta" datetime,
    "FechaCierre" datetime,
    "SegundosPlanning" int NOT NULL,
    "SegundosPlanningOperarios" int NOT NULL,
    seg_operarios int NOT NULL,
    coste_operarios decimal(9,2) NOT NULL,
    coste_recambios decimal(9,2) NOT NULL,
    coste_externo decimal(9,2) NOT NULL,
    coste_otros decimal(9,2) NOT NULL,
    "TiempoRecuperacion" int,
    "TiempoRespuesta" int,
    "TiempoCurso" int,
    "PuntosRevision" int,
    "PuntosOK" int,
    "PuntosNOK" int,
    "Repetitiva" int NOT NULL,
    "AfectaCumplimiento" int NOT NULL,
    PRIMARY KEY(id_sum_mnt_maintenanceorder)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_sum_operator int IDENTITY(1,1) NOT NULL,
    dh_generacion datetime NOT NULL,
    id_maquina int NOT NULL,
    cod_maquina nvarchar(25) NOT NULL,
    desc_maquina nvarchar(250) NOT NULL,
    id_tipomaquina int NOT NULL,
    cod_tipomaquina nvarchar(25) NOT NULL,
    desc_tipomaquina nvarchar(50) NOT NULL,
    id_area int NOT NULL,
    cod_area nvarchar(25) NOT NULL,
    desc_area nvarchar(50) NOT NULL,
    id_fabrica int NOT NULL,
    cod_fabrica nvarchar(25) NOT NULL,
    desc_fabrica nvarchar(50) NOT NULL,
    id_empresa int NOT NULL,
    cod_empresa nvarchar(25) NOT NULL,
    desc_empresa nvarchar(50) NOT NULL,
    id_linea int NOT NULL,
    cod_linea nvarchar(50) NOT NULL,
    desc_linea nvarchar(250) NOT NULL,
    dia_productivo datetime,
    id_turno int NOT NULL,
    cod_turno nvarchar(100) NOT NULL,
    desc_turno nvarchar(100) NOT NULL,
    fecha_ini datetime NOT NULL,
    fecha_fin datetime NOT NULL,
    id_actividad int NOT NULL,
    cod_actividad nvarchar(25),
    desc_actividad nvarchar(50),
    id_producto int NOT NULL,
    cod_producto nvarchar(50) NOT NULL,
    desc_producto nvarchar(250) NOT NULL,
    id_productofinal int NOT NULL,
    cod_productofinal nvarchar(50) NOT NULL,
    desc_productofinal nvarchar(250) NOT NULL,
    id_fase int,
    cod_fase nvarchar(25),
    desc_fase nvarchar(50),
    id_his_fase int NOT NULL,
    cod_his_fase nvarchar(50),
    desc_his_fase nvarchar(250),
    id_his_of int NOT NULL,
    cod_of nvarchar(25) NOT NULL,
    id_operario int NOT NULL,
    cod_operario nvarchar(25) NOT NULL,
    desc_operario nvarchar(50) NOT NULL,
    id_tipooperario int,
    cod_tipooperario nvarchar(50) NOT NULL,
    desc_tipooperario nvarchar(50) NOT NULL,
    "id_actividadOperario" int,
    "cod_actividadOperario" nvarchar(25) NOT NULL,
    "desc_actividadOperario" nvarchar(50) NOT NULL,
    his_operario int,
    seg int,
    seg_cerr int NOT NULL,
    seg_prep int NOT NULL,
    seg_prod int NOT NULL,
    seg_mant int NOT NULL,
    seg_act6 int,
    seg_act7 int,
    seg_act8 int,
    seg_act9 int,
    seg_act10 int,
    seg_act11 int,
    seg_act12 int,
    seg_oper int,
    std_seg_oper int,
    unidades_total decimal(18,4),
    unidades_teo decimal(18,4),
    unidades_ok decimal(18,4) NOT NULL,
    unidades_nok decimal(18,4) NOT NULL,
    unidades_repro decimal(18,4) NOT NULL,
    unidades_cal decimal(18,4) NOT NULL,
    unidades_ok2 decimal(18,4) NOT NULL,
    unidades_nok2 decimal(18,4) NOT NULL,
    unidades_repro2 decimal(18,4) NOT NULL,
    unidades_cal2 decimal(18,4) NOT NULL,
    unidades1 decimal(18,4) NOT NULL,
    unidades2 decimal(18,4) NOT NULL,
    unidades3 decimal(18,4) NOT NULL,
    unidades4 decimal(18,4) NOT NULL,
    unidades5 decimal(18,4) NOT NULL,
    unidades6 decimal(18,4) NOT NULL,
    unidades7 decimal(18,4) NOT NULL,
    unidades8 decimal(18,4) NOT NULL,
    unidades9 decimal(18,4) NOT NULL,
    unidades10 decimal(18,4) NOT NULL,
    "objetivoOEE" decimal(18,2) NOT NULL,
    "M" int NOT NULL,
    "M_PNP" int NOT NULL,
    "M_PNP_PP" int NOT NULL,
    "PP" int NOT NULL,
    "PNP" int NOT NULL,
    "NAF" int NOT NULL,
    "DISP_C" decimal(10,1) NOT NULL,
    "REND_C" decimal(15,3) NOT NULL,
    "CAL_C" decimal(12,3) NOT NULL,
    "OEE_C" decimal(12,3) NOT NULL,
    "PPERF" int,
    "DCALIDAD" int NOT NULL,
    "PCALIDAD" int,
    "M_OK_TEO" int NOT NULL,
    "NPERF" int NOT NULL,
    "M_OKNOK_TEO" int,
    "M_TEO" int,
    "MOD_C" int,
    "UTIL_C" int,
    "UNIDADES_OKHP_C" int,
    "ProductividadNominal1" decimal(18,4),
    "ProductividadNominal2" decimal(18,4),
    "Cost_Worker" decimal(18,4),
    "Cost_WorkerH" decimal(18,4),
    validado tinyint NOT NULL,
    "usuarioValidacion" int,
    "fechaValidacion" datetime,
    PRIMARY KEY(id_sum_operator)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_sum_qualitycontrols" int IDENTITY(1,1) NOT NULL,
    "Fecha" datetime NOT NULL,
    "Dia_productivo" date,
    "Cod_turno" nvarchar(25),
    "Desc_turno" nvarchar(50),
    "Cod_cal_tipocontrol" nvarchar(50) NOT NULL,
    "Desc_cal_tipocontrol" nvarchar(50) NOT NULL,
    "Cod_cal_grupocontrol" nvarchar(25) NOT NULL,
    "Desc_cal_grupocontrol" nvarchar(50) NOT NULL,
    "Cod_cal_tipoplan" nvarchar(50) NOT NULL,
    "Desc_cal_tipoplan" nvarchar(200),
    "Cod_tipooperario" nvarchar(25),
    "Desc_tipooperario" nvarchar(50),
    cod_maquina nvarchar(25),
    desc_maquina nvarchar(250),
    cod_his_fase nvarchar(50),
    "Desc_his_fase" nvarchar(250),
    cod_of nvarchar(25),
    cod_producto nvarchar(50),
    desc_producto nvarchar(250),
    cod_operario nvarchar(25),
    desc_operario nvarchar(50),
    cod_cal_plancontrol nvarchar(50) NOT NULL,
    "Desc_cal_plancontrol" nvarchar(300) NOT NULL,
    "Valor_MAX1" decimal(10,2),
    "Valor_MAX2" decimal(10,2),
    "Valor_MIN1" decimal(10,2),
    "Valor_MIN2" decimal(10,2),
    "Valor" decimal(18,2) NOT NULL,
    "Valor_alfanumerico" nvarchar(max) NOT NULL,
    "Valor_list" nvarchar(max),
    "Resultado" int NOT NULL,
    "Comentario" nvarchar(max),
    "Validacion1" int NOT NULL,
    "ComentarioValidacion1" nvarchar(max),
    "UsuarioValidacion1" nvarchar(50),
    "FechaValidacion1" datetime,
    "Validacion2" int NOT NULL,
    "ComentarioValidacion2" nvarchar(max),
    "UsuarioValidacion2" nvarchar(50),
    "FechaValidacion2" datetime,
    "Suma" decimal(18,2) NOT NULL,
    "Media" decimal(18,2) NOT NULL,
    "Recorrido" decimal(18,2) NOT NULL,
    "Cod_cal_instrumentomedida" nvarchar(25),
    "Desc_cal_instrumentomedida" nvarchar(50),
    "Marca" varchar(50),
    "Modelo" varchar(50),
    "NumSerie" varchar(50),
    "Precision" varchar(50),
    "Cod_tipoplanning" nvarchar(50),
    "Desc_tipoplanning" nvarchar(200),
    PRIMARY KEY(Id_sum_qualitycontrols)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_sum_workcenter int IDENTITY(1,1) NOT NULL,
    dh_generacion datetime NOT NULL,
    id_maquina int NOT NULL,
    cod_maquina nvarchar(25) NOT NULL,
    desc_maquina nvarchar(100),
    "MaquinaPrincipal" tinyint NOT NULL,
    id_tipomaquina int NOT NULL,
    cod_tipomaquina nvarchar(25) NOT NULL,
    desc_tipomaquina nvarchar(50),
    id_area int NOT NULL,
    cod_area nvarchar(25) NOT NULL,
    desc_area nvarchar(50),
    id_fabrica int NOT NULL,
    cod_fabrica nvarchar(25) NOT NULL,
    desc_fabrica nvarchar(50),
    id_empresa int NOT NULL,
    cod_empresa nvarchar(25) NOT NULL,
    desc_empresa nvarchar(50),
    id_linea int NOT NULL,
    cod_linea nvarchar(50) NOT NULL,
    desc_linea nvarchar(250) NOT NULL,
    dia_productivo datetime NOT NULL,
    id_turno int NOT NULL,
    cod_turno nvarchar(25) NOT NULL,
    desc_turno nvarchar(50),
    fecha_inicio datetime NOT NULL,
    fecha_fin datetime NOT NULL,
    id_actividad int NOT NULL,
    cod_actividad nvarchar(25) NOT NULL,
    desc_actividad nvarchar(50),
    id_producto int NOT NULL,
    cod_producto nvarchar(50) NOT NULL,
    desc_producto nvarchar(250),
    id_fase int NOT NULL,
    cod_fase nvarchar(50),
    desc_fase nvarchar(250),
    "Id_productofinal" int NOT NULL,
    "Cod_productofinal" nvarchar(50),
    "Desc_productofinal" nvarchar(250),
    id_his_fase int NOT NULL,
    cod_his_fase nvarchar(50),
    desc_his_fase nvarchar(250),
    id_his_of int NOT NULL,
    cod_of nvarchar(50) NOT NULL,
    fecha_ini_of datetime,
    seg int NOT NULL,
    seg_cerr int,
    seg_prep int,
    seg_prod int,
    seg_mant int,
    unidades_planning decimal(18,4) NOT NULL,
    unidades_total decimal(18,4) NOT NULL,
    unidades_teo decimal(18,4),
    unidades_ok decimal(18,4) NOT NULL,
    unidades_nok decimal(18,4) NOT NULL,
    unidades_repro decimal(18,4),
    unidades_cal decimal(18,4),
    unidades_ok2 decimal(18,4) NOT NULL,
    unidades_nok2 decimal(18,4) NOT NULL,
    unidades_repro2 decimal(18,4),
    unidades_cal2 decimal(18,4),
    unidades1 decimal(18,4),
    unidades2 decimal(18,4),
    unidades3 decimal(18,4),
    unidades4 decimal(18,4),
    unidades5 decimal(18,4),
    unidades6 decimal(18,4),
    unidades7 decimal(18,4),
    unidades8 decimal(18,4),
    unidades9 decimal(18,4),
    unidades10 decimal(18,4),
    his_maquina int,
    numofs int,
    "DISP_C" decimal(18,1),
    "REND_C" decimal(18,3),
    "CAL_C" decimal(18,3),
    "OEE_C" decimal(18,3),
    "M" int NOT NULL,
    "PP" int NOT NULL,
    "PNP" int NOT NULL,
    "NAF" int NOT NULL,
    "M_PNP" int NOT NULL,
    "M_PNP_PP" int NOT NULL,
    "M_OK_TEO" int NOT NULL,
    "M_OKNOK_TEO" int NOT NULL,
    "M_TEO" int NOT NULL,
    "M_NOK_TEO" int NOT NULL,
    "NPERF" int NOT NULL,
    "PPERF" int NOT NULL,
    "DCALIDAD" int NOT NULL,
    "PCALIDAD" int NOT NULL,
    "MOD_C" int,
    "UTIL_C" int,
    "UNIDADES_OKHP_C" int,
    "objetivoOEE" decimal(18,3),
    seg_oper int,
    std_seg_oper int,
    "Cost_WorkGroup" decimal(18,4) NOT NULL,
    "Cost_WorkGroupH" decimal(18,4) NOT NULL,
    "ProductividadNominal1" decimal(18,4) NOT NULL,
    "ProductividadNominal2" decimal(18,4) NOT NULL,
    "ProduccionFinal" decimal(18,4) NOT NULL,
    "ProduccionNokFinal" decimal(18,4) NOT NULL,
    "OperFinal" int NOT NULL,
    "ObjetivoOEE_area" decimal(18,3) NOT NULL,
    "CosteUnitarioTeo" decimal(10,4) NOT NULL,
    PRIMARY KEY(id_sum_workcenter)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Accion" char(1),
    "Desc_tabla" varchar(128),
    "CampoClave" varchar(1000),
    "ValorClave" varchar(1000),
    "Desc_campo" varchar(128),
    "Valor_old" varchar(1000),
    "Valor_new" varchar(1000),
    "Fecha" datetime,
    "Usuario" varchar(128),
    "NombrePc" varchar(256)
);
    id varchar(100) NOT NULL,
    "idFinal" varchar(100),
    "idNivel" varchar(100),
    id_config int,
    cod_config nvarchar(100),
    valor nvarchar(max) NOT NULL,
    "tablaCap" nvarchar(100) NOT NULL,
    nivel bigint,
    "LastUpdate" datetime,
    "cod_ConfigModulo" nvarchar(100),
    "TablaFinal" nvarchar(200) NOT NULL,
    "id_ConfigTablaFinal" int,
    "codFinal" varchar(100),
    "id_TipoConfigTabla" int NOT NULL,
    PRIMARY KEY(id)
);
    id_desarrollo int IDENTITY(1,1) NOT NULL,
    cod_desarrollo nvarchar(50) NOT NULL,
    desc_desarrollo nvarchar(100),
    fecha_creacion datetime NOT NULL,
    host_name varchar(100),
    comentario nvarchar(max),
    activo tinyint NOT NULL,
    PRIMARY KEY(id_desarrollo)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_desarrollo_elemento int IDENTITY(1,1) NOT NULL,
    id_desarrollo bigint,
    cod_elemento nvarchar(100),
    tabla nvarchar(20),
    host_name varchar(100),
    comentario varchar(500),
    PRIMARY KEY(id_desarrollo_elemento),
    CONSTRAINT FK_sys_desarrollo_elemento_sys_desarrollo FOREIGN key(id_desarrollo) REFERENCES sys_desarrollo(id_desarrollo)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_desarrolloSQL" int IDENTITY(1,1) NOT NULL,
    "cod_desarrolloSQL" nvarchar(50) NOT NULL,
    "desc_desarrolloSQL" nvarchar(100),
    sql varchar(max),
    fecha_creacion datetime NOT NULL,
    host_name varchar(100),
    comentario nvarchar(max),
    activo tinyint NOT NULL,
    id_desarrollo bigint,
    "Orden" int NOT NULL,
    PRIMARY KEY(id_desarrolloSQL),
    CONSTRAINT FK_sys_desarrollSQ_sys_desarrollo FOREIGN key(id_desarrollo) REFERENCES sys_desarrollo(id_desarrollo)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_df int IDENTITY(1,1) NOT NULL,
    cod_df nvarchar(45) NOT NULL,
    desc_df nvarchar(60) NOT NULL,
    "Activo" smallint NOT NULL,
    "Data" nvarchar(max),
    fecha datetime,
    id_tipodf int NOT NULL,
    "Standard" smallint NOT NULL,
    "Demo" smallint NOT NULL,
    "Modificado" nvarchar(100),
    "Bloqueado" nvarchar(100),
    "GlobalScript" smallint,
    "Template" tinyint NOT NULL,
    "ProjectVersion" int NOT NULL,
    "Status" smallint,
    "Comments" nvarchar(max) NOT NULL,
    "Package" nvarchar(100) NOT NULL,
    "PackageOriginal" int NOT NULL,
    PRIMARY KEY(id_df)
);
EXEC sp_addextendedproperty
    "Id_dq" int IDENTITY(1,1) NOT NULL,
    "Cod_dq" nvarchar(70) NOT NULL,
    "Desc_dq" nvarchar(100) NOT NULL,
    "Menu" nvarchar(60) NOT NULL,
    "Consulta" nvarchar(max),
    "Nivel_minimo" bigint NOT NULL,
    "Id_programa" int NOT NULL,
    "Orden" int NOT NULL,
    "Icono" bigint NOT NULL,
    "Tipo" smallint NOT NULL,
    "isWebEnabled" smallint NOT NULL,
    "isSubMenu" smallint NOT NULL,
    "Activo" smallint NOT NULL,
    "NivelMenu" smallint NOT NULL,
    "Standard" smallint NOT NULL,
    "Demo" smallint NOT NULL,
    "VBCode" nvarchar(max),
    "IconoImagen" varbinary(max),
    "Cod_grupo" nvarchar(20),
    "Fecha" datetime NOT NULL,
    "Layout" nvarchar(max),
    "Modificado" nvarchar(100),
    "DashboardAdmin" nvarchar(150),
    "MinDuration" int NOT NULL,
    "MaxDuration" int NOT NULL,
    "Template" tinyint NOT NULL,
    "Visible" smallint NOT NULL,
    "ProjectVersion" int NOT NULL,
    "Status" smallint,
    "Comments" nvarchar(max) NOT NULL,
    "Package" nvarchar(100) NOT NULL,
    "PackageOriginal" int NOT NULL,
    "LastExecution" datetime,
    "LastDuration" int NOT NULL,
    "LastStatusCode" smallint NOT NULL,
    "LastStatusDesc" nvarchar(400) NOT NULL,
    "IsAppEnabled" bit NOT NULL,
    "isSettings" tinyint NOT NULL,
    PRIMARY KEY(Id_dq)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_dq_layoutgraf" int IDENTITY(1,1) NOT NULL,
    "Cod_dq" nvarchar(70) NOT NULL,
    "Desc_dq_layoutgraf" nvarchar(60),
    "LayoutData" varbinary(max) NOT NULL,
    "TipoGraf" bigint NOT NULL,
    "Size" bigint NOT NULL,
    "Cod_usuario" nvarchar(25),
    "Activo" smallint NOT NULL,
    "Desc_dq_layoutgrid" nvarchar(60),
    "ProjectVersion" int NOT NULL,
    "Status" smallint,
    "Fecha" datetime,
    "Modificado" nvarchar(100),
    PRIMARY KEY(Id_dq_layoutgraf)
);
EXEC sp_addextendedproperty
    id_dq_layoutgrid int IDENTITY(1,1) NOT NULL,
    desc_dq_layoutgrid nvarchar(60) NOT NULL,
    activo smallint,
    "layoutData" nvarchar(max) NOT NULL,
    "tipoGrid" bigint,
    cod_dq nvarchar(70) NOT NULL,
    cod_usuario nvarchar(25),
    "ProjectVersion" int NOT NULL,
    "Status" smallint,
    "Fecha" datetime,
    "Modificado" nvarchar(100),
    PRIMARY KEY(id_dq_layoutgrid)
);
EXEC sp_addextendedproperty
    "Id_dq_report" int IDENTITY(1,1) NOT NULL,
    "Cod_dq" nvarchar(70) NOT NULL,
    "Desc_dq_report" nvarchar(60),
    "Report" varbinary(max),
    "Size" bigint NOT NULL,
    "Cod_usuario" nvarchar(25),
    "Activo" smallint NOT NULL,
    "Datos" nvarchar(max),
    "ProjectVersion" int NOT NULL,
    "Status" smallint,
    "Fecha" datetime,
    PRIMARY KEY(Id_dq_report)
);
EXEC sp_addextendedproperty
    id_help int IDENTITY(1,1) NOT NULL,
    "HelpEntity" nvarchar(250) NOT NULL,
    "HelpCode" nvarchar(100) NOT NULL,
    "HelpData" nvarchar(max),
    "HelpLink" nvarchar(250),
    "Language" nvarchar(5) NOT NULL,
    "lastUpdate" datetime NOT NULL,
    PRIMARY KEY(id_help)
);
    id_language int IDENTITY(1,1) NOT NULL,
    cod_language nvarchar(25) NOT NULL,
    desc_language nvarchar(100) NOT NULL,
    activo tinyint NOT NULL,
    "isDefault" tinyint NOT NULL,
    "isCorporate" tinyint NOT NULL,
    PRIMARY KEY(id_language)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_log" int IDENTITY(1,1) NOT NULL,
    "Desc_log" nvarchar(max) NOT NULL,
    "Autor" nvarchar(max) NOT NULL,
    "Programa" smallint NOT NULL,
    "TipoLog" nvarchar(50) NOT NULL,
    "Origen" nvarchar(50) NOT NULL,
    "Fecha" datetime NOT NULL,
    "Cod_tabla" nvarchar(50),
    "Id_tabla" bigint
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "id_MapexInstallConfiguration" int IDENTITY(1,1) NOT NULL,
    "Cod_MapexInstallConfiguration" nvarchar(50) NOT NULL,
    "Desc_MapexInstallConfiguration" nvarchar(100),
    "Obs_MapexInstallConfiguration" nvarchar(max),
    "Activo" tinyint NOT NULL,
    PRIMARY KEY(id_MapexInstallConfiguration)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id int IDENTITY(1,1) NOT NULL,
    id_translate nvarchar(400) NOT NULL,
    id_language nvarchar(5) NOT NULL,
    "Translated" nvarchar(max) NOT NULL,
    "pendingToTranslate" bit NOT NULL,
    PRIMARY KEY(id_translate,id_language)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_mensaje" int IDENTITY(1,1) NOT NULL,
    "Guid" char(36),
    "Titulo" nvarchar(100),
    "Mensaje" nvarchar(max),
    "MailTo" nvarchar(50),
    "MailFrom" nvarchar(50),
    "NombreAdjunto" nvarchar(80),
    "Adjunto" varbinary(max),
    "Fecha_Creacion" datetime NOT NULL,
    "Fecha_Envio" datetime,
    "Fecha_Visto" datetime,
    "Ack" tinyint NOT NULL,
    "Id_UsuarioOrigen" int NOT NULL,
    "Id_UsuarioDestino" int NOT NULL,
    PRIMARY KEY(Id_mensaje)
);
    "Id_usuario" int NOT NULL,
    "Cod_menuUsuario" nvarchar(100) NOT NULL,
    "Desc_menuUsuario" nvarchar(150) NOT NULL,
    id_programa smallint NOT NULL,
    "AccesoDirecto" smallint NOT NULL,
    "OrdenAccesoDirecto" int NOT NULL,
    "Activo" smallint NOT NULL,
    "NumOpenDq" int NOT NULL,
    PRIMARY KEY(Cod_menuUsuario,id_programa),
    CONSTRAINT FK_sys_menuusuario_sys_usuario FOREIGN key("Id_usuario") REFERENCES sys_usuario("Id_usuario")
);
EXEC sp_addextendedproperty
    "Id_package" int IDENTITY(1,1) NOT NULL,
    "Cod_package" nvarchar(50) NOT NULL,
    "CreationDate" datetime NOT NULL,
    "User" nvarchar(50) NOT NULL,
    "Version" int NOT NULL,
    "Activo" smallint NOT NULL,
    "Comments" nvarchar(max) NOT NULL,
    "Summary" nvarchar(max) NOT NULL,
    "URL" nvarchar(500) NOT NULL,
    "ChangeLog" nvarchar(max),
    "EditionDate" datetime,
    desc_package nvarchar(250),
    "id_tipoPackage" int NOT NULL,
    PRIMARY KEY(Id_package),
    CONSTRAINT FK_sys_package_sys_tipoPackage FOREIGN key("id_tipoPackage") REFERENCES "sys_tipoPackage"("id_tipoPackage")
);
EXEC sp_addextendedproperty
    id_package_elemento int IDENTITY(1,1) NOT NULL,
    cod_package nvarchar(50) NOT NULL,
    cod_dq nvarchar(70),
    cod_df nvarchar(45),
    PRIMARY KEY(id_package_elemento)
);
    id_package_preset int IDENTITY(1,1) NOT NULL,
    id_package int NOT NULL,
    id_preset int NOT NULL,
    PRIMARY KEY(id_package_preset),
    CONSTRAINT FK_sys_package_preset_sys_package FOREIGN key(id_package) REFERENCES sys_package("Id_package"),
    CONSTRAINT FK_sys_package_preset_sys_preset FOREIGN key(id_preset) REFERENCES sys_preset(id_preset)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_packageSQL" int IDENTITY(1,1) NOT NULL,
    "Id_package" int NOT NULL,
    "Cod_packageSQL" nvarchar(50) NOT NULL,
    "Desc_packageSQL" nvarchar(50) NOT NULL,
    "Package" nvarchar(50) NOT NULL,
    "Version" int NOT NULL,
    "SQL" nvarchar(max) NOT NULL,
    "Executed" tinyint NOT NULL,
    "ExecutionDate" datetime,
    "Orden" int NOT NULL,
    PRIMARY KEY(Id_packageSQL),
    CONSTRAINT FK_sys_packageSQL FOREIGN key("Id_package") REFERENCES sys_package("Id_package")
);
    "Id_parametro" int IDENTITY(1,1) NOT NULL,
    "Cod_parametro" nvarchar(50) NOT NULL,
    "Desc_parametro" nvarchar(100),
    "Activo" smallint NOT NULL,
    "Grupo_parametro" nvarchar(100) NOT NULL,
    "Observaciones" nvarchar(max) NOT NULL,
    "Parametro" nvarchar(max),
    "Basic" tinyint,
    PRIMARY KEY(Id_parametro)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "ComputerName" nvarchar(50) NOT NULL,
    "InstallDate" datetime NOT NULL,
    "LastNetUser" nvarchar(50) NOT NULL,
    "LastUser" nvarchar(50) NOT NULL,
    "LastIP" nvarchar(15) NOT NULL,
    "LastDate" datetime,
    "Version" nvarchar(15) NOT NULL,
    "Update" bigint NOT NULL,
    "IdPrograma" bigint NOT NULL,
    "Activo" smallint NOT NULL,
    "InitialDQ" nvarchar(50),
    "Observaciones" varchar(500),
    "Parametros" nvarchar(2000),
    "ActivationCode" nvarchar(50),
    "License" nvarchar(500),
    "ProjectVersion" int NOT NULL,
    "Path" nvarchar(400),
    "LastLogs" nvarchar(max),
    "LastErrorCode" smallint NOT NULL,
    "UpdatePeriod" int NOT NULL,
    "id_MapexInstallConfiguration" int NOT NULL,
    PRIMARY KEY(ComputerName,IdPrograma)
);
EXEC sp_addextendedproperty
    "Id_perfilusuario" int IDENTITY(1,1) NOT NULL,
    "Cod_perfilusuario" nvarchar(25) NOT NULL,
    "Desc_perfilusuario" nvarchar(50) NOT NULL,
    "Id_mnt_area" int NOT NULL,
    "Activo" tinyint NOT NULL,
    PRIMARY KEY(Id_perfilusuario)
);
    id_preset int IDENTITY(1,1) NOT NULL,
    cod_preset nvarchar(50) NOT NULL,
    desc_preset nvarchar(max) NOT NULL,
    PRIMARY KEY(id_preset)
);
    id_config_preset int IDENTITY(1,1) NOT NULL,
    id_config int NOT NULL,
    id_preset int NOT NULL,
    valor nvarchar(max) NOT NULL,
    PRIMARY KEY(id_config_preset)
);
    id_process int IDENTITY(1,1) NOT NULL,
    cod_process nvarchar(50) NOT NULL,
    desc_process nvarchar(200),
    activo smallint NOT NULL,
    id_template int NOT NULL,
    PRIMARY KEY(id_process),
    CONSTRAINT FK_sys_process_sys_template FOREIGN key(id_template) REFERENCES sys_template("Id_template")
);
    "ProjectVersion" int NOT NULL,
    "Fecha" datetime,
    "Cod_usuario" nvarchar(50),
    "Comments" nvarchar(max),
    "Status" smallint NOT NULL,
    "Activo" smallint NOT NULL,
    "ParentVersion" int NOT NULL,
    PRIMARY KEY(ProjectVersion)
);
    "id_projectVersionSQL" int IDENTITY(1,1) NOT NULL,
    sql nvarchar(max),
    fecha datetime,
    cod_usuario nvarchar(50),
    comments nvarchar(max),
    "manualExecution" tinyint NOT NULL,
    "ProjectVersion" int NOT NULL,
    "Cod_projectVersionSQL" nvarchar(50) NOT NULL,
    "Activo" tinyint NOT NULL,
    PRIMARY KEY(id_projectVersionSQL)
);
    id_server int IDENTITY(1,1) NOT NULL,
    cod_server nvarchar(50),
    server nvarchar(100),
    "dbName" nvarchar(50),
    activo smallint NOT NULL,
    image nvarchar(250),
    mapurl nvarchar(500),
    "ProjectVersion" int NOT NULL,
    comments nvarchar(max) NOT NULL,
    user_id nvarchar(50),
    password nvarchar(50),
    consolidation tinyint,
    PRIMARY KEY(id_server)
);
EXEC sp_addextendedproperty
    form nvarchar(50) NOT NULL,
    orden bigint NOT NULL,
    suborden nvarchar(50) NOT NULL,
    sql varchar(max) NOT NULL,
    "Observaciones" nvarchar(50) NOT NULL,
    "Activo" smallint NOT NULL,
    id_programa int NOT NULL,
    tipobdd bigint NOT NULL,
    PRIMARY KEY(form,orden,suborden,tipobdd)
);
EXEC sp_addextendedproperty
    "CodVariable" nvarchar(200) NOT NULL,
    value1 nvarchar(200),
    value2 nvarchar(200),
    PRIMARY KEY(CodVariable)
);
    "Id_template" int IDENTITY(1,1) NOT NULL,
    "Cod_template" nvarchar(50) NOT NULL,
    "CreationDate" datetime NOT NULL,
    "User" nvarchar(50) NOT NULL,
    "Version" int NOT NULL,
    "Activo" smallint NOT NULL,
    "Comments" nvarchar(max) NOT NULL,
    "Summary" nvarchar(max) NOT NULL,
    "ChangeLog" nvarchar(max),
    "EditionDate" datetime,
    PRIMARY KEY(Id_template)
);
    id_template_package int IDENTITY(1,1) NOT NULL,
    id_template int NOT NULL,
    id_package int NOT NULL,
    PRIMARY KEY(id_template_package)
);
    id_tipodf int IDENTITY(1,1) NOT NULL,
    cod_tipodf nvarchar(50) NOT NULL,
    desc_tipodf nvarchar(200),
    es_global smallint NOT NULL,
    activo smallint NOT NULL,
    PRIMARY KEY(id_tipodf)
);
    "id_tipoPackage" int IDENTITY(1,1) NOT NULL,
    "cod_tipoPackage" nvarchar(50) NOT NULL,
    "desc_tipoPackage" nvarchar(250),
    color int NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_tipoPackage)
);
    "translationId" int IDENTITY(1,1) NOT NULL,
    "translationCode" nvarchar(255) NOT NULL,
    translation nvarchar(max) NOT NULL,
    "languageISO" varchar(10) NOT NULL,
    entity nvarchar(100) NOT NULL,
    active bit NOT NULL,
    "pendingToTranslate" bit,
    comment nvarchar(1024) NOT NULL,
    "lastUpdate" datetime NOT NULL,
    "translationCustom" varchar(max) NOT NULL,
    PRIMARY KEY(translationId)
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    "Id_usuario" int IDENTITY(1,1) NOT NULL,
    "Cod_usuario" nvarchar(50) NOT NULL,
    "Desc_usuario" nvarchar(100) NOT NULL,
    "Password" nvarchar(50),
    "Permiso" int NOT NULL,
    "Id_tipousuario" int NOT NULL,
    "Email" nvarchar(150),
    "Activo" smallint NOT NULL,
    "Parametros" nvarchar(2000),
    "Id_operario" int,
    "Observaciones" nvarchar(500),
    "Id_perfilusuario" int NOT NULL,
    "Id_mnt_departamento" int NOT NULL,
    "Id_mnt_proveedor" int,
    "FiltroDatosArea" int NOT NULL,
    "UsuarioPerfil" tinyint NOT NULL,
    PRIMARY KEY(Id_usuario),
    CONSTRAINT FK_sys_usuario_cfg_operario FOREIGN key("Id_operario") REFERENCES cfg_operario("Id_operario")
);
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
EXEC sp_addextendedproperty
    id_usuarioperfil int IDENTITY(1,1) NOT NULL,
    "Id_usuario" int NOT NULL,
    "Id_perfil" int NOT NULL,
    activo tinyint NOT NULL,
    PRIMARY KEY(id_usuarioperfil)
);
    "winUser" nvarchar(450) NOT NULL,
    "CreationDate" datetime NOT NULL,
    "LastDate" datetime NOT NULL,
    "LastComputerName" nvarchar(500),
    "Parametros" nvarchar(max),
    "Update" smallint NOT NULL,
    "InitialDQ" nvarchar(50),
    PRIMARY KEY(winUser)
);
EXEC sp_addextendedproperty
    name nvarchar(128) NOT NULL,
    principal_id int NOT NULL,
    diagram_id int IDENTITY(1,1) NOT NULL,
    version int,
    definition varbinary(max),
    PRIMARY KEY(diagram_id)
);
    cod_producto varchar(50),
    rendimientonominal decimal(15,5),
    fase varchar(50),
    maquina varchar(50)
);
    cod_of nvarchar(50) NOT NULL,
    fecha_ini datetime,
    fecha_fin datetime,
    PRIMARY KEY(cod_of)
);
    cod_prod text,
    cod_fase text,
    cod_maq text,
    velo decimal(18,2)
);
    "Id_trig_his_prod" int IDENTITY(1,1) NOT NULL,
    "Id_his_prod" int NOT NULL,
    "Unidades_ok" int NOT NULL,
    "Unidades_nok" int NOT NULL,
    "Unidades_repro" int NOT NULL,
    "Unidades_cal" int NOT NULL,
    erp smallint NOT NULL,
    "Id_his_fase" int NOT NULL,
    "Total_seg" int NOT NULL,
    "Fecha_ini" datetime,
    "Fecha_fin" datetime,
    "Id_operario" int NOT NULL,
    "Id_actividad" int NOT NULL,
    "Dia_productivo" datetime,
    "Id_turno" int NOT NULL,
    "Id_maquina" int NOT NULL,
    PRIMARY KEY(Id_trig_his_prod)
);
    "Id_trig_his_prod_defecto" int IDENTITY(1,1) NOT NULL,
    "Id_trig_his_prod" int NOT NULL,
    "Id_his_prod_defecto" int NOT NULL,
    "Unidades" int NOT NULL,
    "Erp" tinyint NOT NULL,
    PRIMARY KEY(Id_trig_his_prod_defecto)
);