// ignore_for_file: depend_on_referenced packages

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_project_8/album_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_8/rest_album_provider.dart';

class AlbumDioProvider{
  final Dio dio = Dio();

  Future<List<AlbumModel>> fetchAlbums() async {
    final responce = 
      await dio.get('https://jsonplaceholder.typicode.com/albums',
      cancelToken: CancelToken());

    return (responce.data as List).map((e) => AlbumModel.fromJson(e)).toList();
  }

  Future<int> createAlbum(AlbumModel model) async {
    final responce = await dio.post('https://jsonplaceholder.typicode.com/albums', data: model);

    return responce.statusCode ?? 0;
  }
}

class DioPage extends StatefulWidget {
  const DioPage({super.key});
  @override
  State<DioPage> createState() => _DioPageState();
}

class _DioPageState extends State<DioPage> {
  Future<List<AlbumModel>>? future;

  late final AlbumDioProvider albumDioProvider;

  @override
  void initState() {
    super.initState();
    albumDioProvider = AlbumDioProvider();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        future = albumDioProvider.fetchAlbums();
                      });
                    },
                    child: const Text('Получить альбомы')),
                    ElevatedButton(
                    onPressed: () async {
                        final result = await albumDioProvider.createAlbum(
                        const AlbumModel(userId: 1, id: 1, title: 'Test'));
                        if(mounted) {
                          showDialog(
                          context: context,
                          builder: (context) {
                          return AlertDialog(
                            title: Text('Запрос выполнен кодом $result'),
                          );
                        });
                        }
                      },
                    child: const Text('Создать альбом')),
                ],
              ),
            FutureBuilder(
                future: future,
                builder: ((context, snapshot){
                if(snapshot.data != null && snapshot.hasData) {
                  return Column(
                    children: [
                      ...snapshot.data?.map((e) => Row(
                        children: [
                          Text('ID: ${e.id}'),
                          Expanded(
                            child: Text('Title: ${e.title} '))
                        ],
                      )) ?? []
                    ],
                  );
                }

                return const Text('No albums');
              }))
            ],
          ),
        ),
      ),
    );
  }
}