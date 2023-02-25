import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'package:day_01/custom_icons_icons.dart';


class FileUpload extends StatefulWidget {
  final String title;

  FileUpload({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<FileUpload> createState() => _FileUploadState();
}

class _FileUploadState extends State<FileUpload> {
  FilePickerResult? result;
  String? _fileName;
  PlatformFile? pickedfile;
  bool isLoading = false;
  File? fileToDisplay;

  void pickFile()async {
    try {
      setState(() {
        isLoading = true;
      });

      result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: false,
      );

      if(result!= null){
        _fileName = result!.files.first.name;
        pickedfile = result!.files.first;
        fileToDisplay = File(pickedfile!.path.toString());

        print('File name $_fileName');
      }
      setState(() {
        isLoading =false;
      });
      
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 18,
              color: Color(0xFF0A2E36),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(15),
            dashPattern: [18],
            strokeWidth: 2,
            color: Color(0xFF0A2E36),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                constraints: new BoxConstraints(
                  minHeight: 150,
                ),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      CustomIcons.icon__cloud_upload_,
                      size: 50,
                      color: Color(0xFF231F20),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          if (pickedfile != null)
                            SizedBox(
                              height: 200,
                              width: 300,
                              child: Image.file(fileToDisplay!),
                            ),
                          const Text(
                            'Drag and Drop file to Upload',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF0A2E36),
                            ),
                          ),
                          const Text(
                            'or',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF0A2E36),
                            ),
                          ),
                          // ElevatedButton(
                          //   onPressed: () {},
                          //   child: const Text('Browse'),
                          // ),
                          InkWell(
                            onTap: () {
                              pickFile();
                            },
                            child: Container(
                              width: 111,
                              height: 33,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF0A2E36),
                                  borderRadius: BorderRadius.circular(31)),
                              child: const Center(
                                child: Text(
                                  'Browse',
                                  style: TextStyle(
                                    color: Color(0xFFCACFD6),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
