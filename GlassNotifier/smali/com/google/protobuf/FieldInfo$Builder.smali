.class public final Lcom/google/protobuf/FieldInfo$Builder;
.super Ljava/lang/Object;
.source "FieldInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/FieldInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private enforceUtf8:Z

.field private enumMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;"
        }
    .end annotation
.end field

.field private field:Ljava/lang/reflect/Field;

.field private fieldNumber:I

.field private mapDefaultEntry:Ljava/lang/Object;

.field private oneof:Lcom/google/protobuf/OneofInfo;

.field private oneofStoredType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private presenceField:Ljava/lang/reflect/Field;

.field private presenceMask:I

.field private required:Z

.field private type:Lcom/google/protobuf/FieldType;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/FieldInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/FieldInfo$1;

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/google/protobuf/FieldInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/protobuf/FieldInfo;
    .locals 7

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->oneof:Lcom/google/protobuf/OneofInfo;

    if-eqz v0, :cond_0

    .line 527
    iget v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->type:Lcom/google/protobuf/FieldType;

    iget-object v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->oneof:Lcom/google/protobuf/OneofInfo;

    iget-object v3, p0, Lcom/google/protobuf/FieldInfo$Builder;->oneofStoredType:Ljava/lang/Class;

    iget-boolean v4, p0, Lcom/google/protobuf/FieldInfo$Builder;->enforceUtf8:Z

    iget-object v5, p0, Lcom/google/protobuf/FieldInfo$Builder;->enumMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/FieldInfo;->forOneofMemberField(ILcom/google/protobuf/FieldType;Lcom/google/protobuf/OneofInfo;Ljava/lang/Class;ZLcom/google/protobuf/Internal$EnumLiteMap;)Lcom/google/protobuf/FieldInfo;

    move-result-object v0

    .line 544
    :goto_0
    return-object v0

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->mapDefaultEntry:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    iget v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->mapDefaultEntry:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/protobuf/FieldInfo$Builder;->enumMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/FieldInfo;->forMapField(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/google/protobuf/Internal$EnumLiteMap;)Lcom/google/protobuf/FieldInfo;

    move-result-object v0

    goto :goto_0

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->presenceField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    .line 533
    iget-boolean v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->required:Z

    if-eqz v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    iget v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->type:Lcom/google/protobuf/FieldType;

    iget-object v3, p0, Lcom/google/protobuf/FieldInfo$Builder;->presenceField:Ljava/lang/reflect/Field;

    iget v4, p0, Lcom/google/protobuf/FieldInfo$Builder;->presenceMask:I

    iget-boolean v5, p0, Lcom/google/protobuf/FieldInfo$Builder;->enforceUtf8:Z

    iget-object v6, p0, Lcom/google/protobuf/FieldInfo$Builder;->enumMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/FieldInfo;->forProto2RequiredField(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/google/protobuf/Internal$EnumLiteMap;)Lcom/google/protobuf/FieldInfo;

    move-result-object v0

    goto :goto_0

    .line 537
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    iget v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->type:Lcom/google/protobuf/FieldType;

    iget-object v3, p0, Lcom/google/protobuf/FieldInfo$Builder;->presenceField:Ljava/lang/reflect/Field;

    iget v4, p0, Lcom/google/protobuf/FieldInfo$Builder;->presenceMask:I

    iget-boolean v5, p0, Lcom/google/protobuf/FieldInfo$Builder;->enforceUtf8:Z

    iget-object v6, p0, Lcom/google/protobuf/FieldInfo$Builder;->enumMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/FieldInfo;->forProto2OptionalField(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/google/protobuf/Internal$EnumLiteMap;)Lcom/google/protobuf/FieldInfo;

    move-result-object v0

    goto :goto_0

    .line 541
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->enumMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    if-eqz v0, :cond_4

    .line 542
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    iget v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->type:Lcom/google/protobuf/FieldType;

    iget-object v3, p0, Lcom/google/protobuf/FieldInfo$Builder;->enumMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/FieldInfo;->forFieldWithEnumMap(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Lcom/google/protobuf/Internal$EnumLiteMap;)Lcom/google/protobuf/FieldInfo;

    move-result-object v0

    goto :goto_0

    .line 544
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    iget v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->type:Lcom/google/protobuf/FieldType;

    iget-boolean v3, p0, Lcom/google/protobuf/FieldInfo$Builder;->enforceUtf8:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/FieldInfo;->forField(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Z)Lcom/google/protobuf/FieldInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public withEnforceUtf8(Z)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0
    .param p1, "enforceUtf8"    # Z

    .prologue
    .line 516
    iput-boolean p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->enforceUtf8:Z

    .line 517
    return-object p0
.end method

.method public withEnumMap(Lcom/google/protobuf/Internal$EnumLiteMap;)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;)",
            "Lcom/google/protobuf/FieldInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    iput-object p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->enumMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 522
    return-object p0
.end method

.method public withField(Ljava/lang/reflect/Field;)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->oneof:Lcom/google/protobuf/OneofInfo;

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set field when building a oneof."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    .line 465
    return-object p0
.end method

.method public withFieldNumber(I)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0
    .param p1, "fieldNumber"    # I

    .prologue
    .line 476
    iput p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->fieldNumber:I

    .line 477
    return-object p0
.end method

.method public withMapDefaultEntry(Ljava/lang/Object;)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0
    .param p1, "mapDefaultEntry"    # Ljava/lang/Object;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->mapDefaultEntry:Ljava/lang/Object;

    .line 512
    return-object p0
.end method

.method public withOneof(Lcom/google/protobuf/OneofInfo;Ljava/lang/Class;)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 2
    .param p1, "oneof"    # Lcom/google/protobuf/OneofInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/OneofInfo;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/protobuf/FieldInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 496
    .local p2, "oneofStoredType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->presenceField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 497
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set oneof when field or presenceField have been provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_1
    iput-object p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->oneof:Lcom/google/protobuf/OneofInfo;

    .line 501
    iput-object p2, p0, Lcom/google/protobuf/FieldInfo$Builder;->oneofStoredType:Ljava/lang/Class;

    .line 502
    return-object p0
.end method

.method public withPresence(Ljava/lang/reflect/Field;I)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 1
    .param p1, "presenceField"    # Ljava/lang/reflect/Field;
    .param p2, "presenceMask"    # I

    .prologue
    .line 482
    const-string v0, "presenceField"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->presenceField:Ljava/lang/reflect/Field;

    .line 483
    iput p2, p0, Lcom/google/protobuf/FieldInfo$Builder;->presenceMask:I

    .line 484
    return-object p0
.end method

.method public withRequired(Z)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0
    .param p1, "required"    # Z

    .prologue
    .line 506
    iput-boolean p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->required:Z

    .line 507
    return-object p0
.end method

.method public withType(Lcom/google/protobuf/FieldType;)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0
    .param p1, "type"    # Lcom/google/protobuf/FieldType;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->type:Lcom/google/protobuf/FieldType;

    .line 471
    return-object p0
.end method
