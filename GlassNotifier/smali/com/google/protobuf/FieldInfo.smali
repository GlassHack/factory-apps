.class final Lcom/google/protobuf/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/FieldInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/protobuf/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final enforceUtf8:Z

.field private final enumMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;"
        }
    .end annotation
.end field

.field private final field:Ljava/lang/reflect/Field;

.field private final fieldNumber:I

.field private final lazy:Z

.field private final mapDefaultEntry:Ljava/lang/Object;

.field private final oneof:Lcom/google/protobuf/OneofInfo;

.field private final oneofStoredType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final presenceField:Ljava/lang/reflect/Field;

.field private final presenceMask:I

.field private final required:Z

.field private final type:Lcom/google/protobuf/FieldType;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/Internal$EnumLiteMap;Z)V
    .locals 0
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "fieldNumber"    # I
    .param p3, "type"    # Lcom/google/protobuf/FieldType;
    .param p4, "presenceField"    # Ljava/lang/reflect/Field;
    .param p5, "presenceMask"    # I
    .param p6, "required"    # Z
    .param p7, "enforceUtf8"    # Z
    .param p8, "oneof"    # Lcom/google/protobuf/OneofInfo;
    .param p10, "mapDefaultEntry"    # Ljava/lang/Object;
    .param p12, "lazy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/google/protobuf/FieldType;",
            "Ljava/lang/reflect/Field;",
            "IZZ",
            "Lcom/google/protobuf/OneofInfo;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p9, "oneofStoredType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p11, "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Lcom/google/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 329
    iput-object p3, p0, Lcom/google/protobuf/FieldInfo;->type:Lcom/google/protobuf/FieldType;

    .line 330
    iput p2, p0, Lcom/google/protobuf/FieldInfo;->fieldNumber:I

    .line 331
    iput-object p4, p0, Lcom/google/protobuf/FieldInfo;->presenceField:Ljava/lang/reflect/Field;

    .line 332
    iput p5, p0, Lcom/google/protobuf/FieldInfo;->presenceMask:I

    .line 333
    iput-boolean p6, p0, Lcom/google/protobuf/FieldInfo;->required:Z

    .line 334
    iput-boolean p7, p0, Lcom/google/protobuf/FieldInfo;->enforceUtf8:Z

    .line 335
    iput-object p8, p0, Lcom/google/protobuf/FieldInfo;->oneof:Lcom/google/protobuf/OneofInfo;

    .line 336
    iput-object p9, p0, Lcom/google/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    .line 337
    iput-object p10, p0, Lcom/google/protobuf/FieldInfo;->mapDefaultEntry:Ljava/lang/Object;

    .line 338
    iput-object p11, p0, Lcom/google/protobuf/FieldInfo;->enumMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 339
    iput-boolean p12, p0, Lcom/google/protobuf/FieldInfo;->lazy:Z

    .line 340
    return-void
.end method

.method private static checkFieldNumber(I)V
    .locals 3
    .param p0, "fieldNumber"    # I

    .prologue
    .line 232
    if-gtz p0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "fieldNumber must be positive: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    return-void
.end method

.method public static forField(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Z)Lcom/google/protobuf/FieldInfo;
    .locals 13
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/google/protobuf/FieldType;
    .param p3, "enforceUtf8"    # Z

    .prologue
    .line 40
    invoke-static {p1}, Lcom/google/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 41
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    const-string v0, "fieldType"

    invoke-static {p2, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    new-instance v0, Lcom/google/protobuf/FieldInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move/from16 v7, p3

    invoke-direct/range {v0 .. v12}, Lcom/google/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/Internal$EnumLiteMap;Z)V

    return-object v0
.end method

