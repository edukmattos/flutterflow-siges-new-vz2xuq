import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/pages/walktrought/cp_walktrought_msg/cp_walktrought_msg_widget.dart';

// Focus widget keys for this walkthrough
final cardNuygggce = GlobalKey();
final container90wst7sw = GlobalKey();
final containerKra6i6ak = GlobalKey();
final container806fa9ae = GlobalKey();
final containerPl71kuzq = GlobalKey();

/// Painel Atendimentos Usuario
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: cardNuygggce,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => CpWalktroughtMsgWidget(
              cpTitle: 'Painel Atendimento',
              cpBody: 'Qte Atendimentos Não Arquivados.',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: container90wst7sw,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => CpWalktroughtMsgWidget(
              cpTitle: 'Rascunho',
              cpBody: 'Pendente de preenchimento.',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: containerKra6i6ak,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => CpWalktroughtMsgWidget(
              cpTitle: 'Reportados',
              cpBody: 'Encaminhados para análise.',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: container806fa9ae,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => CpWalktroughtMsgWidget(
              cpTitle: 'Revisados',
              cpBody: 'Aguardando confirmação.',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: containerPl71kuzq,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => CpWalktroughtMsgWidget(
              cpTitle: 'Rejeitadas',
              cpBody: 'Aguardando correções.',
            ),
          ),
        ],
      ),
    ];
