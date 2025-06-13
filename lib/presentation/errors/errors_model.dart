import 'dart:convert';

import 'package:equatable/equatable.dart';

class Errors extends Equatable {
  final List<String> agree;
  final List<String> email;
  final List<String> phone;
  final List<String> password;
  final List<String> confirmPassword;
  final List<String> currentPassword;
  final List<String> address;
  final List<String> country;
  final List<String> state;
  final List<String> city;
  final List<String> subject;
  final List<String> message;
  final List<String> review;
  final List<String> rating;
  final List<String> comment;

  final List<String> uploadFile;
  final List<String> productIcon;
  final List<String> regularPrice;
  final List<String> extendPrice;
  final List<String> description;
  final List<String> tags;
  final List<String> productType;
  final List<String> previewLink;
  final List<String> variantName;
  final List<String> fileName;

  final List<String> shortName;
  final List<String> name;
  final List<String> shopName;
  final List<String> slug;
  final List<String> thumbImage;
  final List<String> image;
  final List<String> category;
  final List<String> designation;
  final List<String> aboutMe;
  final List<String> price;
  final List<String> status;
  final List<String> weight;
  final List<String> quantity;
  final List<String> zipCode;
  final List<String> openAt;
  final List<String> closedAt;
  final List<String> mySkill;

  final List<String> methodId;
  final List<String> withdrawAmount;
  final List<String> accountInfo;
  final List<String> tnxInfo;
  final List<String> cardNumber;
  final List<String> year;
  final List<String> month;
  final List<String> cvc;

  const Errors({
    required this.agree,
    required this.email,
    required this.phone,
    required this.password,
    required this.confirmPassword,
    required this.currentPassword,
    required this.address,
    required this.country,
    required this.state,
    required this.city,
    required this.subject,
    required this.message,
    required this.review,
    required this.shortName,
    required this.name,
    required this.shopName,
    required this.slug,
    required this.thumbImage,
    required this.image,
    required this.category,
    required this.designation,
    required this.aboutMe,
    required this.price,
    required this.status,
    required this.weight,
    required this.quantity,
    required this.zipCode,
    required this.openAt,
    required this.closedAt,
    required this.mySkill,
    required this.methodId,
    required this.withdrawAmount,
    required this.accountInfo,
    required this.uploadFile,
    required this.productIcon,
    required this.regularPrice,
    required this.extendPrice,
    required this.description,
    required this.tags,
    required this.productType,
    required this.previewLink,
    required this.variantName,
    required this.fileName,
    required this.rating,
    required this.comment,
    required this.tnxInfo,
    required this.cardNumber,
    required this.year,
    required this.month,
    required this.cvc,
  });

