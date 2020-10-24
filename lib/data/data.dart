
import 'package:projeto_diabetes/Model/DiagnosticoClass.dart';
import 'package:projeto_diabetes/Model/DiagnosticoDmClass.dart';
import 'package:projeto_diabetes/Model/agulha.dart';
import 'package:projeto_diabetes/Model/avaliation.dart';
import 'package:projeto_diabetes/Model/hipoglicemia.dart';



final DiagnosticoDmClass diagnosticoDmColumns = DiagnosticoDmClass(exame:'Exame', normal:'Normal' , prediabetes: 'Pré-diabetes', diabetes:'Diabetes');

final List<DiagnosticoDmClass> diagnosticosDm =[
  DiagnosticoDmClass(exame:'Glicemia de jejum(mg/dL)' , normal: '< 100', prediabetes:'100 a 125', diabetes:'≥ 126'),
  DiagnosticoDmClass(exame: 'Glicemia 2 horas após TOTG com 75g de glicose(mg/dL)', normal: '< 140' , prediabetes:'140 a 199', diabetes:'≥ 200'),
  DiagnosticoDmClass(exame: 'Hemoglobina Glicada (%)', normal: '< 5,7', prediabetes:'5,7 a 6,4', diabetes:'≥ 6,5'),
];

final DiagnosticoClass diagnosticoColumns = DiagnosticoClass(nada:'', glicoseEmJejum:'Glicose em\n Jejum' , glicose2h: 'Glicose 2h\napós sobrecarga\ncom 75g de\nglicose(mg/dL)', glicoseAoAcaso:'Glicose ao acaso(mg/dL)', hba1c: 'HbA1c(%)',observacoes:'Observações' );

final List<DiagnosticoClass> diagnosticos =[
  DiagnosticoClass(nada:'Normoglicemia' , glicoseEmJejum: '< 100', glicose2h:'< 140', glicoseAoAcaso:'-', hba1c:'< 5,7', observacoes:'OMS emprega valor de corte de 110mg/dL para normalidade da glicose em jejum'),
  DiagnosticoClass(nada: 'Pré-diabetes ou risco aumentado para DM', glicoseEmJejum: '≥ 100 e < 126*' , glicose2h:'≥ 140 e < 200#', glicoseAoAcaso:'-', hba1c:'≥ 5,7 e < 6,5', observacoes:'Se positivo qualquer um dos parâmetros, confirma diagnóstico de pré-diabetes'),
  DiagnosticoClass(nada: 'Diabetes estabelecido', glicoseEmJejum: '≥ 126', glicose2h:'≥ 200', glicoseAoAcaso:'≥ 200 com sintomas inequívocos de hiperglicemia', hba1c:'≥ 6,5', observacoes:'Se positivo qualquer um dos parâmetros, confirma diagnóstico de DM. Método de HbA1c deve ser padronizado. Na ausência de sintomas de hiperglicemia, é necessário confirmar o diagnóstico pela repetição de testes.'),
];

final List<String> avaliationColumns = [
  "",
  "Glicose em jejum(mg/dL)",
  "Glicose 2 horas aṕos sobrecarga com 75 g de glicose (mg/dL)",
  "Glicose ao acaso(mg/dL)",
  "HbA1c(%)",
  "Observações"
];

final List<Avaliation> avaliation = [
Avaliation(none: "Normoglicemia", glicose:"<100", glicose2horas: "< 140", glicoseacaso: "-", hba1ac: "<5,7", observacoes: "OMS emprega valor de corte de 110 mg/dL para normalidade da glicose em jejum.²"),
Avaliation(none: "Pré diabetes ou risco aumentado para DM", glicose: "≥ 100 e < 126*", glicose2horas: "≥ 140 e < 200*", glicoseacaso: "-", hba1ac: "≥ 5,7 e < 6,5", observacoes: "Positividade de qualquer dos parâmetros confirma diagnóstico de pré-diabetes"),
Avaliation(none: "Diabetes estabelecido", glicose: "≥ 126", glicose2horas: "≥ 200", glicoseacaso: "≥ 200 com sintomas inequívocos de hiperglicemia", hba1ac: "≥ 6,5", observacoes: "Positividade de qualquer dos parâmetros confirma diagnóstico de DM. Método de HbA1c deve ser padronizado. Na ausência de sintomas de hiperglicemia é necessário confirmar o diagnóstico pela repetição de testes.")
];


final Agulha agulhaColumns = Agulha(comprimento:"Agulha", indicacao: "Indicação", pregaSubcutanea: "Prega subcutânea", angulo: "Ângulo de inserção de agulha", observacoes: "Observações importantes" );

final List<Agulha> agulhaRows =[
 Agulha(comprimento:"4 mm", indicacao: "Todos os indivíduos", pregaSubcutanea: "Dispensável, exceto para crianças com menos de 6 anos", angulo: "90º", observacoes: "Realizar prega subcutânea em indivíduos com escassez de tecido subcutâneo nos locais de aplicação" ),
 Agulha(comprimento:"5 mm", indicacao: "Todos os indivíduos", pregaSubcutanea: "Dispensável, exceto para crianças com menos de 6 anos", angulo: "90º", observacoes: "Realizar prega subcutânea em indivíduos com escassez de tecido subcutâneo nos locais de aplicação" ),
 Agulha(comprimento:"6 mm", indicacao: "Todos os indivíduos", pregaSubcutanea: "Indispensável", angulo: "90º para adultos e 45º para crianças e adolescentes", observacoes: "Estabelecer ângulo de 45º em adultos com escassez de tecido subcutâneo nos locais de aplicação, para evitar aplicação IM" ),
 Agulha(comprimento:"8 mm", indicacao: "Não indicada para crianças e adolescentes; risco de aplicação IM", pregaSubcutanea: "Indispensável", angulo: "90º para adultos e 45º para crianças e adolescentes", observacoes: "Estabelecer ângulo de 45º em adultos com escassez de tecido subcutâneo nos locais de aplicação, para evitar aplicação IM" ),
 Agulha(comprimento:"12 a 13 mm", indicacao: "Risco de aplicação IM em todos os indivíduos", pregaSubcutanea: "Indispensável", angulo: "45º", observacoes: "Alto risco de aplicação IM em todos os indivíduos" ),
];

final Hipoglicemia hipoglicemiaColumns = Hipoglicemia(nivel: "Nível", valoresGlicose: "Valores de\nglicose", observacoes: "Observações");

final List<Hipoglicemia> hipoglicemiaRows =[
  Hipoglicemia(nivel: "valor de alerta hipoglicêmico", valoresGlicose: "≤ 70 mg/dL", observacoes: "Requer ingestão de carboidratos simples e ajuste da terapêutica"),
  Hipoglicemia(nivel: "hipoglicemia clinicamente significativa", valoresGlicose: "< 54 mg/dL", observacoes: "Nível glicêmico significativamente baixo"),
  Hipoglicemia(nivel: "hipoglicemia severa", valoresGlicose: "Nenhum valor específico de glicemia", observacoes: "Prejuízo cognitivo importante que requer assitência externa"),
];
