import 'package:flutter_application_1/chat/application/ports/yes_no_model_to_message_port.dart';
import 'package:flutter_application_1/chat/domain/entities/message.dart';



class YesNoModel implements YesNoModelToMessagePort {
    String answer;
    bool forced;
    String image;

    YesNoModel({
        required this.answer,
        required this.forced,
        required this.image,
    });

    factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
    };

    @override
    Message toMessageEntity() => Message(
        text: answer == 'yes' ? 'Si' : 'No', 
        fromWho: FromWho.hers,
        imageUrl: image
    );
    
}
