import 'package:flutter/material.dart';
import 'package:vida_leve/utils/appbar.dart';
import 'package:vida_leve/utils/dados.dart';
import 'package:vida_leve/utils/drawer.dart';

import '../utils/customtextfield_cadastro.dart';

class CadastroPacientes extends StatefulWidget {
  const CadastroPacientes({super.key});

  @override
  State<CadastroPacientes> createState() => _CadastroPacientesState();
}

class _CadastroPacientesState extends State<CadastroPacientes> {
  TextEditingController nomeCompletoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController fotoController = TextEditingController();
  TextEditingController dataNascimentoController = TextEditingController();
  TextEditingController idadeController = TextEditingController();
  TextEditingController naturalidadeController = TextEditingController();
  TextEditingController generoController = TextEditingController();
  TextEditingController etniaController = TextEditingController();

  TextEditingController alturaController = TextEditingController();
  TextEditingController pesoController = TextEditingController();
  TextEditingController religiaoController = TextEditingController();

  TextEditingController estadoCivilController = TextEditingController();
  TextEditingController profissaoController = TextEditingController();
  TextEditingController enderecoController = TextEditingController();
  TextEditingController complementoController = TextEditingController();
  TextEditingController bairroController = TextEditingController();
  TextEditingController cidadeController = TextEditingController();
  TextEditingController estadoController = TextEditingController();
  TextEditingController telefoneCelularController = TextEditingController();
  TextEditingController telefoneResidencialController = TextEditingController();

  TextEditingController escolaridadeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MyDrawer(),
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Cadastro de Pacientes',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    color: Color(0xFF00A896),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F5FF).withOpacity(0.95),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Informações Pessoais',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          color: Color(0xFF00A896),
                        ),
                      ),
                    ),
                    CustomTextFieldCadastro(
                      labelText: "Nome Completo",
                      controller: nomeCompletoController,
                    ),
                    CustomTextFieldCadastro(
                      labelText: "Foto (URL)",
                      controller: fotoController,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: CustomTextFieldCadastro(
                            labelText: "Data de nascimento",
                            controller: dataNascimentoController,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: CustomTextFieldCadastro(
                            labelText: "Idade",
                            controller: idadeController,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: CustomTextFieldCadastro(
                            labelText: "Naturalidade",
                            controller: naturalidadeController,
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: CustomTextFieldCadastro(
                            labelText: "Genero",
                            controller: generoController,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: CustomTextFieldCadastro(
                            labelText: "Etnia",
                            controller: etniaController,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: CustomTextFieldCadastro(
                            labelText: "Altura",
                            controller: alturaController,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: CustomTextFieldCadastro(
                            labelText: "Peso",
                            controller: pesoController,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: CustomTextFieldCadastro(
                            labelText: "Religião",
                            controller: religiaoController,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: CustomTextFieldCadastro(
                            labelText: "Estado Civil",
                            controller: estadoCivilController,
                          ),
                        ),
                      ],
                    ),
                    CustomTextFieldCadastro(
                      labelText: "Profissão / Horário de Trabalho",
                      controller: profissaoController,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Informações de contato',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          color: Color(0xFF00A896),
                        ),
                      ),
                    ),
                    CustomTextFieldCadastro(
                      labelText: "Email",
                      controller: emailController,
                    ),
                    CustomTextFieldCadastro(
                      labelText: "Endereço Residencial",
                      controller: enderecoController,
                    ),
                    CustomTextFieldCadastro(
                      labelText: "Complemento",
                      controller: complementoController,
                    ),
                    CustomTextFieldCadastro(
                      labelText: "Bairro",
                      controller: bairroController,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: CustomTextFieldCadastro(
                            labelText: "Cidade",
                            controller: cidadeController,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: CustomTextFieldCadastro(
                            labelText: "Estado",
                            controller: estadoController,
                          ),
                        ),
                      ],
                    ),
                    CustomTextFieldCadastro(
                      labelText: "Celular Pessoal",
                      controller: telefoneCelularController,
                    ),
                    CustomTextFieldCadastro(
                      labelText: "Telefone Residencial",
                      controller: telefoneResidencialController,
                    ),
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, top: 5),
              child: ElevatedButton(
                onPressed: () {
                  Map<String, String> novoElemento = {
                    'id': dados.length.toString(),
                    'foto': fotoController.text,
                    'email': emailController.text,
                    'nomeCompleto': nomeCompletoController.text,
                    'dataNascimento': dataNascimentoController.text,
                    'idade': idadeController.text,
                    'genero': generoController.text,
                    'profissao': profissaoController.text,
                    'estadoCivil': estadoCivilController.text,
                    'etnia': etniaController.text,
                    'religiao': religiaoController.text,
                    'altura': alturaController.text,
                    'peso': pesoController.text,
                    'naturalidade': naturalidadeController.text,
                    'endereco': enderecoController.text,
                    'complemento': complementoController.text,
                    'bairro': bairroController.text,
                    'cidade': cidadeController.text,
                    'estado': estadoController.text,
                    'telefoneResidencial': telefoneResidencialController.text,
                    'telefoneCelular': telefoneCelularController.text,
                    'escolaridade': escolaridadeController.text,
                  };

                  dados.add(novoElemento);

                  Navigator.pushReplacementNamed(context, "/pacientes");
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 60.0, vertical: 20.0),
                  textStyle: const TextStyle(fontSize: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Cadastrar Paciente', style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