.method public static forFieldWithEnumMap(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Lcom/google/protobuf/Internal$EnumLiteMap;)Lcom/google/protobuf/FieldInfo;
    .locals 13
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/google/protobuf/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/google/protobuf/FieldType;",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;)",
            "Lcom/google/protobuf/FieldInfo;"
        }
    .end annotation

    .prologue
    .line 83
    .local p3, "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    invoke-static {p1}, Lcom/google/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 84
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    new-instance v0, Lcom/google/protobuf/FieldInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object/from16 v11, p3

    invoke-direct/range {v0 .. v12}, Lcom/google/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/Internal$EnumLiteMap;Z)V

    return-object v0
.end method

.method public static forLazyField(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;)Lcom/google/protobuf/FieldInfo;
    .locals 13
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/google/protobuf/FieldType;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 60
    invoke-static {p1}, Lcom/google/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 61
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    const-string v0, "fieldType"

    invoke-static {p2, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    new-instance v0, Lcom/google/protobuf/FieldInfo;

    const/4 v12, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, v5

    move v7, v5

    move-object v8, v4

    move-object v9, v4

    move-object v10, v4

    move-object v11, v4

    invoke-direct/range {v0 .. v12}, Lcom/google/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/Internal$EnumLiteMap;Z)V

    return-object v0
.end method

.method public static forMapField(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/google/protobuf/Internal$EnumLiteMap;)Lcom/google/protobuf/FieldInfo;
    .locals 13
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "mapDefaultEntry"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;)",
            "Lcom/google/protobuf/FieldInfo;"
        }
    .end annotation

    .prologue
    .line 297
    .local p3, "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    const-string v0, "mapDefaultEntry"

    invoke-static {p2, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 298
    invoke-static {p1}, Lcom/google/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 299
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 300
    new-instance v0, Lcom/google/protobuf/FieldInfo;

    sget-object v3, Lcom/google/protobuf/FieldType;->MAP:Lcom/google/protobuf/FieldType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move v2, p1

    move-object v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v0 .. v12}, Lcom/google/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/Internal$EnumLiteMap;Z)V

    return-object v0
.end method

.method public static forOneofLazyField(ILcom/google/protobuf/FieldType;Lcom/google/protobuf/OneofInfo;Ljava/lang/Class;)Lcom/google/protobuf/FieldInfo;
    .locals 14
    .param p0, "fieldNumber"    # I
    .param p1, "fieldType"    # Lcom/google/protobuf/FieldType;
    .param p2, "oneof"    # Lcom/google/protobuf/OneofInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/protobuf/FieldType;",
            "Lcom/google/protobuf/OneofInfo;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/protobuf/FieldInfo;"
        }
    .end annotation

    .prologue
    .line 205
    .local p3, "oneofStoredType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/google/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 206
    const-string v1, "fieldType"

    invoke-static {p1, v1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    const-string v1, "oneof"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    const-string v1, "oneofStoredType"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    invoke-virtual {p1}, Lcom/google/protobuf/FieldType;->isScalar()Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x48

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Oneof is only supported for scalar fields. Field "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_0
    new-instance v1, Lcom/google/protobuf/FieldInfo;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move v3, p0

    move-object v4, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v1 .. v13}, Lcom/google/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/Internal$EnumLiteMap;Z)V

    return-object v1
.end method

.method public static forOneofMemberField(ILcom/google/protobuf/FieldType;Lcom/google/protobuf/OneofInfo;Ljava/lang/Class;ZLcom/google/protobuf/Internal$EnumLiteMap;)Lcom/google/protobuf/FieldInfo;
    .locals 14
    .param p0, "fieldNumber"    # I
    .param p1, "fieldType"    # Lcom/google/protobuf/FieldType;
    .param p2, "oneof"    # Lcom/google/protobuf/OneofInfo;
    .param p4, "enforceUtf8"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/protobuf/FieldType;",
            "Lcom/google/protobuf/OneofInfo;",
            "Ljava/lang/Class",
            "<*>;Z",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;)",
            "Lcom/google/protobuf/FieldInfo;"
        }
    .end annotation

    .prologue
    .line 177
    .local p3, "oneofStoredType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    invoke-static {p0}, Lcom/google/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 178
    const-string v1, "fieldType"

    invoke-static {p1, v1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    const-string v1, "oneof"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    const-string v1, "oneofStoredType"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    invoke-virtual {p1}, Lcom/google/protobuf/FieldType;->isScalar()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x48

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Oneof is only supported for scalar fields. Field "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_0
    new-instance v1, Lcom/google/protobuf/FieldInfo;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move v3, p0

    move-object v4, p1

    move/from16 v8, p4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    invoke-direct/range {v1 .. v13}, Lcom/google/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/Internal$EnumLiteMap;Z)V

    return-object v1
