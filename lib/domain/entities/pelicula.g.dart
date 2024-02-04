// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pelicula.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPeliculaCollection on Isar {
  IsarCollection<Pelicula> get peliculas => this.collection();
}

const PeliculaSchema = CollectionSchema(
  name: r'Pelicula',
  id: -2153581202271026743,
  properties: {
    r'adulto': PropertySchema(
      id: 0,
      name: r'adulto',
      type: IsarType.bool,
    ),
    r'cantidadVotos': PropertySchema(
      id: 1,
      name: r'cantidadVotos',
      type: IsarType.long,
    ),
    r'descripcionGeneral': PropertySchema(
      id: 2,
      name: r'descripcionGeneral',
      type: IsarType.string,
    ),
    r'fechaLanzamiento': PropertySchema(
      id: 3,
      name: r'fechaLanzamiento',
      type: IsarType.dateTime,
    ),
    r'fondoPath': PropertySchema(
      id: 4,
      name: r'fondoPath',
      type: IsarType.string,
    ),
    r'generoIds': PropertySchema(
      id: 5,
      name: r'generoIds',
      type: IsarType.stringList,
    ),
    r'id': PropertySchema(
      id: 6,
      name: r'id',
      type: IsarType.long,
    ),
    r'lenguajeOriginal': PropertySchema(
      id: 7,
      name: r'lenguajeOriginal',
      type: IsarType.string,
    ),
    r'popularidad': PropertySchema(
      id: 8,
      name: r'popularidad',
      type: IsarType.double,
    ),
    r'posterPath': PropertySchema(
      id: 9,
      name: r'posterPath',
      type: IsarType.string,
    ),
    r'promedioVotos': PropertySchema(
      id: 10,
      name: r'promedioVotos',
      type: IsarType.double,
    ),
    r'titulo': PropertySchema(
      id: 11,
      name: r'titulo',
      type: IsarType.string,
    ),
    r'tituloOriginal': PropertySchema(
      id: 12,
      name: r'tituloOriginal',
      type: IsarType.string,
    ),
    r'video': PropertySchema(
      id: 13,
      name: r'video',
      type: IsarType.bool,
    )
  },
  estimateSize: _peliculaEstimateSize,
  serialize: _peliculaSerialize,
  deserialize: _peliculaDeserialize,
  deserializeProp: _peliculaDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _peliculaGetId,
  getLinks: _peliculaGetLinks,
  attach: _peliculaAttach,
  version: '3.1.0+1',
);

