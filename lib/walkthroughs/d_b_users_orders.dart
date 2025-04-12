import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/pages/walktrought/cp_walktrought_msg/cp_walktrought_msg_widget.dart';

// Focus widget keys for this walkthrough
final cardZi7gb5xw = GlobalKey();
final containerRl178ycr = GlobalKey();
final containerHofiqzw4 = GlobalKey();
final container3j41np4p = GlobalKey();
final containerYobzo4mq = GlobalKey();

/// DB Users Orders
///
/// Paniel das Ordens de Serviços em Aberto
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: cardZi7gb5xw,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => CpWalktroughtMsgWidget(
              cpTitle: 'Painel OS\'s',
              cpBody: 'Quantidade de OS\'s Não Concluídas.',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: containerRl178ycr,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => CpWalktroughtMsgWidget(
              cpTitle: 'Autorizadas',
              cpBody: 'OS\'s sem nenhum atendimento.',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: containerHofiqzw4,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => CpWalktroughtMsgWidget(
              cpTitle: 'Agendadas',
              cpBody: 'OS\'s com inicio previsto dos atendimentos.',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: container3j41np4p,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => CpWalktroughtMsgWidget(
              cpTitle: 'Execução',
              cpBody: 'OS em andamento.',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: containerYobzo4mq,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => CpWalktroughtMsgWidget(
              cpTitle: 'Suspensas',
              cpBody: 'OS\'s pendentes por algum motivo.',
            ),
          ),
        ],
      ),
    ];
