carga_dados.sql
CREATE TABLE IF NOT EXISTS cuiaba_indicadores_sociais (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ano_referencia INTEGER,
    indicador_categoria TEXT,
    descricao_metrica TEXT,
    valor_absoluto REAL,
    percentual_estimado REAL
);

INSERT INTO cuiaba_indicadores_sociais 
(ano_referencia, indicador_categoria, descricao_metrica, valor_absoluto, percentual_estimado) 
VALUES
(2022, 'Demografia', 'População Total Residente (IBGE)', 650991, 100.0),
(2022, 'Demografia', 'Densidade Demográfica (hab/km²)', 185.0, NULL),
(2022, 'Saneamento', 'População Atendida com Água Tratada (SNIS)', 638000, 98.0),
(2022, 'Saneamento', 'População Atendida com Esgotamento Sanitário', 520000, 79.8),
(2022, 'Saneamento', 'Volume de Esgoto Tratado em Relação ao Gerado', NULL, 68.5),
(2022, 'Habitação', 'População Residente em Áreas de Aglomerados Subnormais', 78500, 12.0),
(2022, 'Saúde', 'Internações por Doenças de Veiculação Hídrica (DATASUS)', 1420, NULL),
(2022, 'Saúde', 'Taxa de Mortalidade Infantil (por mil nascidos vivos)', NULL, 11.2),
(2022, 'Renda', 'População em Situação de Extrema Pobreza / CadÚnico', 42300, 6.5),
(2022, 'Renda', 'Rendimento Médio Mensal Domiciliar per Capita (R$)', 2150.0, NULL),
(2022, 'Educação', 'Taxa de Escolarização de 6 a 14 Anos (%)', NULL, 97.4);