int _peliculaEstimateSize(
  Pelicula object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.descripcionGeneral.length * 3;
  bytesCount += 3 + object.fondoPath.length * 3;
  bytesCount += 3 + object.generoIds.length * 3;
  {
    for (var i = 0; i < object.generoIds.length; i++) {
      final value = object.generoIds[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.lenguajeOriginal.length * 3;
  bytesCount += 3 + object.posterPath.length * 3;
  bytesCount += 3 + object.titulo.length * 3;
  bytesCount += 3 + object.tituloOriginal.length * 3;
  return bytesCount;
}

void _peliculaSerialize(
  Pelicula object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.adulto);
  writer.writeLong(offsets[1], object.cantidadVotos);
  writer.writeString(offsets[2], object.descripcionGeneral);
  writer.writeDateTime(offsets[3], object.fechaLanzamiento);
  writer.writeString(offsets[4], object.fondoPath);
  writer.writeStringList(offsets[5], object.generoIds);
  writer.writeLong(offsets[6], object.id);
  writer.writeString(offsets[7], object.lenguajeOriginal);
  writer.writeDouble(offsets[8], object.popularidad);
  writer.writeString(offsets[9], object.posterPath);
  writer.writeDouble(offsets[10], object.promedioVotos);
  writer.writeString(offsets[11], object.titulo);
  writer.writeString(offsets[12], object.tituloOriginal);
  writer.writeBool(offsets[13], object.video);
}

Pelicula _peliculaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Pelicula(
    adulto: reader.readBool(offsets[0]),
    cantidadVotos: reader.readLong(offsets[1]),
    descripcionGeneral: reader.readString(offsets[2]),
    fechaLanzamiento: reader.readDateTimeOrNull(offsets[3]),
    fondoPath: reader.readString(offsets[4]),
    generoIds: reader.readStringList(offsets[5]) ?? [],
    id: reader.readLong(offsets[6]),
    lenguajeOriginal: reader.readString(offsets[7]),
    popularidad: reader.readDouble(offsets[8]),
    posterPath: reader.readString(offsets[9]),
    promedioVotos: reader.readDouble(offsets[10]),
    titulo: reader.readString(offsets[11]),
    tituloOriginal: reader.readString(offsets[12]),
    video: reader.readBool(offsets[13]),
  );
  object.isarId = id;
  return object;
}

P _peliculaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readStringList(offset) ?? []) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _peliculaGetId(Pelicula object) {
  return object.isarId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _peliculaGetLinks(Pelicula object) {
  return [];
}

void _peliculaAttach(IsarCollection<dynamic> col, Id id, Pelicula object) {
  object.isarId = id;
}

extension PeliculaQueryWhereSort on QueryBuilder<Pelicula, Pelicula, QWhere> {
  QueryBuilder<Pelicula, Pelicula, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PeliculaQueryWhere on QueryBuilder<Pelicula, Pelicula, QWhereClause> {
  QueryBuilder<Pelicula, Pelicula, QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterWhereClause> isarIdLessThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PeliculaQueryFilter
    on QueryBuilder<Pelicula, Pelicula, QFilterCondition> {
  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> adultoEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adulto',
        value: value,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> cantidadVotosEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cantidadVotos',
        value: value,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      cantidadVotosGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cantidadVotos',
        value: value,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> cantidadVotosLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cantidadVotos',
        value: value,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> cantidadVotosBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cantidadVotos',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      descripcionGeneralEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcionGeneral',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      descripcionGeneralGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'descripcionGeneral',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      descripcionGeneralLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'descripcionGeneral',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      descripcionGeneralBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'descripcionGeneral',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      descripcionGeneralStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'descripcionGeneral',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      descripcionGeneralEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'descripcionGeneral',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      descripcionGeneralContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descripcionGeneral',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      descripcionGeneralMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descripcionGeneral',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      descripcionGeneralIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcionGeneral',
        value: '',
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      descripcionGeneralIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descripcionGeneral',
        value: '',
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      fechaLanzamientoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaLanzamiento',
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      fechaLanzamientoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaLanzamiento',
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      fechaLanzamientoEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaLanzamiento',
        value: value,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      fechaLanzamientoGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaLanzamiento',
        value: value,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      fechaLanzamientoLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaLanzamiento',
        value: value,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      fechaLanzamientoBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaLanzamiento',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> fondoPathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fondoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> fondoPathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fondoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> fondoPathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fondoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> fondoPathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fondoPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> fondoPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fondoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> fondoPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fondoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> fondoPathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fondoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> fondoPathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fondoPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> fondoPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fondoPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      fondoPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fondoPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      generoIdsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'generoIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      generoIdsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'generoIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      generoIdsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'generoIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      generoIdsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'generoIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      generoIdsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'generoIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      generoIdsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'generoIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      generoIdsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'generoIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      generoIdsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'generoIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      generoIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'generoIds',
        value: '',
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      generoIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'generoIds',
        value: '',
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      generoIdsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'generoIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> generoIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'generoIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      generoIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'generoIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      generoIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'generoIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      generoIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'generoIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      generoIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'generoIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> isarIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> isarIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> isarIdEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> isarIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> isarIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> isarIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      lenguajeOriginalEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lenguajeOriginal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      lenguajeOriginalGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lenguajeOriginal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      lenguajeOriginalLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lenguajeOriginal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      lenguajeOriginalBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lenguajeOriginal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      lenguajeOriginalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lenguajeOriginal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      lenguajeOriginalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lenguajeOriginal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      lenguajeOriginalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lenguajeOriginal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      lenguajeOriginalMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lenguajeOriginal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      lenguajeOriginalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lenguajeOriginal',
        value: '',
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      lenguajeOriginalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lenguajeOriginal',
        value: '',
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> popularidadEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'popularidad',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      popularidadGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'popularidad',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> popularidadLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'popularidad',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> popularidadBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'popularidad',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> posterPathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> posterPathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> posterPathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> posterPathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'posterPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> posterPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> posterPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> posterPathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> posterPathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'posterPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> posterPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'posterPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      posterPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'posterPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> promedioVotosEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'promedioVotos',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      promedioVotosGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'promedioVotos',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> promedioVotosLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'promedioVotos',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> promedioVotosBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'promedioVotos',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> tituloEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> tituloGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> tituloLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> tituloBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'titulo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> tituloStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> tituloEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> tituloContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> tituloMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'titulo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> tituloIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titulo',
        value: '',
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> tituloIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'titulo',
        value: '',
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> tituloOriginalEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tituloOriginal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      tituloOriginalGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tituloOriginal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      tituloOriginalLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tituloOriginal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> tituloOriginalBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tituloOriginal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      tituloOriginalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tituloOriginal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      tituloOriginalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tituloOriginal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      tituloOriginalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tituloOriginal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> tituloOriginalMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tituloOriginal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      tituloOriginalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tituloOriginal',
        value: '',
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition>
      tituloOriginalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tituloOriginal',
        value: '',
      ));
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterFilterCondition> videoEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'video',
        value: value,
      ));
    });
  }
}

extension PeliculaQueryObject
    on QueryBuilder<Pelicula, Pelicula, QFilterCondition> {}

extension PeliculaQueryLinks
    on QueryBuilder<Pelicula, Pelicula, QFilterCondition> {}

