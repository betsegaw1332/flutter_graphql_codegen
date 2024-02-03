import 'package:gql/ast.dart';

class Query$FetchCountry {
  Query$FetchCountry({
    this.fetchCountry,
    this.$__typename = 'Query',
  });

  factory Query$FetchCountry.fromJson(Map<String, dynamic> json) {
    final l$fetchCountry = json['fetchCountry'];
    final l$$__typename = json['__typename'];
    return Query$FetchCountry(
      fetchCountry: (l$fetchCountry as List<dynamic>?)
          ?.map((e) => Query$FetchCountry$fetchCountry.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FetchCountry$fetchCountry>? fetchCountry;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fetchCountry = fetchCountry;
    _resultData['fetchCountry'] =
        l$fetchCountry?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fetchCountry = fetchCountry;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fetchCountry == null
          ? null
          : Object.hashAll(l$fetchCountry.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchCountry) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$fetchCountry = fetchCountry;
    final lOther$fetchCountry = other.fetchCountry;
    if (l$fetchCountry != null && lOther$fetchCountry != null) {
      if (l$fetchCountry.length != lOther$fetchCountry.length) {
        return false;
      }
      for (int i = 0; i < l$fetchCountry.length; i++) {
        final l$fetchCountry$entry = l$fetchCountry[i];
        final lOther$fetchCountry$entry = lOther$fetchCountry[i];
        if (l$fetchCountry$entry != lOther$fetchCountry$entry) {
          return false;
        }
      }
    } else if (l$fetchCountry != lOther$fetchCountry) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchCountry on Query$FetchCountry {
  CopyWith$Query$FetchCountry<Query$FetchCountry> get copyWith =>
      CopyWith$Query$FetchCountry(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchCountry<TRes> {
  factory CopyWith$Query$FetchCountry(
    Query$FetchCountry instance,
    TRes Function(Query$FetchCountry) then,
  ) = _CopyWithImpl$Query$FetchCountry;

  factory CopyWith$Query$FetchCountry.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCountry;

  TRes call({
    List<Query$FetchCountry$fetchCountry>? fetchCountry,
    String? $__typename,
  });
  TRes fetchCountry(
      Iterable<Query$FetchCountry$fetchCountry>? Function(
              Iterable<
                  CopyWith$Query$FetchCountry$fetchCountry<
                      Query$FetchCountry$fetchCountry>>?)
          _fn);
}

class _CopyWithImpl$Query$FetchCountry<TRes>
    implements CopyWith$Query$FetchCountry<TRes> {
  _CopyWithImpl$Query$FetchCountry(
    this._instance,
    this._then,
  );

  final Query$FetchCountry _instance;

  final TRes Function(Query$FetchCountry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fetchCountry = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCountry(
        fetchCountry: fetchCountry == _undefined
            ? _instance.fetchCountry
            : (fetchCountry as List<Query$FetchCountry$fetchCountry>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes fetchCountry(
          Iterable<Query$FetchCountry$fetchCountry>? Function(
                  Iterable<
                      CopyWith$Query$FetchCountry$fetchCountry<
                          Query$FetchCountry$fetchCountry>>?)
              _fn) =>
      call(
          fetchCountry: _fn(_instance.fetchCountry
              ?.map((e) => CopyWith$Query$FetchCountry$fetchCountry(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$FetchCountry<TRes>
    implements CopyWith$Query$FetchCountry<TRes> {
  _CopyWithStubImpl$Query$FetchCountry(this._res);

  TRes _res;

  call({
    List<Query$FetchCountry$fetchCountry>? fetchCountry,
    String? $__typename,
  }) =>
      _res;

  fetchCountry(_fn) => _res;
}

const documentNodeQueryFetchCountry = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchCountry'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'countries'),
        alias: NameNode(value: 'fetchCountry'),
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'capital'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$FetchCountry$fetchCountry {
  Query$FetchCountry$fetchCountry({
    this.name,
    this.capital,
    this.$__typename = 'Country',
  });

  factory Query$FetchCountry$fetchCountry.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$capital = json['capital'];
    final l$$__typename = json['__typename'];
    return Query$FetchCountry$fetchCountry(
      name: (l$name as String?),
      capital: (l$capital as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String? capital;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$capital = capital;
    _resultData['capital'] = l$capital;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$capital = capital;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$capital,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchCountry$fetchCountry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$capital = capital;
    final lOther$capital = other.capital;
    if (l$capital != lOther$capital) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchCountry$fetchCountry
    on Query$FetchCountry$fetchCountry {
  CopyWith$Query$FetchCountry$fetchCountry<Query$FetchCountry$fetchCountry>
      get copyWith => CopyWith$Query$FetchCountry$fetchCountry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCountry$fetchCountry<TRes> {
  factory CopyWith$Query$FetchCountry$fetchCountry(
    Query$FetchCountry$fetchCountry instance,
    TRes Function(Query$FetchCountry$fetchCountry) then,
  ) = _CopyWithImpl$Query$FetchCountry$fetchCountry;

  factory CopyWith$Query$FetchCountry$fetchCountry.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCountry$fetchCountry;

  TRes call({
    String? name,
    String? capital,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCountry$fetchCountry<TRes>
    implements CopyWith$Query$FetchCountry$fetchCountry<TRes> {
  _CopyWithImpl$Query$FetchCountry$fetchCountry(
    this._instance,
    this._then,
  );

  final Query$FetchCountry$fetchCountry _instance;

  final TRes Function(Query$FetchCountry$fetchCountry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? capital = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCountry$fetchCountry(
        name: name == _undefined ? _instance.name : (name as String?),
        capital:
            capital == _undefined ? _instance.capital : (capital as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCountry$fetchCountry<TRes>
    implements CopyWith$Query$FetchCountry$fetchCountry<TRes> {
  _CopyWithStubImpl$Query$FetchCountry$fetchCountry(this._res);

  TRes _res;

  call({
    String? name,
    String? capital,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetCountryWithCode {
  factory Variables$Query$GetCountryWithCode({required String code}) =>
      Variables$Query$GetCountryWithCode._({
        r'code': code,
      });

  Variables$Query$GetCountryWithCode._(this._$data);

  factory Variables$Query$GetCountryWithCode.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    return Variables$Query$GetCountryWithCode._(result$data);
  }

  Map<String, dynamic> _$data;

  String get code => (_$data['code'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$code = code;
    result$data['code'] = l$code;
    return result$data;
  }

  CopyWith$Variables$Query$GetCountryWithCode<
          Variables$Query$GetCountryWithCode>
      get copyWith => CopyWith$Variables$Query$GetCountryWithCode(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetCountryWithCode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    return Object.hashAll([l$code]);
  }
}

abstract class CopyWith$Variables$Query$GetCountryWithCode<TRes> {
  factory CopyWith$Variables$Query$GetCountryWithCode(
    Variables$Query$GetCountryWithCode instance,
    TRes Function(Variables$Query$GetCountryWithCode) then,
  ) = _CopyWithImpl$Variables$Query$GetCountryWithCode;

  factory CopyWith$Variables$Query$GetCountryWithCode.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCountryWithCode;

  TRes call({String? code});
}

class _CopyWithImpl$Variables$Query$GetCountryWithCode<TRes>
    implements CopyWith$Variables$Query$GetCountryWithCode<TRes> {
  _CopyWithImpl$Variables$Query$GetCountryWithCode(
    this._instance,
    this._then,
  );

  final Variables$Query$GetCountryWithCode _instance;

  final TRes Function(Variables$Query$GetCountryWithCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined}) =>
      _then(Variables$Query$GetCountryWithCode._({
        ..._instance._$data,
        if (code != _undefined && code != null) 'code': (code as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetCountryWithCode<TRes>
    implements CopyWith$Variables$Query$GetCountryWithCode<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCountryWithCode(this._res);

  TRes _res;

  call({String? code}) => _res;
}

class Query$GetCountryWithCode {
  Query$GetCountryWithCode({
    this.getCountryWithCode,
    this.$__typename = 'Query',
  });

  factory Query$GetCountryWithCode.fromJson(Map<String, dynamic> json) {
    final l$getCountryWithCode = json['getCountryWithCode'];
    final l$$__typename = json['__typename'];
    return Query$GetCountryWithCode(
      getCountryWithCode: l$getCountryWithCode == null
          ? null
          : Query$GetCountryWithCode$getCountryWithCode.fromJson(
              (l$getCountryWithCode as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCountryWithCode$getCountryWithCode? getCountryWithCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getCountryWithCode = getCountryWithCode;
    _resultData['getCountryWithCode'] = l$getCountryWithCode?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getCountryWithCode = getCountryWithCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getCountryWithCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCountryWithCode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getCountryWithCode = getCountryWithCode;
    final lOther$getCountryWithCode = other.getCountryWithCode;
    if (l$getCountryWithCode != lOther$getCountryWithCode) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCountryWithCode
    on Query$GetCountryWithCode {
  CopyWith$Query$GetCountryWithCode<Query$GetCountryWithCode> get copyWith =>
      CopyWith$Query$GetCountryWithCode(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCountryWithCode<TRes> {
  factory CopyWith$Query$GetCountryWithCode(
    Query$GetCountryWithCode instance,
    TRes Function(Query$GetCountryWithCode) then,
  ) = _CopyWithImpl$Query$GetCountryWithCode;

  factory CopyWith$Query$GetCountryWithCode.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCountryWithCode;

  TRes call({
    Query$GetCountryWithCode$getCountryWithCode? getCountryWithCode,
    String? $__typename,
  });
  CopyWith$Query$GetCountryWithCode$getCountryWithCode<TRes>
      get getCountryWithCode;
}

class _CopyWithImpl$Query$GetCountryWithCode<TRes>
    implements CopyWith$Query$GetCountryWithCode<TRes> {
  _CopyWithImpl$Query$GetCountryWithCode(
    this._instance,
    this._then,
  );

  final Query$GetCountryWithCode _instance;

  final TRes Function(Query$GetCountryWithCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getCountryWithCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCountryWithCode(
        getCountryWithCode: getCountryWithCode == _undefined
            ? _instance.getCountryWithCode
            : (getCountryWithCode
                as Query$GetCountryWithCode$getCountryWithCode?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetCountryWithCode$getCountryWithCode<TRes>
      get getCountryWithCode {
    final local$getCountryWithCode = _instance.getCountryWithCode;
    return local$getCountryWithCode == null
        ? CopyWith$Query$GetCountryWithCode$getCountryWithCode.stub(
            _then(_instance))
        : CopyWith$Query$GetCountryWithCode$getCountryWithCode(
            local$getCountryWithCode, (e) => call(getCountryWithCode: e));
  }
}

class _CopyWithStubImpl$Query$GetCountryWithCode<TRes>
    implements CopyWith$Query$GetCountryWithCode<TRes> {
  _CopyWithStubImpl$Query$GetCountryWithCode(this._res);

  TRes _res;

  call({
    Query$GetCountryWithCode$getCountryWithCode? getCountryWithCode,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetCountryWithCode$getCountryWithCode<TRes>
      get getCountryWithCode =>
          CopyWith$Query$GetCountryWithCode$getCountryWithCode.stub(_res);
}

const documentNodeQueryGetCountryWithCode = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetCountryWithCode'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'code')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'country'),
        alias: NameNode(value: 'getCountryWithCode'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: VariableNode(name: NameNode(value: 'code')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$GetCountryWithCode$getCountryWithCode {
  Query$GetCountryWithCode$getCountryWithCode({
    this.name,
    this.$__typename = 'Country',
  });

  factory Query$GetCountryWithCode$getCountryWithCode.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetCountryWithCode$getCountryWithCode(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCountryWithCode$getCountryWithCode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCountryWithCode$getCountryWithCode
    on Query$GetCountryWithCode$getCountryWithCode {
  CopyWith$Query$GetCountryWithCode$getCountryWithCode<
          Query$GetCountryWithCode$getCountryWithCode>
      get copyWith => CopyWith$Query$GetCountryWithCode$getCountryWithCode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCountryWithCode$getCountryWithCode<TRes> {
  factory CopyWith$Query$GetCountryWithCode$getCountryWithCode(
    Query$GetCountryWithCode$getCountryWithCode instance,
    TRes Function(Query$GetCountryWithCode$getCountryWithCode) then,
  ) = _CopyWithImpl$Query$GetCountryWithCode$getCountryWithCode;

  factory CopyWith$Query$GetCountryWithCode$getCountryWithCode.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCountryWithCode$getCountryWithCode;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCountryWithCode$getCountryWithCode<TRes>
    implements CopyWith$Query$GetCountryWithCode$getCountryWithCode<TRes> {
  _CopyWithImpl$Query$GetCountryWithCode$getCountryWithCode(
    this._instance,
    this._then,
  );

  final Query$GetCountryWithCode$getCountryWithCode _instance;

  final TRes Function(Query$GetCountryWithCode$getCountryWithCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCountryWithCode$getCountryWithCode(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCountryWithCode$getCountryWithCode<TRes>
    implements CopyWith$Query$GetCountryWithCode$getCountryWithCode<TRes> {
  _CopyWithStubImpl$Query$GetCountryWithCode$getCountryWithCode(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}
