import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../logic/cubit/update/update_cubit.dart';
import '../../../../logic/cubit/update/update_state_model.dart';
import '../../../utils/constraints.dart';
import '../../../utils/utils.dart';
import '../../../widget/custom_text.dart';
import '../../../widget/error_text.dart';

class PickProjectFile extends StatelessWidget {
  const PickProjectFile(
      {super.key, required this.downloadTap, this.isNew = true});

  final VoidCallback downloadTap;
  final bool isNew;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final uploadBloc = context.read<UpdateCubit>();
    print('existing-file ${uploadBloc.state.uploadFile}');
    return BlocBuilder<UpdateCubit, UpdateStateModel>(
      builder: (context, state) {
        final fileName = state.uploadFile.split('/').last;
        final validate = state.updateState;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: Utils.vSize(size.height * 0.08),
              padding:
                  EdgeInsets.symmetric(horizontal: Utils.hPadding(size: 12.0)),
              decoration: BoxDecoration(
                color: fillColor,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Row(
                children: [
                  OutlinedButton(
                    onPressed: () async {
                      final file = await Utils.pickSingleFile();
                      debugPrint('picked-filed $file');
                      if (file!.isNotEmpty) {
                        uploadBloc.uploadFileChange(file);
                      }
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      elevation: const MaterialStatePropertyAll(0.0),
                      splashFactory: NoSplash.splashFactory,
                      shadowColor: const MaterialStatePropertyAll(transparent),
                    ),
                    child: const CustomText(
                      text: 'Choose File',
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0,
                    ),
                  ),
                  Utils.horizontalSpace(10.0),
                  Expanded(
                    child: CustomText(
                        text: fileName.isNotEmpty
                            ? fileName
                            : 'No File Selected'),
                  ),
                ],
              ),
            ),
            isNew
                ? const SizedBox()
                : Padding(
                    padding: EdgeInsets.only(top: Utils.vPadding(size: 10.0)),
                    child: GestureDetector(
                      onTap: downloadTap,
                      child: const CustomText(
                        text: 'Download existing file',
                        color: redColor,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
            if (validate is UpdateFormValidate) ...[
              if (validate.errors.uploadFile.isNotEmpty)
                ErrorText(text: validate.errors.uploadFile.first),
            ]
          ],
        );
      },
    );
  }
}