.end method

.method public static forProto2OptionalField(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/google/protobuf/Internal$EnumLiteMap;)Lcom/google/protobuf/FieldInfo;
    .locals 14
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/google/protobuf/FieldType;
    .param p3, "presenceField"    # Ljava/lang/reflect/Field;
    .param p4, "presenceMask"    # I
    .param p5, "enforceUtf8"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/google/protobuf/FieldType;",
            "Ljava/lang/reflect/Field;",
            "IZ",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;)",
            "Lcom/google/protobuf/FieldInfo;"
        }
    .end annotation

    .prologue
    .line 109
    .local p6, "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    invoke-static {p1}, Lcom/google/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 110
    const-string v1, "field"

    invoke-static {p0, v1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    const-string v1, "fieldType"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    const-string v1, "presenceField"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    if-eqz p3, :cond_0

    invoke-static/range {p4 .. p4}, Lcom/google/protobuf/FieldInfo;->isExactlyOneBitSet(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "presenceMask must have exactly one bit set: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_0
    new-instance v1, Lcom/google/protobuf/FieldInfo;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v12, p6

    invoke-direct/range {v1 .. v13}, Lcom/google/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/Internal$EnumLiteMap;Z)V

    return-object v1
.end method

.method public static forProto2OptionalLazyField(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;I)Lcom/google/protobuf/FieldInfo;
    .locals 14
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/google/protobuf/FieldType;
    .param p3, "presenceField"    # Ljava/lang/reflect/Field;
    .param p4, "presenceMask"    # I

    .prologue
    .line 135
    invoke-static {p1}, Lcom/google/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 136
    const-string v1, "field"

    invoke-static {p0, v1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    const-string v1, "fieldType"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    const-string v1, "presenceField"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    if-eqz p3, :cond_0

    invoke-static/range {p4 .. p4}, Lcom/google/protobuf/FieldInfo;->isExactlyOneBitSet(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "presenceMask must have exactly one bit set: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_0
    new-instance v1, Lcom/google/protobuf/FieldInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v13}, Lcom/google/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/Internal$EnumLiteMap;Z)V

    return-object v1
.end method

.method public static forProto2RequiredField(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/google/protobuf/Internal$EnumLiteMap;)Lcom/google/protobuf/FieldInfo;
    .locals 14
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/google/protobuf/FieldType;
    .param p3, "presenceField"    # Ljava/lang/reflect/Field;
    .param p4, "presenceMask"    # I
    .param p5, "enforceUtf8"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/google/protobuf/FieldType;",
            "Ljava/lang/reflect/Field;",
            "IZ",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;)",
            "Lcom/google/protobuf/FieldInfo;"
        }
    .end annotation

    .prologue
    .line 246
    .local p6, "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    invoke-static {p1}, Lcom/google/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 247
    const-string v1, "field"

    invoke-static {p0, v1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 248
    const-string v1, "fieldType"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    const-string v1, "presenceField"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 250
    if-eqz p3, :cond_0

    invoke-static/range {p4 .. p4}, Lcom/google/protobuf/FieldInfo;->isExactlyOneBitSet(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "presenceMask must have exactly one bit set: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_0
    new-instance v1, Lcom/google/protobuf/FieldInfo;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v12, p6

    invoke-direct/range {v1 .. v13}, Lcom/google/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/Internal$EnumLiteMap;Z)V

    return-object v1
.end method

.method public static forProto2RequiredLazyField(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;I)Lcom/google/protobuf/FieldInfo;
    .locals 14
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/google/protobuf/FieldType;
    .param p3, "presenceField"    # Ljava/lang/reflect/Field;
    .param p4, "presenceMask"    # I

    .prologue
    .line 272
    invoke-static {p1}, Lcom/google/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 273
    const-string v1, "field"

    invoke-static {p0, v1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    const-string v1, "fieldType"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    const-string v1, "presenceField"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    if-eqz p3, :cond_0

    invoke-static/range {p4 .. p4}, Lcom/google/protobuf/FieldInfo;->isExactlyOneBitSet(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "presenceMask must have exactly one bit set: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    :cond_0
    new-instance v1, Lcom/google/protobuf/FieldInfo;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v13}, Lcom/google/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZZLcom/google/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/protobuf/Internal$EnumLiteMap;Z)V

    return-object v1
.end method

.method private static isExactlyOneBitSet(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 550
    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newBuilder()Lcom/google/protobuf/FieldInfo$Builder;
    .locals 2

    .prologue
    .line 437
    new-instance v0, Lcom/google/protobuf/FieldInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/FieldInfo$Builder;-><init>(Lcom/google/protobuf/FieldInfo$1;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/protobuf/FieldInfo;)I
    .locals 2
    .param p1, "o"    # Lcom/google/protobuf/FieldInfo;

    .prologue
    .line 380
    iget v0, p0, Lcom/google/protobuf/FieldInfo;->fieldNumber:I

    iget v1, p1, Lcom/google/protobuf/FieldInfo;->fieldNumber:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/google/protobuf/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldInfo;->compareTo(Lcom/google/protobuf/FieldInfo;)I

    move-result v0

    return v0
.end method

.method public getEnumMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo;->enumMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getFieldNumber()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/google/protobuf/FieldInfo;->fieldNumber:I

    return v0
.end method

.method public getListElementType()Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 388
    iget-object v2, p0, Lcom/google/protobuf/FieldInfo;->type:Lcom/google/protobuf/FieldType;

    invoke-virtual {v2}, Lcom/google/protobuf/FieldType;->isList()Z

    move-result v2

    if-nez v2, :cond_0

    .line 389
    const/4 v1, 0x0

    .line 399
    :goto_0
    return-object v1

    .line 392
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 393
    .local v0, "genericType":Ljava/lang/reflect/Type;
    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_1

    .line 394
    new-instance v2, Ljava/lang/IllegalStateException;

    iget v3, p0, Lcom/google/protobuf/FieldInfo;->fieldNumber:I

    const/16 v4, 0x3e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Cannot determine parameterized type for list field "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 398
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 399
    .local v1, "type":Ljava/lang/reflect/Type;
    check-cast v1, Ljava/lang/Class;

    goto :goto_0
.end method

.method public getMapDefaultEntry()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo;->mapDefaultEntry:Ljava/lang/Object;

    return-object v0
.end method

.method public getOneof()Lcom/google/protobuf/OneofInfo;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo;->oneof:Lcom/google/protobuf/OneofInfo;

    return-object v0
.end method

.method public getOneofStoredType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    return-object v0
.end method

.method public getPresenceField()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo;->presenceField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getPresenceMask()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/google/protobuf/FieldInfo;->presenceMask:I

    return v0
.end method

.method public getType()Lcom/google/protobuf/FieldType;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo;->type:Lcom/google/protobuf/FieldType;

    return-object v0
.end method

.method public isEnforceUtf8()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/google/protobuf/FieldInfo;->enforceUtf8:Z

    return v0
.end method

.method public isLazy()Z
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/google/protobuf/FieldInfo;->lazy:Z

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/google/protobuf/FieldInfo;->required:Z

    return v0
.end method
