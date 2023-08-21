class Gif {
  String? type;
  String? id;
  String? url;
  String? slug;
  String? bitlyGifUrl;
  String? bitlyUrl;
  String? embedUrl;
  String? username;
  String? source;
  String? title;
  String? rating;
  String? contentUrl;
  String? sourceTld;
  String? sourcePostUrl;
  int? isSticker;
  String? importDatetime;
  String? trendingDatetime;
  Images? images;
  String? analyticsResponsePayload;
  Analytics? analytics;

  Gif(
      {this.type,
      this.id,
      this.url,
      this.slug,
      this.bitlyGifUrl,
      this.bitlyUrl,
      this.embedUrl,
      this.username,
      this.source,
      this.title,
      this.rating,
      this.contentUrl,
      this.sourceTld,
      this.sourcePostUrl,
      this.isSticker,
      this.importDatetime,
      this.trendingDatetime,
      this.images,
      this.analyticsResponsePayload,
      this.analytics});

  Gif.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
    url = json['url'];
    slug = json['slug'];
    bitlyGifUrl = json['bitly_gif_url'];
    bitlyUrl = json['bitly_url'];
    embedUrl = json['embed_url'];
    username = json['username'];
    source = json['source'];
    title = json['title'];
    rating = json['rating'];
    contentUrl = json['content_url'];
    sourceTld = json['source_tld'];
    sourcePostUrl = json['source_post_url'];
    isSticker = json['is_sticker'];
    importDatetime = json['import_datetime'];
    trendingDatetime = json['trending_datetime'];
    images = json['images'] != null ? Images.fromJson(json['images']) : null;
    analyticsResponsePayload = json['analytics_response_payload'];
    analytics = json['analytics'] != null
        ? Analytics.fromJson(json['analytics'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['type'] = this.type;
    data['id'] = this.id;
    data['url'] = this.url;
    data['slug'] = this.slug;
    data['bitly_gif_url'] = this.bitlyGifUrl;
    data['bitly_url'] = this.bitlyUrl;
    data['embed_url'] = this.embedUrl;
    data['username'] = this.username;
    data['source'] = this.source;
    data['title'] = this.title;
    data['rating'] = this.rating;
    data['content_url'] = this.contentUrl;
    data['source_tld'] = this.sourceTld;
    data['source_post_url'] = this.sourcePostUrl;
    data['is_sticker'] = this.isSticker;
    data['import_datetime'] = this.importDatetime;
    data['trending_datetime'] = this.trendingDatetime;
    if (this.images != null) {
      data['images'] = this.images!.toJson();
    }
    data['analytics_response_payload'] = this.analyticsResponsePayload;
    if (this.analytics != null) {
      data['analytics'] = this.analytics!.toJson();
    }
    return data;
  }
}

class Images {
  Original? original;
  FixedHeight? fixedHeight;
  FixedHeightDownsampled? fixedHeightDownsampled;
  FixedHeight? fixedHeightSmall;
  FixedHeight? fixedWidth;
  FixedHeightDownsampled? fixedWidthDownsampled;
  FixedHeight? fixedWidthSmall;

  Images(
      {this.original,
      this.fixedHeight,
      this.fixedHeightDownsampled,
      this.fixedHeightSmall,
      this.fixedWidth,
      this.fixedWidthDownsampled,
      this.fixedWidthSmall});

  Images.fromJson(Map<String, dynamic> json) {
    original =
        json['original'] != null ? Original.fromJson(json['original']) : null;
    fixedHeight = json['fixed_height'] != null
        ? FixedHeight.fromJson(json['fixed_height'])
        : null;
    fixedHeightDownsampled = json['fixed_height_downsampled'] != null
        ? FixedHeightDownsampled.fromJson(json['fixed_height_downsampled'])
        : null;
    fixedHeightSmall = json['fixed_height_small'] != null
        ? FixedHeight.fromJson(json['fixed_height_small'])
        : null;
    fixedWidth = json['fixed_width'] != null
        ? FixedHeight.fromJson(json['fixed_width'])
        : null;
    fixedWidthDownsampled = json['fixed_width_downsampled'] != null
        ? FixedHeightDownsampled.fromJson(json['fixed_width_downsampled'])
        : null;
    fixedWidthSmall = json['fixed_width_small'] != null
        ? FixedHeight.fromJson(json['fixed_width_small'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.original != null) {
      data['original'] = this.original!.toJson();
    }
    if (this.fixedHeight != null) {
      data['fixed_height'] = this.fixedHeight!.toJson();
    }
    if (this.fixedHeightDownsampled != null) {
      data['fixed_height_downsampled'] = this.fixedHeightDownsampled!.toJson();
    }
    if (this.fixedHeightSmall != null) {
      data['fixed_height_small'] = this.fixedHeightSmall!.toJson();
    }
    if (this.fixedWidth != null) {
      data['fixed_width'] = this.fixedWidth!.toJson();
    }
    if (this.fixedWidthDownsampled != null) {
      data['fixed_width_downsampled'] = this.fixedWidthDownsampled!.toJson();
    }
    if (this.fixedWidthSmall != null) {
      data['fixed_width_small'] = this.fixedWidthSmall!.toJson();
    }
    return data;
  }
}

class Original {
  String? height;
  String? width;
  String? size;
  String? url;
  String? mp4Size;
  String? mp4;
  String? webpSize;
  String? webp;
  String? frames;
  String? hash;

  Original(
      {this.height,
      this.width,
      this.size,
      this.url,
      this.mp4Size,
      this.mp4,
      this.webpSize,
      this.webp,
      this.frames,
      this.hash});

  Original.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    width = json['width'];
    size = json['size'];
    url = json['url'];
    mp4Size = json['mp4_size'];
    mp4 = json['mp4'];
    webpSize = json['webp_size'];
    webp = json['webp'];
    frames = json['frames'];
    hash = json['hash'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['height'] = this.height;
    data['width'] = this.width;
    data['size'] = this.size;
    data['url'] = this.url;
    data['mp4_size'] = this.mp4Size;
    data['mp4'] = this.mp4;
    data['webp_size'] = this.webpSize;
    data['webp'] = this.webp;
    data['frames'] = this.frames;
    data['hash'] = this.hash;
    return data;
  }
}

class FixedHeight {
  String? height;
  String? width;
  String? size;
  String? url;
  String? mp4Size;
  String? mp4;
  String? webpSize;
  String? webp;

  FixedHeight(
      {this.height,
      this.width,
      this.size,
      this.url,
      this.mp4Size,
      this.mp4,
      this.webpSize,
      this.webp});

  FixedHeight.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    width = json['width'];
    size = json['size'];
    url = json['url'];
    mp4Size = json['mp4_size'];
    mp4 = json['mp4'];
    webpSize = json['webp_size'];
    webp = json['webp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['height'] = this.height;
    data['width'] = this.width;
    data['size'] = this.size;
    data['url'] = this.url;
    data['mp4_size'] = this.mp4Size;
    data['mp4'] = this.mp4;
    data['webp_size'] = this.webpSize;
    data['webp'] = this.webp;
    return data;
  }
}

class FixedHeightDownsampled {
  String? height;
  String? width;
  String? size;
  String? url;
  String? webpSize;
  String? webp;

  FixedHeightDownsampled(
      {this.height, this.width, this.size, this.url, this.webpSize, this.webp});

  FixedHeightDownsampled.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    width = json['width'];
    size = json['size'];
    url = json['url'];
    webpSize = json['webp_size'];
    webp = json['webp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['height'] = this.height;
    data['width'] = this.width;
    data['size'] = this.size;
    data['url'] = this.url;
    data['webp_size'] = this.webpSize;
    data['webp'] = this.webp;
    return data;
  }
}

class Analytics {
  Onload? onload;
  Onload? onclick;
  Onload? onsent;

  Analytics({this.onload, this.onclick, this.onsent});

  Analytics.fromJson(Map<String, dynamic> json) {
    onload = json['onload'] != null ? Onload.fromJson(json['onload']) : null;
    onclick = json['onclick'] != null ? Onload.fromJson(json['onclick']) : null;
    onsent = json['onsent'] != null ? Onload.fromJson(json['onsent']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.onload != null) {
      data['onload'] = this.onload!.toJson();
    }
    if (this.onclick != null) {
      data['onclick'] = this.onclick!.toJson();
    }
    if (this.onsent != null) {
      data['onsent'] = this.onsent!.toJson();
    }
    return data;
  }
}

class Onload {
  String? url;

  Onload({this.url});

  Onload.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['url'] = this.url;
    return data;
  }
}
