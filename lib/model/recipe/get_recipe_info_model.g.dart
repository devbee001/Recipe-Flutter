// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_recipe_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRecipeInfoModel _$GetRecipeInfoModelFromJson(Map<String, dynamic> json) =>
    GetRecipeInfoModel(
      vegetarian: json['vegetarian'] as bool?,
      vegan: json['vegan'] as bool?,
      glutenFree: json['glutenFree'] as bool?,
      dairyFree: json['dairyFree'] as bool?,
      veryHealthy: json['veryHealthy'] as bool?,
      cheap: json['cheap'] as bool?,
      veryPopular: json['veryPopular'] as bool?,
      sustainable: json['sustainable'] as bool?,
      lowFodmap: json['lowFodmap'] as bool?,
      weightWatcherSmartPoints: json['weightWatcherSmartPoints'] as num?,
      gaps: json['gaps'] as String?,
      preparationMinutes: json['preparationMinutes'] as num?,
      cookingMinutes: json['cookingMinutes'] as num?,
      aggregateLikes: json['aggregateLikes'] as num?,
      healthScore: json['healthScore'] as num?,
      creditsText: json['creditsText'] as String?,
      license: json['license'] as String?,
      sourceName: json['sourceName'] as String?,
      pricePerServing: json['pricePerServing'] as num?,
      extendedIngredients: json['extendedIngredients'] as List<dynamic>?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      readyInMinutes: json['readyInMinutes'] as int?,
      servings: json['servings'] as int?,
      sourceUrl: json['sourceUrl'] as String?,
      image: json['image'] as String?,
      imageType: json['imageType'] as String?,
      summary: json['summary'] as String?,
      cuisines: json['cuisines'] as List<dynamic>?,
      dishTypes: json['dishTypes'] as List<dynamic>?,
      diets: json['diets'] as List<dynamic>?,
      occasions: json['occasions'] as List<dynamic>?,
      winePairing: json['winePairing'] as Map<String, dynamic>?,
      instructions: json['instructions'] as String?,
      analyzedInstructions: json['analyzedInstructions'] as List<dynamic>?,
      originalId: json['originalId'],
      spoonacularScore: json['spoonacularScore'] as num?,
      spoonacularSourceUrl: json['spoonacularSourceUrl'] as String?,
    );

Map<String, dynamic> _$GetRecipeInfoModelToJson(GetRecipeInfoModel instance) =>
    <String, dynamic>{
      'vegetarian': instance.vegetarian,
      'vegan': instance.vegan,
      'glutenFree': instance.glutenFree,
      'dairyFree': instance.dairyFree,
      'veryHealthy': instance.veryHealthy,
      'cheap': instance.cheap,
      'veryPopular': instance.veryPopular,
      'sustainable': instance.sustainable,
      'lowFodmap': instance.lowFodmap,
      'weightWatcherSmartPoints': instance.weightWatcherSmartPoints,
      'gaps': instance.gaps,
      'preparationMinutes': instance.preparationMinutes,
      'cookingMinutes': instance.cookingMinutes,
      'aggregateLikes': instance.aggregateLikes,
      'healthScore': instance.healthScore,
      'creditsText': instance.creditsText,
      'license': instance.license,
      'sourceName': instance.sourceName,
      'pricePerServing': instance.pricePerServing,
      'extendedIngredients': instance.extendedIngredients,
      'id': instance.id,
      'title': instance.title,
      'readyInMinutes': instance.readyInMinutes,
      'servings': instance.servings,
      'sourceUrl': instance.sourceUrl,
      'image': instance.image,
      'imageType': instance.imageType,
      'summary': instance.summary,
      'cuisines': instance.cuisines,
      'dishTypes': instance.dishTypes,
      'diets': instance.diets,
      'occasions': instance.occasions,
      'winePairing': instance.winePairing,
      'instructions': instance.instructions,
      'analyzedInstructions': instance.analyzedInstructions,
      'originalId': instance.originalId,
      'spoonacularScore': instance.spoonacularScore,
      'spoonacularSourceUrl': instance.spoonacularSourceUrl,
    };
