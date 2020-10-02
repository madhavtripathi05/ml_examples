import 'package:ml_examples/app/modules/image_segmentation/image_segmentation_view.dart';
import 'package:ml_examples/app/modules/image_segmentation/image_segmentation_binding.dart';
import 'package:ml_examples/app/modules/pose_detection/pose_detection_view.dart';
import 'package:ml_examples/app/modules/pose_detection/pose_detection_binding.dart';
import 'package:ml_examples/app/modules/realtime_detection/realtime_detection_view.dart';
import 'package:ml_examples/app/modules/realtime_detection/realtime_detection_binding.dart';
import 'package:ml_examples/app/modules/object_detection/object_detection_view.dart';
import 'package:ml_examples/app/modules/object_detection/object_detection_binding.dart';
import 'package:ml_examples/app/modules/image_classification/image_classification_view.dart';
import 'package:ml_examples/app/modules/image_classification/image_classification_binding.dart';
import 'package:ml_examples/app/modules/style_transfer/style_transfer_view.dart';
import 'package:ml_examples/app/modules/style_transfer/style_transfer_binding.dart';
import 'package:ml_examples/app/modules/ocr/ocr_view.dart';
import 'package:ml_examples/app/modules/ocr/ocr_binding.dart';
import 'package:ml_examples/app/modules/qna/qna_view.dart';
import 'package:ml_examples/app/modules/qna/qna_binding.dart';
import 'package:ml_examples/app/modules/image_caption/image_caption_view.dart';
import 'package:ml_examples/app/modules/image_caption/image_caption_binding.dart';
import 'package:ml_examples/app/modules/sentiment_analysis/sentiment_analysis_view.dart';
import 'package:ml_examples/app/modules/sentiment_analysis/sentiment_analysis_binding.dart';
import 'package:ml_examples/app/modules/research_papers/research_papers_view.dart';
import 'package:ml_examples/app/modules/research_papers/research_papers_binding.dart';
import 'package:ml_examples/app/modules/search/search_view.dart';
import 'package:ml_examples/app/modules/search/search_binding.dart';
import 'package:ml_examples/app/modules/ml_algorithms/ml_algorithms_view.dart';
import 'package:ml_examples/app/modules/ml_algorithms/ml_algorithms_binding.dart';
import 'package:ml_examples/app/modules/categories/categories_view.dart';
import 'package:ml_examples/app/modules/categories/categories_binding.dart';
import 'package:ml_examples/app/modules/get_started/get_started_view.dart';
import 'package:ml_examples/app/modules/get_started/get_started_binding.dart';
import 'package:ml_examples/app/modules/home/home_view.dart';
import 'package:ml_examples/app/modules/home/home_binding.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.GET_STARTED,
      page: () => GetStartedView(),
      binding: GetStartedBinding(),
    ),
    GetPage(
      name: Routes.CATEGORIES,
      page: () => CategoriesView(),
      binding: CategoriesBinding(),
    ),
    GetPage(
        name: Routes.ML_ALGORITHMS,
        page: () => MlAlgorithmsView(),
        bindings: [
          MlAlgorithmsBinding(),
          RealtimeDetectionBinding(),
        ]),
    GetPage(
      name: Routes.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: Routes.RESEARCH_PAPERS,
      page: () => ResearchPapersView(),
      binding: ResearchPapersBinding(),
    ),
    GetPage(
      name: Routes.SENTIMENT_ANALYSIS,
      page: () => SentimentAnalysisView(),
      binding: SentimentAnalysisBinding(),
    ),
    GetPage(
      name: Routes.IMAGE_CAPTION,
      page: () => ImageCaptionView(),
      binding: ImageCaptionBinding(),
    ),
    GetPage(
      name: Routes.QNA,
      page: () => QnaView(),
      binding: QnaBinding(),
    ),
    GetPage(
      name: Routes.OCR,
      page: () => OcrView(),
      binding: OcrBinding(),
    ),
    GetPage(
      name: Routes.STYLE_TRANSFER,
      page: () => StyleTransferView(),
      binding: StyleTransferBinding(),
    ),
    GetPage(
      name: Routes.IMAGE_CLASSIFICATION,
      page: () => ImageClassificationView(),
      binding: ImageClassificationBinding(),
    ),
    GetPage(
      name: Routes.OBJECT_DETECTION,
      page: () => ObjectDetectionView(),
      binding: ObjectDetectionBinding(),
    ),
    GetPage(
      name: Routes.REALTIME_DETECTION,
      page: () => RealtimeDetectionView(),
      binding: RealtimeDetectionBinding(),
    ),
    GetPage(
      name: Routes.POSE_DETECTION, 
      page:()=> PoseDetectionView(), 
      binding: PoseDetectionBinding(),
    ),
    GetPage(
      name: Routes.IMAGE_SEGMENTATION, 
      page:()=> ImageSegmentationView(), 
      binding: ImageSegmentationBinding(),
    ),
  ];
}