  Errors copyWith({
    List<String>? email,
    List<String>? phone,
    List<String>? agree,
    List<String>? password,
    List<String>? confirmPassword,
    List<String>? currentPassword,
    List<String>? address,
    List<String>? country,
    List<String>? state,
    List<String>? city,
    List<String>? subject,
    List<String>? message,
    List<String>? review,
    List<String>? shortName,
    List<String>? name,
    List<String>? shopName,
    List<String>? slug,
    List<String>? thumbImage,
    List<String>? image,
    List<String>? category,
    List<String>? designation,
    List<String>? aboutMe,
    List<String>? price,
    List<String>? status,
    List<String>? weight,
    List<String>? quantity,
    List<String>? zipCode,
    List<String>? openAt,
    List<String>? closedAt,
    List<String>? mySkill,
    List<String>? methodId,
    List<String>? withdrawAmount,
    List<String>? accountInfo,
    List<String>? uploadFile,
    List<String>? productIcon,
    List<String>? regularPrice,
    List<String>? extendPrice,
    List<String>? description,
    List<String>? tags,
    List<String>? productType,
    List<String>? previewLink,
    List<String>? variantName,
    List<String>? fileName,
    List<String>? rating,
    List<String>? comment,
    List<String>? tnxInfo,
    List<String>? cardNumber,
    List<String>? year,
    List<String>? month,
    List<String>? cvc,
  }) {
    return Errors(
      agree: agree ?? this.agree,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      currentPassword: currentPassword ?? this.currentPassword,
      address: address ?? this.address,
      country: country ?? this.country,
      state: state ?? this.state,
      city: city ?? this.city,
      subject: subject ?? this.subject,
      message: message ?? this.message,
      review: review ?? this.review,
      name: name ?? this.name,
      shopName: shopName ?? this.shopName,
      shortName: shortName ?? this.shortName,
      thumbImage: thumbImage ?? this.thumbImage,
      image: image ?? this.image,
      slug: slug ?? this.slug,
      category: category ?? this.category,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      designation: designation ?? this.designation,
      aboutMe: aboutMe ?? this.aboutMe,
      status: status ?? this.status,
      weight: weight ?? this.weight,
      zipCode: zipCode ?? this.zipCode,
      openAt: openAt ?? this.openAt,
      closedAt: closedAt ?? this.closedAt,
      mySkill: mySkill ?? this.mySkill,
      methodId: methodId ?? this.methodId,
      withdrawAmount: withdrawAmount ?? this.withdrawAmount,
      accountInfo: accountInfo ?? this.accountInfo,
      uploadFile: uploadFile ?? this.uploadFile,
      productIcon: productIcon ?? this.productIcon,
      regularPrice: regularPrice ?? this.regularPrice,
      extendPrice: extendPrice ?? this.extendPrice,
      description: description ?? this.description,
      tags: tags ?? this.tags,
      productType: productType ?? this.productType,
      previewLink: previewLink ?? this.previewLink,
      variantName: variantName ?? this.variantName,
      fileName: fileName ?? this.fileName,
      rating: rating ?? this.rating,
      comment: comment ?? this.comment,
      tnxInfo: tnxInfo ?? this.tnxInfo,
      cardNumber: cardNumber ?? this.cardNumber,
      year: year ?? this.year,
      month: month ?? this.month,
      cvc: cvc ?? this.cvc,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agree': agree,
      'email': email,
      'phone': phone,
      'password': password,
      'c_password': confirmPassword,
      'current_password': currentPassword,
      'address': address,
      'country_id': country,
      'state_id': state,
      'city_id': city,
      'subject': subject,
      'message': message,
      'review': review,
      'name': name,
      'shop_name': shopName,
      'short_name': shortName,
      'thumb_image': thumbImage,
      'image': image,
      'slug': slug,
      'category': category,
      'price': price,
      'quantity': quantity,
      'designation': designation,
      'about_me': aboutMe,
      'status': status,
      'weight': weight,
      'zip_code': weight,
      'opens_at': openAt,
      'closed_at': closedAt,
      'my_skill': mySkill,
      'method_id': methodId,
      'withdraw_amount': withdrawAmount,
      'account_info': accountInfo,
      'upload_file': uploadFile,
      'product_icon': productIcon,
      'regular_price': regularPrice,
      'extend_price': extendPrice,
      'description': description,
      'tags': tags,
      'product_type': productType,
      'preview_link': previewLink,
      'variant_name': variantName,
      'file_name': fileName,
      'rating': rating,
      'comment': comment,
      'card_number': cardNumber,
      'year': year,
      'month': month,
      'cvc': cvc,
    };
  }