extension PeliculaQuerySortBy on QueryBuilder<Pelicula, Pelicula, QSortBy> {
  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByAdulto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adulto', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByAdultoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adulto', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByCantidadVotos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cantidadVotos', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByCantidadVotosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cantidadVotos', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByDescripcionGeneral() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcionGeneral', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy>
      sortByDescripcionGeneralDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcionGeneral', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByFechaLanzamiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaLanzamiento', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByFechaLanzamientoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaLanzamiento', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByFondoPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fondoPath', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByFondoPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fondoPath', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByLenguajeOriginal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lenguajeOriginal', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByLenguajeOriginalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lenguajeOriginal', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByPopularidad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popularidad', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByPopularidadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popularidad', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByPosterPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterPath', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByPosterPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterPath', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByPromedioVotos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'promedioVotos', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByPromedioVotosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'promedioVotos', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByTitulo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByTituloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByTituloOriginal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tituloOriginal', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByTituloOriginalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tituloOriginal', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByVideo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'video', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> sortByVideoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'video', Sort.desc);
    });
  }
}

extension PeliculaQuerySortThenBy
    on QueryBuilder<Pelicula, Pelicula, QSortThenBy> {
  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByAdulto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adulto', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByAdultoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adulto', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByCantidadVotos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cantidadVotos', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByCantidadVotosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cantidadVotos', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByDescripcionGeneral() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcionGeneral', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy>
      thenByDescripcionGeneralDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcionGeneral', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByFechaLanzamiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaLanzamiento', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByFechaLanzamientoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaLanzamiento', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByFondoPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fondoPath', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByFondoPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fondoPath', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByLenguajeOriginal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lenguajeOriginal', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByLenguajeOriginalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lenguajeOriginal', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByPopularidad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popularidad', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByPopularidadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popularidad', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByPosterPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterPath', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByPosterPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterPath', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByPromedioVotos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'promedioVotos', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByPromedioVotosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'promedioVotos', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByTitulo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByTituloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByTituloOriginal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tituloOriginal', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByTituloOriginalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tituloOriginal', Sort.desc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByVideo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'video', Sort.asc);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QAfterSortBy> thenByVideoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'video', Sort.desc);
    });
  }
}

extension PeliculaQueryWhereDistinct
    on QueryBuilder<Pelicula, Pelicula, QDistinct> {
  QueryBuilder<Pelicula, Pelicula, QDistinct> distinctByAdulto() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'adulto');
    });
  }

  QueryBuilder<Pelicula, Pelicula, QDistinct> distinctByCantidadVotos() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cantidadVotos');
    });
  }

  QueryBuilder<Pelicula, Pelicula, QDistinct> distinctByDescripcionGeneral(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descripcionGeneral',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QDistinct> distinctByFechaLanzamiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaLanzamiento');
    });
  }

  QueryBuilder<Pelicula, Pelicula, QDistinct> distinctByFondoPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fondoPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QDistinct> distinctByGeneroIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'generoIds');
    });
  }

  QueryBuilder<Pelicula, Pelicula, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<Pelicula, Pelicula, QDistinct> distinctByLenguajeOriginal(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lenguajeOriginal',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QDistinct> distinctByPopularidad() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'popularidad');
    });
  }

  QueryBuilder<Pelicula, Pelicula, QDistinct> distinctByPosterPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'posterPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QDistinct> distinctByPromedioVotos() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'promedioVotos');
    });
  }

  QueryBuilder<Pelicula, Pelicula, QDistinct> distinctByTitulo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'titulo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QDistinct> distinctByTituloOriginal(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tituloOriginal',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Pelicula, Pelicula, QDistinct> distinctByVideo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'video');
    });
  }
}

extension PeliculaQueryProperty
    on QueryBuilder<Pelicula, Pelicula, QQueryProperty> {
  QueryBuilder<Pelicula, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<Pelicula, bool, QQueryOperations> adultoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'adulto');
    });
  }

  QueryBuilder<Pelicula, int, QQueryOperations> cantidadVotosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cantidadVotos');
    });
  }

  QueryBuilder<Pelicula, String, QQueryOperations>
      descripcionGeneralProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descripcionGeneral');
    });
  }

  QueryBuilder<Pelicula, DateTime?, QQueryOperations>
      fechaLanzamientoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaLanzamiento');
    });
  }

  QueryBuilder<Pelicula, String, QQueryOperations> fondoPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fondoPath');
    });
  }

  QueryBuilder<Pelicula, List<String>, QQueryOperations> generoIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'generoIds');
    });
  }

  QueryBuilder<Pelicula, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Pelicula, String, QQueryOperations> lenguajeOriginalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lenguajeOriginal');
    });
  }

  QueryBuilder<Pelicula, double, QQueryOperations> popularidadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'popularidad');
    });
  }

  QueryBuilder<Pelicula, String, QQueryOperations> posterPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'posterPath');
    });
  }

  QueryBuilder<Pelicula, double, QQueryOperations> promedioVotosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'promedioVotos');
    });
  }

  QueryBuilder<Pelicula, String, QQueryOperations> tituloProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'titulo');
    });
  }

  QueryBuilder<Pelicula, String, QQueryOperations> tituloOriginalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tituloOriginal');
    });
  }

  QueryBuilder<Pelicula, bool, QQueryOperations> videoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'video');
    });
  }
}
