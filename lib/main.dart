import 'package:flutter/material.dart';
import 'package:vida_leve/pages/anamnese.dart';
import 'package:vida_leve/pages/anamnese_educacao_fisica.dart';
import 'package:vida_leve/pages/anamnese_farmacia.dart';
import 'package:vida_leve/pages/anamnese_geral.dart';
import 'package:vida_leve/pages/anamnese_nutricao.dart';
import 'package:vida_leve/pages/anamnese_psicologia.dart';
import 'package:vida_leve/pages/cadastro_pacientes.dart';
import 'package:vida_leve/pages/calendar_page.dart';
import 'package:vida_leve/pages/login_page.dart';
import 'package:vida_leve/pages/cadastro_consulta.dart';
import 'package:vida_leve/pages/pacientes.dart';
import 'package:vida_leve/pages/perfil_paciente_page.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:firebase_core/firebase_core.dart';

import 'pages/home_page.dart';

void main() async {
      WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData telaPrincipal = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: telaPrincipal.copyWith(
          colorScheme: telaPrincipal.colorScheme.copyWith(
              primary: const Color.fromRGBO(0, 168, 150, 100),
              secondary: const Color.fromRGBO(2, 128, 144, 100))),
      initialRoute: "/login",
      routes: {
        "/login": (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
        "/pacientes": (context) => const Pacientes(),
        "/cadastro_pacientes": (context) => const CadastroPacientes(),
        "/calendario": (context) => const CalendarPage(),
        "/anamnese": (context) => const AnamnesePage(),
        "/perfil_paciente": (context) => const PerfilPaciente(),
        "/anamnese_geral": (context) => const AnamneseGeralPage(),
        "/anamnese_nutricao": (context) => const AnamneseNutricaoPage(),
        "/anamnese_psicologia": (context) => const AnamnesePsicologiaPage(),
        "/anamnese_farmacia": (context) => const AnamneseFarmaciaPage(),
        "/anamnese_educacao_fisica": (context) =>
            const AnamneseEducacaoFisicaPage(),
        "/cadastro_consulta": (context) => const CadastroConsulta(),
      },
    );
  }
}
