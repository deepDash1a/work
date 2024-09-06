import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work/core/functions/shared_functions.dart';
import 'package:work/core/widgets/custom_button.dart';
import 'package:work/core/widgets/custom_text_button.dart';
import 'package:work/core/widgets/texts.dart';
import 'package:work/features/business_logic/cubit.dart';
import 'package:work/features/business_logic/states.dart';
import 'package:work/features/presentation/home/screens/home.dart';

class ArtificialIntelligence extends StatelessWidget {
  const ArtificialIntelligence({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BoldText18dark(
          text: 'Artificial Intelligence',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AiExam(),
                ),
              );
            },
            icon: const Icon(
              Icons.book_outlined,
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.00.w,
          vertical: 20.00.h,
        ),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const Classification(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity.w,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20.00.r),
                      color: Colors.blueGrey,
                    ),
                    child: const Center(
                      child: BoldText20dark(
                        text: 'Classification',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const BFSAndDFS(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity.w,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20.00.r),
                      color: Colors.blueGrey,
                    ),
                    child: const Center(
                      child: BoldText20dark(
                        text: 'BFS And DFS',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const UniformCostSearch(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity.w,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20.00.r),
                      color: Colors.blueGrey,
                    ),
                    child: const Center(
                      child: BoldText20dark(
                        text: 'Uniform Cost Search (UCS)',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const KMEANS(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity.w,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20.00.r),
                      color: Colors.blueGrey,
                    ),
                    child: const Center(
                      child: BoldText20dark(
                        text: 'K-MEANS CLUSTERING KNN',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.00.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Classification extends StatelessWidget {
  const Classification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BoldText20dark(
          text: 'Classification',
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.00.w,
          vertical: 20.00.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ExtraBoldText22dark(text: 'What is the classification ?'),
              SizedBox(
                height: 20.00.h,
              ),
              const RegularText18dark(
                text:
                    'Classification in AI is the process of categorizing data into predefined classes or categories based on specific features. The model is trained on a dataset to learn how to distinguish between different classes, and then it\'s used to accurately classify new, unseen data.',
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Container(
                width: double.infinity.w,
                height: 2.00.h,
                color: Colors.blueGrey.withOpacity(0.5),
              ),
              SizedBox(
                height: 20.00.h,
              ),
              const ExtraBoldText22dark(text: 'What is KNN? ?'),
              SizedBox(
                height: 20.00.h,
              ),
              const RegularText18dark(
                text:
                    'K-Nearest Neighbors (KNN) in artificial intelligence is a classification algorithm based on the "neighborhood" principle. When trying to classify a new data point, the algorithm looks for the nearest "K" points in the dataset, and then classifies the new point based on the majority class among these nearby points.',
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Container(
                width: double.infinity.w,
                height: 2.00.h,
                color: Colors.blueGrey.withOpacity(0.5),
              ),
              SizedBox(
                height: 20.00.h,
              ),
              const ExtraBoldText22dark(text: 'Problem:'),
              SizedBox(
                height: 20.00.h,
              ),
              const RegularText18dark(
                text:
                    'You have the famous "Iris" dataset, which contains four features for each flower (sepal length, sepal width, petal length, petal width) along with the flower type (Setosa, Versicolor, or Virginica). The task is to build a classification model to predict the type of the flower based on the four features.',
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/p_one.png',
                width: double.infinity.w,
                height: 100.00.h,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/p_two.png',
                width: double.infinity.w,
                height: 100.00.h,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/p_three.png',
                width: double.infinity.w,
                height: 100.00.h,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              const ExtraBoldText22dark(
                text: 'Steps',
              ),
              SizedBox(
                height: 20.00.h,
              ),
              const RegularText18dark(
                text:
                    '1- Load the Data: Use the Scikit-learn library to load the Iris datasetuu \n\n2- Split the Data: Split the data into a training set and a test set.\n\n3- Build the Model: Choose a classification algorithm, such as K-Nearest Neighbors\n\n4- Train the Model: Train the model using the training data.\n\n5- Test the Model: Test the model using the test data and calculate its accuracy.',
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Container(
                width: double.infinity.w,
                height: 2.00.h,
                color: Colors.blueGrey.withOpacity(0.5),
              ),
              SizedBox(
                height: 20.00.h,
              ),
              const ExtraBoldText22dark(
                text: 'Results:',
              ),
              SizedBox(
                height: 20.00.h,
              ),
              const RegularText18dark(
                text:
                    'You will calculate the accuracy, which represents the proportion of flowers correctly classified in the test set. This accuracy gives you an idea of how well the model performs in classifying the flower types.Explanation: If you get a high accuracy (e.g., 0.95 or 95%), it indicates that the model is good at predicting the correct flower type based on the given features',
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/ex1.png',
                width: double.infinity.w,
                height: 100.00.h,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.00.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BFSAndDFS extends StatelessWidget {
  const BFSAndDFS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BoldText20dark(
          text: 'BFS And DFS',
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.00.w,
          vertical: 20.00.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ExtraBoldText22dark(text: 'Search BFS and DFS'),
              SizedBox(
                height: 20.00.h,
              ),
              const RegularText18dark(
                text:
                    'Breadth-First Search (BFS) is a graph traversal algorithm that explores nodes level by level. It starts at a root node and explores all its neighboring nodes first before moving on to the neighbors of those neighbors. BFS is particularly useful for finding the shortest path in unweighted graphs.',
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              const ExtraBoldText22dark(text: 'Search BFS and DFS'),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/pf1.png',
                width: double.infinity.w,
                height: 150.00.h,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              const RegularText18dark(
                text:
                    'Depth-First Search (DFS) is a traversal algorithm used to explore nodes and edges of a graph or tree by going as deep as possible along a branch before backtracking. DFS uses a stack (either explicitly or via recursion) to remember the path. It\'s helpful in scenarios like maze-solving or exploring all possible paths in a graph.',
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/pf2.png',
                width: double.infinity.w,
                height: 200.00.h,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/pf3.png',
                width: double.infinity.w,
                height: 250.00.h,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 20.00.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UniformCostSearch extends StatelessWidget {
  const UniformCostSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BoldText20dark(
          text: 'Uniform Cost Search (UCS)',
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.00.w,
          vertical: 20.00.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ExtraBoldText22dark(text: 'Uniform Cost Search (UCS)'),
              SizedBox(
                height: 20.00.h,
              ),
              const RegularText18dark(
                text:
                    'Uniform Cost Search (UCS) is an algorithm used to find the least-cost path in a weighted graph. It expands the node with the smallest cumulative cost (not just the shortest number of edges) and is often considered an optimal version of Dijkstra’s algorithm. UCS guarantees finding the optimal solution if all costs are non-negative',
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/uc1.png',
                width: double.infinity.w,
                height: 200.00.h,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/uc2.png',
                width: double.infinity.w,
                height: 200.00.h,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/uc3.png',
                width: double.infinity.w,
                height: 200.00.h,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/uc4.png',
                width: double.infinity.w,
                height: 200.00.h,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 20.00.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KMEANS extends StatelessWidget {
  const KMEANS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BoldText20dark(
          text: 'K-MEANS CLUSTERING KNN',
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.00.w,
          vertical: 20.00.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ExtraBoldText22dark(text: 'K-MEANS CLUSTERING KNN'),
              SizedBox(
                height: 20.00.h,
              ),
              const RegularText18dark(
                text: 'A Simple example k-means (using K=2)',
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/k1.PNG',
                width: double.infinity.w,
                height: 200.00.h,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              const RegularText18dark(
                text:
                    'In this case the 2 centroid are: ml=(1.0,1.0) and m2=(5.0,7.0).',
                textAlign: TextAlign.start,
              ),
              Image.asset(
                'assets/images/k2.PNG',
                width: double.infinity.w,
                height: 150.00.h,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              const RegularText18dark(
                text: 'Step 2',
                textAlign: TextAlign.start,
              ),
              Image.asset(
                'assets/images/k3.PNG',
                width: double.infinity.w,
                height: 150.00.h,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              const BoldText20dark(
                text: 'Classification Using KNN',
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Image.asset(
                'assets/images/k5.jpg',
                width: double.infinity.w,
                height: 150.00.h,
                fit: BoxFit.fitWidth,
              ),
              const BoldText20dark(
                text: 'KNN Pros And Cons',
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 20.00.h,
              ),
              const RegularText18dark(
                text:
                    'Pros\n\nNo Training Period: KNN is called Lazy Learner (Instance based learning)\n\nNew data can be added seamlessly which will not impact the accuracy of the algorithm\n\nKNN is very easy to implement. There are only two parameters required to implement KNN\n\ni.e. the value of K and the distance function te.g Euclidean or Manhattan etc.)\n\nCons\n\nDoes not work well with large dataset:\n\nDoes not work well with high dimensions\n\nNeed feature scaling: We need to do feature scaling (standardization and normalization)\n\nSensitive to noisy data, missing values',
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AiExam extends StatelessWidget {
  const AiExam({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WorkAppCubit, WorkAppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = context.read<WorkAppCubit>();
        return Scaffold(
          appBar: AppBar(),
          body: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.00.w,
              vertical: 20.00.h,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity.w,
                    height: 40.00.h,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8.00.r),
                      color: Colors.red,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.00.w,
                      ),
                      child: const Center(
                        child: BoldText20dark(
                          text: 'Ai Test Exam',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.00.h,
                  ),
                  const BoldText20dark(
                    text:
                        '1- Which of the following option is true about k-NN algorithm?',
                    textAlign: TextAlign.start,
                  ),
                  CustomTextButton(
                      text: 'A) It can be used for classification',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: 'B) It can be used for regression',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text:
                          'C) It can be used in both classification and regression',
                      textAlign: TextAlign.start,
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                        cubit.increaseAiExamDegree();
                      }),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  Container(
                    width: double.infinity.w,
                    height: 2.00.h,
                    color: Colors.blueGrey.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  const BoldText20dark(
                    text:
                        '2- Which of the following machine learning algorithm can be used for imputing missing values of both categorical and continuous variables?',
                    textAlign: TextAlign.start,
                  ),
                  CustomTextButton(
                      text: 'A) K-NN',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                        cubit.increaseAiExamDegree();
                      }),
                  CustomTextButton(
                      text: 'B) Linear Regression',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: 'C) Logistic Regression',
                      textAlign: TextAlign.start,
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  Container(
                    width: double.infinity.w,
                    height: 2.00.h,
                    color: Colors.blueGrey.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  const BoldText20dark(
                    text:
                        '3- True or False] k-NN algorithm does more computation on test time rather than train time.',
                    textAlign: TextAlign.start,
                  ),
                  CustomTextButton(
                      text: 'A) TRUE',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                        cubit.increaseAiExamDegree();
                      }),
                  CustomTextButton(
                      text: 'B) FALSE',
                      textAlign: TextAlign.start,
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  Container(
                    width: double.infinity.w,
                    height: 2.00.h,
                    color: Colors.blueGrey.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  const BoldText20dark(
                    text:
                        '4- Which of the following would be the leave on out cross validation accuracy for k=5?',
                    textAlign: TextAlign.start,
                  ),
                  CustomTextButton(
                      text: 'A) 2/14',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: 'B) 4/14',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: 'C) 6/14',
                      textAlign: TextAlign.start,
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: 'D) 8/14',
                      textAlign: TextAlign.start,
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: 'E) None of the above',
                      textAlign: TextAlign.start,
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                        cubit.increaseAiExamDegree();
                      }),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  Container(
                    width: double.infinity.w,
                    height: 2.00.h,
                    color: Colors.blueGrey.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  const BoldText20dark(
                    text:
                        '5- Which of the following data structure is useful in traversing a graph by breadth-first search?',
                    textAlign: TextAlign.start,
                  ),
                  CustomTextButton(
                      text: 'Stack',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: 'Queue',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                        cubit.increaseAiExamDegree();
                      }),
                  CustomTextButton(
                      text: 'List',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: 'None of the above',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  Container(
                    width: double.infinity.w,
                    height: 2.00.h,
                    color: Colors.blueGrey.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: 20.00.h,
                  ),
                  const BoldText20dark(
                    text:
                        '6- Backtracking uses _______ node generation _______ bounding functions:',
                    textAlign: TextAlign.start,
                  ),
                  CustomTextButton(
                      text: 'Breadth first, with',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: 'Breadth first, without',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: 'Depth-first, with',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                        cubit.increaseAiExamDegree();
                      }),
                  CustomTextButton(
                      text: 'Depth-first, without',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  CustomTextButton(
                      text: 'None of the above',
                      function: () {
                        customSnackBar(
                            context: context,
                            text:
                                'Your answer has been successfully registered.',
                            color: Colors.green);
                      }),
                  SizedBox(
                    height: 100.00.h,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CustomButton(
                        text: 'Submit',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WaitResultAiExam(),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 20.00.h,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class WaitResultAiExam extends StatefulWidget {
  const WaitResultAiExam({super.key});

  @override
  _WaitResultAiExamState createState() => _WaitResultAiExamState();
}

class _WaitResultAiExamState extends State<WaitResultAiExam> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 20), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const AiResult()),
        (Route<dynamic> route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/wait_result.gif'),
            SizedBox(
              height: 20.00.h,
            ),
            const BoldText20dark(
              text: 'Congratulations you finished the exam',
            ),
          ],
        ),
      ),
    );
  }
}

class AiResult extends StatelessWidget {
  const AiResult({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WorkAppCubit, WorkAppState>(
      listener: (BuildContext context, WorkAppState state) {},
      builder: (BuildContext context, WorkAppState state) {
        var cubit = context.read<WorkAppCubit>();
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ExtraBoldText25dark(text: 'Your result:'),
                  ExtraBoldText25dark(text: '${cubit.aiExamDegree}/ 6'),
                  SizedBox(
                    height: 50.00.h,
                  ),
                  CustomButton(
                    text: 'Back',
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()),
                            (Route<dynamic> route) => false,
                      );
                      cubit.aiExamDegree = 0;
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
