// Mocks generated by Mockito 5.4.4 from annotations
// in paintroid/test/widget/landing_page/landing_page_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes

// Dart imports:
import 'dart:async' as _i3;
import 'dart:io' as _i13;
import 'dart:typed_data' as _i11;
import 'dart:ui' as _i6;

// Package imports:
import 'package:mockito/mockito.dart' as _i1;
import 'package:oxidized/oxidized.dart' as _i5;
import 'package:sqflite/sqflite.dart' as _i4;

// Project imports:
import 'package:paintroid/core/database/project_dao.dart' as _i2;
import 'package:paintroid/core/database/project_database.dart' as _i7;
import 'package:paintroid/core/models/database/project.dart' as _i8;
import 'package:paintroid/core/providers/object/device_service.dart' as _i14;
import 'package:paintroid/core/providers/object/file_service.dart' as _i12;
import 'package:paintroid/core/providers/object/image_service.dart' as _i9;
import 'package:paintroid/core/utils/failure.dart' as _i10;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeProjectDAO_0 extends _i1.SmartFake implements _i2.ProjectDAO {
  _FakeProjectDAO_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamController_1<T> extends _i1.SmartFake
    implements _i3.StreamController<T> {
  _FakeStreamController_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDatabaseExecutor_2 extends _i1.SmartFake
    implements _i4.DatabaseExecutor {
  _FakeDatabaseExecutor_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResult_3<T extends Object, E extends Object> extends _i1.SmartFake
    implements _i5.Result<T, E> {
  _FakeResult_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSize_4 extends _i1.SmartFake implements _i6.Size {
  _FakeSize_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ProjectDatabase].
///
/// See the documentation for Mockito's code generation for more information.
class MockProjectDatabase extends _i1.Mock implements _i7.ProjectDatabase {
  MockProjectDatabase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.ProjectDAO get projectDAO => (super.noSuchMethod(
        Invocation.getter(#projectDAO),
        returnValue: _FakeProjectDAO_0(
          this,
          Invocation.getter(#projectDAO),
        ),
      ) as _i2.ProjectDAO);

  @override
  _i3.StreamController<String> get changeListener => (super.noSuchMethod(
        Invocation.getter(#changeListener),
        returnValue: _FakeStreamController_1<String>(
          this,
          Invocation.getter(#changeListener),
        ),
      ) as _i3.StreamController<String>);

  @override
  set changeListener(_i3.StreamController<String>? _changeListener) =>
      super.noSuchMethod(
        Invocation.setter(
          #changeListener,
          _changeListener,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i4.DatabaseExecutor get database => (super.noSuchMethod(
        Invocation.getter(#database),
        returnValue: _FakeDatabaseExecutor_2(
          this,
          Invocation.getter(#database),
        ),
      ) as _i4.DatabaseExecutor);

  @override
  set database(_i4.DatabaseExecutor? _database) => super.noSuchMethod(
        Invocation.setter(
          #database,
          _database,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i3.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
}

/// A class which mocks [ProjectDAO].
///
/// See the documentation for Mockito's code generation for more information.
class MockProjectDAO extends _i1.Mock implements _i2.ProjectDAO {
  MockProjectDAO() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<int> insertProject(_i8.Project? project) => (super.noSuchMethod(
        Invocation.method(
          #insertProject,
          [project],
        ),
        returnValue: _i3.Future<int>.value(0),
      ) as _i3.Future<int>);

  @override
  _i3.Future<List<int>> insertProjects(List<_i8.Project>? projects) =>
      (super.noSuchMethod(
        Invocation.method(
          #insertProjects,
          [projects],
        ),
        returnValue: _i3.Future<List<int>>.value(<int>[]),
      ) as _i3.Future<List<int>>);

  @override
  _i3.Future<void> deleteProject(int? id) => (super.noSuchMethod(
        Invocation.method(
          #deleteProject,
          [id],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> deleteProjects(List<_i8.Project>? projects) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteProjects,
          [projects],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<List<_i8.Project>> getProjects() => (super.noSuchMethod(
        Invocation.method(
          #getProjects,
          [],
        ),
        returnValue: _i3.Future<List<_i8.Project>>.value(<_i8.Project>[]),
      ) as _i3.Future<List<_i8.Project>>);

  @override
  _i3.Future<_i8.Project?> getProjectByName(String? name) =>
      (super.noSuchMethod(
        Invocation.method(
          #getProjectByName,
          [name],
        ),
        returnValue: _i3.Future<_i8.Project?>.value(),
      ) as _i3.Future<_i8.Project?>);
}

/// A class which mocks [IImageService].
///
/// See the documentation for Mockito's code generation for more information.
class MockIImageService extends _i1.Mock implements _i9.IImageService {
  MockIImageService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<_i5.Result<_i6.Image, _i10.Failure>> import(
          _i11.Uint8List? fileData) =>
      (super.noSuchMethod(
        Invocation.method(
          #import,
          [fileData],
        ),
        returnValue: _i3.Future<_i5.Result<_i6.Image, _i10.Failure>>.value(
            _FakeResult_3<_i6.Image, _i10.Failure>(
          this,
          Invocation.method(
            #import,
            [fileData],
          ),
        )),
      ) as _i3.Future<_i5.Result<_i6.Image, _i10.Failure>>);

  @override
  _i3.Future<_i5.Result<_i11.Uint8List, _i10.Failure>> exportAsJpg(
    _i6.Image? image,
    int? quality,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #exportAsJpg,
          [
            image,
            quality,
          ],
        ),
        returnValue: _i3.Future<_i5.Result<_i11.Uint8List, _i10.Failure>>.value(
            _FakeResult_3<_i11.Uint8List, _i10.Failure>(
          this,
          Invocation.method(
            #exportAsJpg,
            [
              image,
              quality,
            ],
          ),
        )),
      ) as _i3.Future<_i5.Result<_i11.Uint8List, _i10.Failure>>);

  @override
  _i3.Future<_i5.Result<_i11.Uint8List, _i10.Failure>> exportAsPng(
          _i6.Image? image) =>
      (super.noSuchMethod(
        Invocation.method(
          #exportAsPng,
          [image],
        ),
        returnValue: _i3.Future<_i5.Result<_i11.Uint8List, _i10.Failure>>.value(
            _FakeResult_3<_i11.Uint8List, _i10.Failure>(
          this,
          Invocation.method(
            #exportAsPng,
            [image],
          ),
        )),
      ) as _i3.Future<_i5.Result<_i11.Uint8List, _i10.Failure>>);

  @override
  _i5.Result<_i11.Uint8List, _i10.Failure> getProjectPreview(String? path) =>
      (super.noSuchMethod(
        Invocation.method(
          #getProjectPreview,
          [path],
        ),
        returnValue: _FakeResult_3<_i11.Uint8List, _i10.Failure>(
          this,
          Invocation.method(
            #getProjectPreview,
            [path],
          ),
        ),
      ) as _i5.Result<_i11.Uint8List, _i10.Failure>);
}

/// A class which mocks [IFileService].
///
/// See the documentation for Mockito's code generation for more information.
class MockIFileService extends _i1.Mock implements _i12.IFileService {
  MockIFileService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<_i5.Result<_i13.File, _i10.Failure>> save(
    String? filename,
    _i11.Uint8List? data,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #save,
          [
            filename,
            data,
          ],
        ),
        returnValue: _i3.Future<_i5.Result<_i13.File, _i10.Failure>>.value(
            _FakeResult_3<_i13.File, _i10.Failure>(
          this,
          Invocation.method(
            #save,
            [
              filename,
              data,
            ],
          ),
        )),
      ) as _i3.Future<_i5.Result<_i13.File, _i10.Failure>>);

  @override
  _i3.Future<_i5.Result<_i13.File, _i10.Failure>> saveToApplicationDirectory(
    String? filename,
    _i11.Uint8List? data,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveToApplicationDirectory,
          [
            filename,
            data,
          ],
        ),
        returnValue: _i3.Future<_i5.Result<_i13.File, _i10.Failure>>.value(
            _FakeResult_3<_i13.File, _i10.Failure>(
          this,
          Invocation.method(
            #saveToApplicationDirectory,
            [
              filename,
              data,
            ],
          ),
        )),
      ) as _i3.Future<_i5.Result<_i13.File, _i10.Failure>>);

  @override
  _i3.Future<_i5.Result<_i13.File, _i10.Failure>> pick() => (super.noSuchMethod(
        Invocation.method(
          #pick,
          [],
        ),
        returnValue: _i3.Future<_i5.Result<_i13.File, _i10.Failure>>.value(
            _FakeResult_3<_i13.File, _i10.Failure>(
          this,
          Invocation.method(
            #pick,
            [],
          ),
        )),
      ) as _i3.Future<_i5.Result<_i13.File, _i10.Failure>>);

  @override
  _i5.Result<_i13.File, _i10.Failure> getFile(String? path) =>
      (super.noSuchMethod(
        Invocation.method(
          #getFile,
          [path],
        ),
        returnValue: _FakeResult_3<_i13.File, _i10.Failure>(
          this,
          Invocation.method(
            #getFile,
            [path],
          ),
        ),
      ) as _i5.Result<_i13.File, _i10.Failure>);

  @override
  _i3.Future<bool> checkIfFileExistsInApplicationDirectory(String? fileName) =>
      (super.noSuchMethod(
        Invocation.method(
          #checkIfFileExistsInApplicationDirectory,
          [fileName],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);

  @override
  _i3.Future<_i5.Result<_i13.FileSystemEntity, _i10.Failure>>
      deleteFileInApplicationDirectory(String? fileName) => (super.noSuchMethod(
            Invocation.method(
              #deleteFileInApplicationDirectory,
              [fileName],
            ),
            returnValue: _i3
                .Future<_i5.Result<_i13.FileSystemEntity, _i10.Failure>>.value(
                _FakeResult_3<_i13.FileSystemEntity, _i10.Failure>(
              this,
              Invocation.method(
                #deleteFileInApplicationDirectory,
                [fileName],
              ),
            )),
          ) as _i3.Future<_i5.Result<_i13.FileSystemEntity, _i10.Failure>>);
}

/// A class which mocks [IDeviceService].
///
/// See the documentation for Mockito's code generation for more information.
class MockIDeviceService extends _i1.Mock implements _i14.IDeviceService {
  MockIDeviceService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<_i6.Size> getSizeInPixels() => (super.noSuchMethod(
        Invocation.method(
          #getSizeInPixels,
          [],
        ),
        returnValue: _i3.Future<_i6.Size>.value(_FakeSize_4(
          this,
          Invocation.method(
            #getSizeInPixels,
            [],
          ),
        )),
      ) as _i3.Future<_i6.Size>);
}