  factory Errors.fromMap(Map<String, dynamic> map) {
    return Errors(
      agree: map['agree'] != null
          ? List<String>.from(map['agree'].map((x) => x))
          : [],
      email: map['email'] != null
          ? List<String>.from(map['email'].map((x) => x))
          : [],
      phone: map['phone'] != null
          ? List<String>.from(map['phone'].map((x) => x))
          : [],
      password: map['password'] != null
          ? List<String>.from(map['password'].map((x) => x))
          : [],
      confirmPassword: map['c_password'] != null
          ? List<String>.from(map['c_password'].map((x) => x))
          : [],
      currentPassword: map['current_password'] != null
          ? List<String>.from(map['current_password'].map((x) => x))
          : [],
      address: map['address'] != null
          ? List<String>.from(map['address'].map((x) => x))
          : [],
      country: map['country_id'] != null
          ? List<String>.from(map['country_id'].map((x) => x))
          : [],
      state: map['state_id'] != null
          ? List<String>.from(map['state_id'].map((x) => x))
          : [],
      city: map['city_id'] != null
          ? List<String>.from(map['city_id'].map((x) => x))
          : [],
      subject: map['subject'] != null
          ? List<String>.from(map['subject'].map((x) => x))
          : [],
      message: map['message'] != null
          ? List<String>.from(map['message'].map((x) => x))
          : [],
      review: map['review'] != null
          ? List<String>.from(map['review'].map((x) => x))
          : [],
      name: map['name'] != null
          ? List<String>.from(map['name'].map((x) => x))
          : [],
      shopName: map['shop_name'] != null
          ? List<String>.from(map['shop_name'].map((x) => x))
          : [],
      shortName: map['short_name'] != null
          ? List<String>.from(map['short_name'].map((x) => x))
          : [],
      thumbImage: map['thumb_image'] != null
          ? List<String>.from(map['thumb_image'].map((x) => x))
          : [],
      image: map['image'] != null
          ? List<String>.from(map['image'].map((x) => x))
          : [],
      slug: map['slug'] != null
          ? List<String>.from(map['slug'].map((x) => x))
          : [],
      category: map['category'] != null
          ? List<String>.from(map['category'].map((x) => x))
          : [],
      price: map['price'] != null
          ? List<String>.from(map['price'].map((x) => x))
          : [],
      quantity: map['quantity'] != null
          ? List<String>.from(map['quantity'].map((x) => x))
          : [],
      designation: map['designation'] != null
          ? List<String>.from(map['designation'].map((x) => x))
          : [],
      aboutMe: map['about_me'] != null
          ? List<String>.from(map['about_me'].map((x) => x))
          : [],
      status: map['status'] != null
          ? List<String>.from(map['status'].map((x) => x))
          : [],
      weight: map['weight'] != null
          ? List<String>.from(map['weight'].map((x) => x))
          : [],
      zipCode: map['zip_code'] != null
          ? List<String>.from(map['zip_code'].map((x) => x))
          : [],
      openAt: map['opens_at'] != null
          ? List<String>.from(map['opens_at'].map((x) => x))
          : [],
      closedAt: map['closed_at'] != null
          ? List<String>.from(map['closed_at'].map((x) => x))
          : [],
      mySkill: map['my_skill'] != null
          ? List<String>.from(map['my_skill'].map((x) => x))
          : [],
      methodId: map['method_id'] != null
          ? List<String>.from(map['method_id'].map((x) => x))
          : [],
      withdrawAmount: map['withdraw_amount'] != null
          ? List<String>.from(map['withdraw_amount'].map((x) => x))
          : [],
      accountInfo: map['account_info'] != null
          ? List<String>.from(map['account_info'].map((x) => x))
          : [],
      uploadFile: map['upload_file'] != null
          ? List<String>.from(map['upload_file'].map((x) => x))
          : [],
      productIcon: map['product_icon'] != null
          ? List<String>.from(map['product_icon'].map((x) => x))
          : [],
      regularPrice: map['regular_price'] != null
          ? List<String>.from(map['regular_price'].map((x) => x))
          : [],
      extendPrice: map['extend_price'] != null
          ? List<String>.from(map['extend_price'].map((x) => x))
          : [],
      description: map['description'] != null
          ? List<String>.from(map['description'].map((x) => x))
          : [],
      tags: map['tags'] != null
          ? List<String>.from(map['tags'].map((x) => x))
          : [],
      productType: map['product_type'] != null
          ? List<String>.from(map['product_type'].map((x) => x))
          : [],
      previewLink: map['preview_link'] != null
          ? List<String>.from(map['preview_link'].map((x) => x))
          : [],
      variantName: map['variant_name'] != null
          ? List<String>.from(map['variant_name'].map((x) => x))
          : [],
      fileName: map['file_name'] != null
          ? List<String>.from(map['file_name'].map((x) => x))
          : [],
      rating: map['rating'] != null
          ? List<String>.from(map['rating'].map((x) => x))
          : [],
      comment: map['comment'] != null
          ? List<String>.from(map['comment'].map((x) => x))
          : [],
      tnxInfo: map['tnx_info'] != null
          ? List<String>.from(map['tnx_info'].map((x) => x))
          : [],
      cardNumber: map['card_number'] != null
          ? List<String>.from(map['card_number'].map((x) => x))
          : [],
      year: map['year'] != null
          ? List<String>.from(map['year'].map((x) => x))
          : [],
      month: map['month'] != null
          ? List<String>.from(map['month'].map((x) => x))
          : [],
      cvc:
          map['cvc'] != null ? List<String>.from(map['cvc'].map((x) => x)) : [],
    );
  }

  String toJson() => json.encode(toMap());

  factory Errors.fromJson(String source) =>
      Errors.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        agree,
        email,
        phone,
        password,
        confirmPassword,
        currentPassword,
        address,
        country,
        state,
        city,
        subject,
        message,
        review,
        rating,
        comment,
        uploadFile,
        productIcon,
        regularPrice,
        extendPrice,
        description,
        tags,
        productType,
        previewLink,
        variantName,
        fileName,
        shortName,
        name,
        shopName,
        slug,
        thumbImage,
        image,
        category,
        price,
        quantity,
        designation,
        aboutMe,
        price,
        status,
        weight,
        quantity,
        zipCode,
        openAt,
        closedAt,
        mySkill,
        methodId,
        withdrawAmount,
        accountInfo,
        tnxInfo,
        cardNumber,
        year,
        month,
        cvc,
      ];
}
