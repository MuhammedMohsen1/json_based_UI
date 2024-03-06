import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/core/methods/build_form_data.dart';
import 'package:testapp/core/utils/app_extensions.dart';
import 'package:testapp/core/widgets/background_container.dart';
import 'bloc/step_bloc.dart';
import 'widgets/error_widget.dart';

class FormView extends StatefulWidget {
  const FormView({super.key});

  @override
  State<FormView> createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
   // ignore: prefer_final_fields
   PageController _pageController = PageController();
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BackgroundContainer(
  
          child: BlocBuilder<StepBloc, StepPageState>(
            builder: (context, state) {
              switch (state) {
                case StepLoading():
                case StepInitial():
                  return  Center(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.blue,
                        color: Colors.lightBlue,
                 
                      )),
                  );
                case StepLoadingSuccess():
                  return Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: PageView.builder(
                            physics: const BouncingScrollPhysics(),
                            
                            controller: _pageController,
                            itemCount: state.pages.length,
                            onPageChanged: (value) {
                               setState(() {
                                if (_pageController.page?.round() != currentIndex) {
                                    setState(() {
                                      currentIndex = value.round();
                                    });
                                  }
                              });
                            },
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                      state.pages.length,
                                      (index) => buildDot((state.pages.length-index)-1, state),
                                    ),
                                  ),
                                  Expanded(
                                      child: buildFormDataScreen(
                                          state.pages[index]!, context,_pageController),),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                case StepLoadingFailure():
                  return const ErrorScreen();
                default:
                  return const CircularProgressIndicator.adaptive();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget buildDot(int index, StepLoadingSuccess state) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: (currentIndex) == index
              ? Colors.blue
              : Colors.grey.withOpacity(0.5),
        ),
      ),
    );
  }
}
