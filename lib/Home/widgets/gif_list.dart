import 'dart:convert';
import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gmono/Home/models/gif.dart';
import 'package:gmono/Home/widgets/gif_item.dart';
import 'package:gmono/main.dart';
import 'package:http/http.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ListGif extends ConsumerStatefulWidget {
  const ListGif({Key? key}) : super(key: key);
  @override
  ListGifState createState() => ListGifState();
}

class ListGifState extends ConsumerState<ListGif> {
  late bool _error;
  late bool _loading;
  late int _offset;
  final int _gifPerRequest = 6;
  late List<Gif> _listGif;

  @override
  void initState() {
    super.initState();
    developer.log("init state");
    _error = false;
    _loading = true;
    _offset = 0;
    _listGif = [];
  }

  @override
  Widget build(BuildContext context) {
    final inputText = ref.watch(inputTextProvider);

    ref.listen(inputTextProvider, (previous, next) {
      if (next.isNotEmpty) {
        developer.log("listen input text provider next $next");
        fetchData(next, _gifPerRequest, _offset, (gifs) {
          setState(() {
            _loading = false;
            _offset += _gifPerRequest;
            _listGif = gifs;
          });
        }, () {
          setState(() {
            _loading = false;
            _error = true;
          });
        });
      } else {
        developer.log("empty");
      }
    });

    if (_loading) {
      return const Expanded(
        child: Center(
          child: Text("LOADING"),
        ),
      );
    }
    if (_error) {
      return const Expanded(
        child: Center(
          child: Text("ERROR"),
        ),
      );
    }

    if (inputText.isEmpty) {
      return const Expanded(
        child: Center(
          child: Text("no text no gif"),
        ),
      );
    } else {
      return ListView.builder(
          shrinkWrap: true,
          itemCount: _listGif.length,
          itemBuilder: (context, index) {
            if (index == _listGif.length - 5) {
              developer.log("index fetch is $index");
              fetchData(inputText, _gifPerRequest, _offset, (gifs) {
                setState(() {
                  _loading = false;
                  _offset += _gifPerRequest;
                  _listGif.addAll(gifs);
                });
              }, () {
                setState(() {
                  _loading = false;
                  _error = true;
                });
              });
            }
            return Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
              child: GifItem(
                  url: _listGif[index].images?.fixedWidthDownsampled?.url),
            );
          });
    }
  }
}

Future<void> fetchData(String search, int limit, int offset,
    void Function(List<Gif> gifs) setstate, void Function() seterror) async {
  String apikey = dotenv.env['GIPHY_API_KEY'] ?? "";
  developer.log("FETCH: api $apikey");
  try {
    final response = await get(Uri.parse(
        "https://api.giphy.com/v1/gifs/search?api_key=$apikey&q=$search&limit=$limit&offset=$offset&rating=g&lang=en&bundle=messaging_non_clips"));
    dynamic responseList = json.decode(response.body);
    List<Gif> wes = (responseList["data"] as List)
        .map((data) => Gif.fromJson(data))
        .toList();
    developer.log("fetched good maybe check wes");
    setstate(wes);
  } catch (e) {
    seterror();
    developer.log("error details below");
    developer.log(e.toString());
  }
}
