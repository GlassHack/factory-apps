.class public final enum Lcom/google/protobuf/FieldType;
.super Ljava/lang/Enum;
.source "FieldType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/FieldType$Collection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protobuf/FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/FieldType;

.field public static final enum BOOL:Lcom/google/protobuf/FieldType;

.field public static final enum BOOL_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum BOOL_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum BYTES:Lcom/google/protobuf/FieldType;

.field public static final enum BYTES_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum DOUBLE:Lcom/google/protobuf/FieldType;

.field public static final enum DOUBLE_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field private static final EMPTY_TYPES:[Ljava/lang/reflect/Type;

.field public static final enum ENUM:Lcom/google/protobuf/FieldType;

.field public static final enum ENUM_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum ENUM_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum FIXED32:Lcom/google/protobuf/FieldType;

.field public static final enum FIXED32_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum FIXED32_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum FIXED64:Lcom/google/protobuf/FieldType;

.field public static final enum FIXED64_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum FIXED64_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum FLOAT:Lcom/google/protobuf/FieldType;

.field public static final enum FLOAT_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum FLOAT_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum GROUP:Lcom/google/protobuf/FieldType;

.field public static final enum GROUP_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum INT32:Lcom/google/protobuf/FieldType;

.field public static final enum INT32_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum INT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum INT64:Lcom/google/protobuf/FieldType;

.field public static final enum INT64_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum INT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum MAP:Lcom/google/protobuf/FieldType;

.field public static final enum MESSAGE:Lcom/google/protobuf/FieldType;

.field public static final enum MESSAGE_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum SFIXED32:Lcom/google/protobuf/FieldType;

.field public static final enum SFIXED32_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum SFIXED32_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum SFIXED64:Lcom/google/protobuf/FieldType;

.field public static final enum SFIXED64_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum SFIXED64_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum SINT32:Lcom/google/protobuf/FieldType;

.field public static final enum SINT32_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum SINT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum SINT64:Lcom/google/protobuf/FieldType;

.field public static final enum SINT64_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum STRING:Lcom/google/protobuf/FieldType;

.field public static final enum STRING_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum UINT32:Lcom/google/protobuf/FieldType;

.field public static final enum UINT32_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum UINT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum UINT64:Lcom/google/protobuf/FieldType;

.field public static final enum UINT64_LIST:Lcom/google/protobuf/FieldType;

.field public static final enum UINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field private static final VALUES:[Lcom/google/protobuf/FieldType;


# instance fields
.field private final collection:Lcom/google/protobuf/FieldType$Collection;

.field private final elementType1:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final elementType2:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final id:I

.field private final javaType1:Lcom/google/protobuf/JavaType;

.field private final javaType2:Lcom/google/protobuf/JavaType;

.field private final primitiveScalar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/google/protobuf/FieldType;

    const-string v1, "DOUBLE"

    sget-object v4, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v5, Lcom/google/protobuf/JavaType;->DOUBLE:Lcom/google/protobuf/JavaType;

    sget-object v6, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v0, Lcom/google/protobuf/FieldType;->DOUBLE:Lcom/google/protobuf/FieldType;

    .line 13
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "FLOAT"

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->FLOAT:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->FLOAT:Lcom/google/protobuf/FieldType;

    .line 14
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "INT64"

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    move v5, v13

    move v6, v13

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->INT64:Lcom/google/protobuf/FieldType;

    .line 15
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "UINT64"

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    move v5, v14

    move v6, v14

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->UINT64:Lcom/google/protobuf/FieldType;

    .line 16
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "INT32"

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    move v5, v15

    move v6, v15

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->INT32:Lcom/google/protobuf/FieldType;

    .line 17
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "FIXED64"

    const/4 v5, 0x5

    const/4 v6, 0x5

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->FIXED64:Lcom/google/protobuf/FieldType;

    .line 18
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "FIXED32"

    const/4 v5, 0x6

    const/4 v6, 0x6

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->FIXED32:Lcom/google/protobuf/FieldType;

    .line 19
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "BOOL"

    const/4 v5, 0x7

    const/4 v6, 0x7

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->BOOLEAN:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->BOOL:Lcom/google/protobuf/FieldType;

    .line 20
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "STRING"

    const/16 v5, 0x8

    const/16 v6, 0x8

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->STRING:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->STRING:Lcom/google/protobuf/FieldType;

    .line 21
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "MESSAGE"

    const/16 v5, 0x9

    const/16 v6, 0x9

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->MESSAGE:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->MESSAGE:Lcom/google/protobuf/FieldType;

    .line 22
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "BYTES"

    const/16 v5, 0xa

    const/16 v6, 0xa

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->BYTE_STRING:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->BYTES:Lcom/google/protobuf/FieldType;

    .line 23
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "UINT32"

    const/16 v5, 0xb

    const/16 v6, 0xb

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->UINT32:Lcom/google/protobuf/FieldType;

    .line 24
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "ENUM"

    const/16 v5, 0xc

    const/16 v6, 0xc

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->ENUM:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->ENUM:Lcom/google/protobuf/FieldType;

    .line 25
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "SFIXED32"

    const/16 v5, 0xd

    const/16 v6, 0xd

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->SFIXED32:Lcom/google/protobuf/FieldType;

    .line 26
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "SFIXED64"

    const/16 v5, 0xe

    const/16 v6, 0xe

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->SFIXED64:Lcom/google/protobuf/FieldType;

    .line 27
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "SINT32"

    const/16 v5, 0xf

    const/16 v6, 0xf

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->SINT32:Lcom/google/protobuf/FieldType;

    .line 28
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "SINT64"

    const/16 v5, 0x10

    const/16 v6, 0x10

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->SINT64:Lcom/google/protobuf/FieldType;

    .line 29
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "GROUP"

    const/16 v5, 0x11

    const/16 v6, 0x11

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->MESSAGE:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->GROUP:Lcom/google/protobuf/FieldType;

    .line 30
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "DOUBLE_LIST"

    const/16 v5, 0x12

    const/16 v6, 0x12

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->DOUBLE:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->DOUBLE_LIST:Lcom/google/protobuf/FieldType;

    .line 31
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "FLOAT_LIST"

    const/16 v5, 0x13

    const/16 v6, 0x13

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->FLOAT:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->FLOAT_LIST:Lcom/google/protobuf/FieldType;

    .line 32
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "INT64_LIST"

    const/16 v5, 0x14

    const/16 v6, 0x14

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->INT64_LIST:Lcom/google/protobuf/FieldType;

    .line 33
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "UINT64_LIST"

    const/16 v5, 0x15

    const/16 v6, 0x15

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->UINT64_LIST:Lcom/google/protobuf/FieldType;

    .line 34
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "INT32_LIST"

    const/16 v5, 0x16

    const/16 v6, 0x16

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->INT32_LIST:Lcom/google/protobuf/FieldType;

    .line 35
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "FIXED64_LIST"

    const/16 v5, 0x17

    const/16 v6, 0x17

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->FIXED64_LIST:Lcom/google/protobuf/FieldType;

    .line 36
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "FIXED32_LIST"

    const/16 v5, 0x18

    const/16 v6, 0x18

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->FIXED32_LIST:Lcom/google/protobuf/FieldType;

    .line 37
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "BOOL_LIST"

    const/16 v5, 0x19

    const/16 v6, 0x19

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->BOOLEAN:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->BOOL_LIST:Lcom/google/protobuf/FieldType;

    .line 38
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "STRING_LIST"

    const/16 v5, 0x1a

    const/16 v6, 0x1a

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->STRING:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->STRING_LIST:Lcom/google/protobuf/FieldType;

    .line 39
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "MESSAGE_LIST"

    const/16 v5, 0x1b

    const/16 v6, 0x1b

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->MESSAGE:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->MESSAGE_LIST:Lcom/google/protobuf/FieldType;

    .line 40
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "BYTES_LIST"

    const/16 v5, 0x1c

    const/16 v6, 0x1c

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->BYTE_STRING:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->BYTES_LIST:Lcom/google/protobuf/FieldType;

    .line 41
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "UINT32_LIST"

    const/16 v5, 0x1d

    const/16 v6, 0x1d

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->UINT32_LIST:Lcom/google/protobuf/FieldType;

    .line 42
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "ENUM_LIST"

    const/16 v5, 0x1e

    const/16 v6, 0x1e

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->ENUM:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->ENUM_LIST:Lcom/google/protobuf/FieldType;

    .line 43
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "SFIXED32_LIST"

    const/16 v5, 0x1f

    const/16 v6, 0x1f

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->SFIXED32_LIST:Lcom/google/protobuf/FieldType;

    .line 44
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "SFIXED64_LIST"

    const/16 v5, 0x20

    const/16 v6, 0x20

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->SFIXED64_LIST:Lcom/google/protobuf/FieldType;

    .line 45
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "SINT32_LIST"

    const/16 v5, 0x21

    const/16 v6, 0x21

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->SINT32_LIST:Lcom/google/protobuf/FieldType;

    .line 46
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "SINT64_LIST"

    const/16 v5, 0x22

    const/16 v6, 0x22

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->SINT64_LIST:Lcom/google/protobuf/FieldType;

    .line 47
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "DOUBLE_LIST_PACKED"

    const/16 v5, 0x23

    const/16 v6, 0x23

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->DOUBLE:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 48
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "FLOAT_LIST_PACKED"

    const/16 v5, 0x24

    const/16 v6, 0x24

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->FLOAT:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->FLOAT_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 49
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "INT64_LIST_PACKED"

    const/16 v5, 0x25

    const/16 v6, 0x25

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->INT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 50
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "UINT64_LIST_PACKED"

    const/16 v5, 0x26

    const/16 v6, 0x26

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->UINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 51
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "INT32_LIST_PACKED"

    const/16 v5, 0x27

    const/16 v6, 0x27

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->INT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 52
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "FIXED64_LIST_PACKED"

    const/16 v5, 0x28

    const/16 v6, 0x28

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->FIXED64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 53
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "FIXED32_LIST_PACKED"

    const/16 v5, 0x29

    const/16 v6, 0x29

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->FIXED32_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 54
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "BOOL_LIST_PACKED"

    const/16 v5, 0x2a

    const/16 v6, 0x2a

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->BOOLEAN:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->BOOL_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 55
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "UINT32_LIST_PACKED"

    const/16 v5, 0x2b

    const/16 v6, 0x2b

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->UINT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 56
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "ENUM_LIST_PACKED"

    const/16 v5, 0x2c

    const/16 v6, 0x2c

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->ENUM:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->ENUM_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 57
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "SFIXED32_LIST_PACKED"

    const/16 v5, 0x2d

    const/16 v6, 0x2d

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->SFIXED32_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 58
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "SFIXED64_LIST_PACKED"

    const/16 v5, 0x2e

    const/16 v6, 0x2e

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->SFIXED64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 59
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "SINT32_LIST_PACKED"

    const/16 v5, 0x2f

    const/16 v6, 0x2f

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->SINT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 60
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "SINT64_LIST_PACKED"

    const/16 v5, 0x30

    const/16 v6, 0x30

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 61
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "GROUP_LIST"

    const/16 v5, 0x31

    const/16 v6, 0x31

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->MESSAGE:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->GROUP_LIST:Lcom/google/protobuf/FieldType;

    .line 62
    new-instance v3, Lcom/google/protobuf/FieldType;

    const-string v4, "MAP"

    const/16 v5, 0x32

    const/16 v6, 0x32

    sget-object v7, Lcom/google/protobuf/FieldType$Collection;->MAP:Lcom/google/protobuf/FieldType$Collection;

    sget-object v8, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    sget-object v9, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v3 .. v9}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V

    sput-object v3, Lcom/google/protobuf/FieldType;->MAP:Lcom/google/protobuf/FieldType;

    .line 10
    const/16 v0, 0x33

    new-array v0, v0, [Lcom/google/protobuf/FieldType;

    sget-object v1, Lcom/google/protobuf/FieldType;->DOUBLE:Lcom/google/protobuf/FieldType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/FieldType;->FLOAT:Lcom/google/protobuf/FieldType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/protobuf/FieldType;->INT64:Lcom/google/protobuf/FieldType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/protobuf/FieldType;->UINT64:Lcom/google/protobuf/FieldType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/protobuf/FieldType;->INT32:Lcom/google/protobuf/FieldType;

    aput-object v1, v0, v15

    const/4 v1, 0x5

    sget-object v3, Lcom/google/protobuf/FieldType;->FIXED64:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    sget-object v3, Lcom/google/protobuf/FieldType;->FIXED32:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    sget-object v3, Lcom/google/protobuf/FieldType;->BOOL:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x8

    sget-object v3, Lcom/google/protobuf/FieldType;->STRING:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x9

    sget-object v3, Lcom/google/protobuf/FieldType;->MESSAGE:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0xa

    sget-object v3, Lcom/google/protobuf/FieldType;->BYTES:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0xb

    sget-object v3, Lcom/google/protobuf/FieldType;->UINT32:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0xc

    sget-object v3, Lcom/google/protobuf/FieldType;->ENUM:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0xd

    sget-object v3, Lcom/google/protobuf/FieldType;->SFIXED32:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0xe

    sget-object v3, Lcom/google/protobuf/FieldType;->SFIXED64:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0xf

    sget-object v3, Lcom/google/protobuf/FieldType;->SINT32:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x10

    sget-object v3, Lcom/google/protobuf/FieldType;->SINT64:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x11

    sget-object v3, Lcom/google/protobuf/FieldType;->GROUP:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x12

    sget-object v3, Lcom/google/protobuf/FieldType;->DOUBLE_LIST:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x13

    sget-object v3, Lcom/google/protobuf/FieldType;->FLOAT_LIST:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x14

    sget-object v3, Lcom/google/protobuf/FieldType;->INT64_LIST:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x15

    sget-object v3, Lcom/google/protobuf/FieldType;->UINT64_LIST:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x16

    sget-object v3, Lcom/google/protobuf/FieldType;->INT32_LIST:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x17

    sget-object v3, Lcom/google/protobuf/FieldType;->FIXED64_LIST:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x18

    sget-object v3, Lcom/google/protobuf/FieldType;->FIXED32_LIST:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x19

    sget-object v3, Lcom/google/protobuf/FieldType;->BOOL_LIST:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    sget-object v3, Lcom/google/protobuf/FieldType;->STRING_LIST:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    sget-object v3, Lcom/google/protobuf/FieldType;->MESSAGE_LIST:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    sget-object v3, Lcom/google/protobuf/FieldType;->BYTES_LIST:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    sget-object v3, Lcom/google/protobuf/FieldType;->UINT32_LIST:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    sget-object v3, Lcom/google/protobuf/FieldType;->ENUM_LIST:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    sget-object v3, Lcom/google/protobuf/FieldType;->SFIXED32_LIST:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x20

    sget-object v3, Lcom/google/protobuf/FieldType;->SFIXED64_LIST:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x21

    sget-object v3, Lcom/google/protobuf/FieldType;->SINT32_LIST:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x22

    sget-object v3, Lcom/google/protobuf/FieldType;->SINT64_LIST:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x23

    sget-object v3, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x24

    sget-object v3, Lcom/google/protobuf/FieldType;->FLOAT_LIST_PACKED:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x25

    sget-object v3, Lcom/google/protobuf/FieldType;->INT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x26

    sget-object v3, Lcom/google/protobuf/FieldType;->UINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x27

    sget-object v3, Lcom/google/protobuf/FieldType;->INT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x28

    sget-object v3, Lcom/google/protobuf/FieldType;->FIXED64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x29

    sget-object v3, Lcom/google/protobuf/FieldType;->FIXED32_LIST_PACKED:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    sget-object v3, Lcom/google/protobuf/FieldType;->BOOL_LIST_PACKED:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    sget-object v3, Lcom/google/protobuf/FieldType;->UINT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    sget-object v3, Lcom/google/protobuf/FieldType;->ENUM_LIST_PACKED:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    sget-object v3, Lcom/google/protobuf/FieldType;->SFIXED32_LIST_PACKED:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    sget-object v3, Lcom/google/protobuf/FieldType;->SFIXED64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    sget-object v3, Lcom/google/protobuf/FieldType;->SINT32_LIST_PACKED:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x30

    sget-object v3, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x31

    sget-object v3, Lcom/google/protobuf/FieldType;->GROUP_LIST:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    const/16 v1, 0x32

    sget-object v3, Lcom/google/protobuf/FieldType;->MAP:Lcom/google/protobuf/FieldType;

    aput-object v3, v0, v1

    sput-object v0, Lcom/google/protobuf/FieldType;->$VALUES:[Lcom/google/protobuf/FieldType;

    .line 192
    new-array v0, v2, [Ljava/lang/reflect/Type;

    sput-object v0, Lcom/google/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    .line 195
    invoke-static {}, Lcom/google/protobuf/FieldType;->values()[Lcom/google/protobuf/FieldType;

    move-result-object v11

    .line 196
    .local v11, "values":[Lcom/google/protobuf/FieldType;
    array-length v0, v11

    new-array v0, v0, [Lcom/google/protobuf/FieldType;

    sput-object v0, Lcom/google/protobuf/FieldType;->VALUES:[Lcom/google/protobuf/FieldType;

    .line 197
    array-length v0, v11

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v10, v11, v2

    .line 198
    .local v10, "type":Lcom/google/protobuf/FieldType;
    sget-object v1, Lcom/google/protobuf/FieldType;->VALUES:[Lcom/google/protobuf/FieldType;

    iget v3, v10, Lcom/google/protobuf/FieldType;->id:I

    aput-object v10, v1, v3

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    .end local v10    # "type":Lcom/google/protobuf/FieldType;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;Lcom/google/protobuf/JavaType;)V
    .locals 4
    .param p3, "id"    # I
    .param p4, "collection"    # Lcom/google/protobuf/FieldType$Collection;
    .param p5, "javaType1"    # Lcom/google/protobuf/JavaType;
    .param p6, "javaType2"    # Lcom/google/protobuf/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/protobuf/FieldType$Collection;",
            "Lcom/google/protobuf/JavaType;",
            "Lcom/google/protobuf/JavaType;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput p3, p0, Lcom/google/protobuf/FieldType;->id:I

    .line 74
    iput-object p4, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$Collection;

    .line 75
    iput-object p5, p0, Lcom/google/protobuf/FieldType;->javaType1:Lcom/google/protobuf/JavaType;

    .line 76
    iput-object p6, p0, Lcom/google/protobuf/FieldType;->javaType2:Lcom/google/protobuf/JavaType;

    .line 78
    sget-object v1, Lcom/google/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$FieldType$Collection:[I

    invoke-virtual {p4}, Lcom/google/protobuf/FieldType$Collection;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 89
    iput-object v3, p0, Lcom/google/protobuf/FieldType;->elementType1:Ljava/lang/Class;

    .line 90
    iput-object v3, p0, Lcom/google/protobuf/FieldType;->elementType2:Ljava/lang/Class;

    .line 94
    :goto_0
    const/4 v0, 0x0

    .line 95
    .local v0, "primitiveScalar":Z
    sget-object v1, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    if-ne p4, v1, :cond_0

    .line 96
    sget-object v1, Lcom/google/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$JavaType:[I

    invoke-virtual {p5}, Lcom/google/protobuf/JavaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 102
    const/4 v0, 0x1

    .line 106
    :cond_0
    :pswitch_0
    iput-boolean v0, p0, Lcom/google/protobuf/FieldType;->primitiveScalar:Z

    .line 107
    return-void

    .line 80
    .end local v0    # "primitiveScalar":Z
    :pswitch_1
    invoke-virtual {p5}, Lcom/google/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/FieldType;->elementType1:Ljava/lang/Class;

    .line 81
    invoke-virtual {p6}, Lcom/google/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/FieldType;->elementType2:Ljava/lang/Class;

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-virtual {p5}, Lcom/google/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/FieldType;->elementType1:Ljava/lang/Class;

    .line 85
    iput-object v3, p0, Lcom/google/protobuf/FieldType;->elementType2:Ljava/lang/Class;

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 96
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static forId(I)Lcom/google/protobuf/FieldType;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 185
    if-ltz p0, :cond_0

    sget-object v0, Lcom/google/protobuf/FieldType;->VALUES:[Lcom/google/protobuf/FieldType;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 186
    :cond_0
    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/protobuf/FieldType;->VALUES:[Lcom/google/protobuf/FieldType;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method private static getGenericSuperList(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 211
    .local v1, "genericInterfaces":[Ljava/lang/reflect/Type;
    array-length v6, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 212
    .local v0, "genericInterface":Ljava/lang/reflect/Type;
    instance-of v7, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_0

    move-object v2, v0

    .line 213
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 214
    .local v2, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 215
    .local v3, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Ljava/util/List;

    invoke-virtual {v7, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 232
    .end local v0    # "genericInterface":Ljava/lang/reflect/Type;
    .end local v2    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return-object v0

    .line 211
    .restart local v0    # "genericInterface":Ljava/lang/reflect/Type;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "genericInterface":Ljava/lang/reflect/Type;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 223
    .local v4, "type":Ljava/lang/reflect/Type;
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_2

    move-object v2, v4

    .line 224
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 225
    .restart local v2    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 226
    .restart local v3    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/util/List;

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v4

    .line 227
    goto :goto_1

    .line 232
    .end local v2    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getListParameter(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 16
    .param p1, "realTypes"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v12, Ljava/util/List;

    move-object/from16 v0, p0

    if-eq v0, v12, :cond_8

    .line 249
    invoke-static/range {p0 .. p0}, Lcom/google/protobuf/FieldType;->getGenericSuperList(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 250
    .local v3, "genericType":Ljava/lang/reflect/Type;
    instance-of v12, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v12, :cond_5

    move-object v7, v3

    .line 252
    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    .line 253
    .local v7, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v11

    .line 254
    .local v11, "superArgs":[Ljava/lang/reflect/Type;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v12, v11

    if-ge v4, v12, :cond_4

    .line 255
    aget-object v10, v11, v4

    .line 256
    .local v10, "superArg":Ljava/lang/reflect/Type;
    instance-of v12, v10, Ljava/lang/reflect/TypeVariable;

    if-eqz v12, :cond_3

    .line 259
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 260
    .local v1, "clazzParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    move-object/from16 v0, p1

    array-length v12, v0

    array-length v13, v1

    if-eq v12, v13, :cond_0

    .line 261
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "Type array mismatch"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 265
    :cond_0
    const/4 v2, 0x0

    .line 266
    .local v2, "foundReplacement":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    array-length v12, v1

    if-ge v6, v12, :cond_1

    .line 267
    aget-object v12, v1, v6

    if-ne v10, v12, :cond_2

    .line 268
    aget-object v9, p1, v6

    .line 269
    .local v9, "realType":Ljava/lang/reflect/Type;
    aput-object v9, v11, v4

    .line 270
    const/4 v2, 0x1

    .line 274
    .end local v9    # "realType":Ljava/lang/reflect/Type;
    :cond_1
    if-nez v2, :cond_3

    .line 275
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x1f

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "Unable to find replacement for "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 266
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 254
    .end local v1    # "clazzParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    .end local v2    # "foundReplacement":Z
    .end local v6    # "j":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 280
    .end local v10    # "superArg":Ljava/lang/reflect/Type;
    :cond_4
    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    .line 282
    .local v8, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 p1, v11

    .line 283
    move-object/from16 p0, v8

    .line 284
    goto :goto_0

    .line 289
    .end local v4    # "i":I
    .end local v7    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v8    # "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "superArgs":[Ljava/lang/reflect/Type;
    :cond_5
    sget-object p1, Lcom/google/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    .line 290
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v13

    array-length v14, v13

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v14, :cond_7

    aget-object v5, v13, v12

    .line 291
    .local v5, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v15, Ljava/util/List;

    invoke-virtual {v15, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 292
    move-object/from16 p0, v5

    .line 293
    goto/16 :goto_0

    .line 290
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 296
    .end local v5    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 297
    goto/16 :goto_0

    .line 299
    .end local v3    # "genericType":Ljava/lang/reflect/Type;
    :cond_8
    move-object/from16 v0, p1

    array-length v12, v0

    const/4 v13, 0x1

    if-eq v12, v13, :cond_9

    .line 300
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "Unable to identify parameter type for List<T>"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 302
    :cond_9
    const/4 v12, 0x0

    aget-object v12, p1, v12

    return-object v12
.end method

.method private isValidForList(Ljava/lang/reflect/Field;)Z
    .locals 5
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 160
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 161
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/google/protobuf/FieldType;->javaType1:Lcom/google/protobuf/JavaType;

    invoke-virtual {v4}, Lcom/google/protobuf/JavaType;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 163
    const/4 v4, 0x0

    .line 175
    :goto_0
    return v4

    .line 165
    :cond_0
    sget-object v3, Lcom/google/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    .line 166
    .local v3, "types":[Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 167
    .local v1, "genericType":Ljava/lang/reflect/Type;
    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_1

    .line 168
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 170
    :cond_1
    invoke-static {v0, v3}, Lcom/google/protobuf/FieldType;->getListParameter(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 171
    .local v2, "listParameter":Ljava/lang/reflect/Type;
    instance-of v4, v2, Ljava/lang/Class;

    if-nez v4, :cond_2

    .line 173
    const/4 v4, 0x1

    goto :goto_0

    .line 175
    :cond_2
    iget-object v4, p0, Lcom/google/protobuf/FieldType;->elementType1:Ljava/lang/Class;

    check-cast v2, Ljava/lang/Class;

    .end local v2    # "listParameter":Ljava/lang/reflect/Type;
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/FieldType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/google/protobuf/FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldType;

    return-object v0
.end method

.method public static values()[Lcom/google/protobuf/FieldType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/google/protobuf/FieldType;->$VALUES:[Lcom/google/protobuf/FieldType;

    invoke-virtual {v0}, [Lcom/google/protobuf/FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/FieldType;

    return-object v0
.end method


# virtual methods
.method public getJavaType()Lcom/google/protobuf/JavaType;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/protobuf/FieldType;->javaType1:Lcom/google/protobuf/JavaType;

    return-object v0
.end method

.method public id()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/google/protobuf/FieldType;->id:I

    return v0
.end method

.method public isList()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$Collection;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldType$Collection;->isList()Z

    move-result v0

    return v0
.end method

.method public isMap()Z
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$Collection;

    sget-object v1, Lcom/google/protobuf/FieldType$Collection;->MAP:Lcom/google/protobuf/FieldType$Collection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPacked()Z
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    iget-object v1, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$Collection;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FieldType$Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPrimitiveScalar()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/google/protobuf/FieldType;->primitiveScalar:Z

    return v0
.end method

.method public isScalar()Z
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$Collection;

    sget-object v1, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidForField(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 152
    sget-object v0, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    iget-object v1, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$Collection;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FieldType$Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0, p1}, Lcom/google/protobuf/FieldType;->isValidForList(Ljava/lang/reflect/Field;)Z

    move-result v0

    .line 155
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/FieldType;->javaType1:Lcom/google/protobuf/JavaType;

    invoke-virtual {v0}, Lcom/google/protobuf/JavaType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method
