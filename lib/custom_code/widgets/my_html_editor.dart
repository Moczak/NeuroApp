// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '../../flutter_flow/flutter_flow_widgets.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:file_picker/file_picker.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'package:html_editor_enhanced/src/widgets/toolbar_widget.dart';
import 'package:html_editor_enhanced/utils/callbacks.dart';
import 'package:html_editor_enhanced/utils/toolbar.dart';
import 'package:html_editor_enhanced/utils/plugins.dart';
import 'package:html_editor_enhanced/utils/file_upload_model.dart';
import 'package:html_editor_enhanced/utils/options.dart';
import 'package:html_editor_enhanced/utils/utils.dart';

class MyHtmlEditor extends StatefulWidget {
  const MyHtmlEditor({
    Key? key,
    this.width,
    this.height,
    this.currentHtml,
    this.pacienteId,
    this.instrumentoId,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? currentHtml;
  final String? pacienteId;
  final String? instrumentoId;

  @override
  _MyHtmlEditorState createState() => _MyHtmlEditorState();
}

class _MyHtmlEditorState extends State<MyHtmlEditor> {
  HtmlEditorController controller = HtmlEditorController();

  // Get a reference to the Firestore database
  final firestore = FirebaseFirestore.instance;

  // Get a reference to the collection
  late final CollectionReference<Object?> collectionRef;

  @override
  void initState() {
    super.initState();
    // Initialize the collection reference
    final pacienteId = widget.pacienteId;
    final instrumentoId = widget.instrumentoId;

    final pacienteRef = firestore.collection("paciente").doc(pacienteId);
    collectionRef = pacienteRef
        .collection("instrumento")
        .doc(instrumentoId)
        .collection('docintruref');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        HtmlEditor(
          controller: controller, //required
          htmlEditorOptions: HtmlEditorOptions(
            hint: "Escreva o resultado aqui...",
            initialText: widget.currentHtml,
          ),
          htmlToolbarOptions: const HtmlToolbarOptions(
            defaultToolbarButtons: [
              StyleButtons(),
              FontSettingButtons(fontSizeUnit: false),
              FontButtons(clearAll: false),
              ColorButtons(),
              ListButtons(listStyles: false),
              ParagraphButtons(
                textDirection: false,
                lineHeight: false,
                caseConverter: false,
              ),
              InsertButtons(
                video: true,
                audio: false,
                table: true, // adicionar a opção "true" para o botão de tabela
                hr: false,
                otherFile: false,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 25),
          child: FFButtonWidget(
            onPressed: () async {
              String data = await controller.getText();

              // save to Firebase
              final pacienteId = widget.pacienteId;
              final instrumentoId = widget.instrumentoId;

              final pacienteRef =
                  firestore.collection("paciente").doc(pacienteId);
              final instrumentoRef =
                  pacienteRef.collection("instrumento").doc(instrumentoId);

              final doc = createInstrumentoRecordData(resultado: data);

              instrumentoRef.get().then((docSnapshot) {
                if (docSnapshot.exists) {
                  // update document
                  instrumentoRef.update(doc);
                } else {
                  // create document
                  instrumentoRef.set(doc);
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Dados salvos com sucesso!')),
                );
              });
            },
            text: 'SALVAR',
            options: FFButtonOptions(
              width: 130,
              height: 40,
              color: Color(0xFF39c496),
              textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFFFFFFFF),
                  ),
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    ));
  }
}
