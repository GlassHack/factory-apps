.class final Lcom/google/protobuf/ManifestSchemaFactory;
.super Ljava/lang/Object;
.source "ManifestSchemaFactory.java"

# interfaces
.implements Lcom/google/protobuf/SchemaFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;,
        Lcom/google/protobuf/ManifestSchemaFactory$Mode;
    }
.end annotation


# static fields
.field private static final UNSUPPORTED:Lcom/google/protobuf/MessageInfoFactory;


# instance fields
.field private final messageInfoFactory:Lcom/google/protobuf/MessageInfoFactory;

.field private final mode:Lcom/google/protobuf/ManifestSchemaFactory$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/protobuf/ManifestSchemaFactory$1;

    invoke-direct {v0}, Lcom/google/protobuf/ManifestSchemaFactory$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/ManifestSchemaFactory;->UNSUPPORTED:Lcom/google/protobuf/MessageInfoFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/google/protobuf/ManifestSchemaFactory;->getDefaultMessageInfoFactory()Lcom/google/protobuf/MessageInfoFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/ManifestSchemaFactory;-><init>(Lcom/google/protobuf/MessageInfoFactory;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/MessageInfoFactory;)V
    .locals 1
    .param p1, "messageInfoFactory"    # Lcom/google/protobuf/MessageInfoFactory;

    .prologue
    .line 58
    sget-object v0, Lcom/google/protobuf/ManifestSchemaFactory$Mode;->DYNAMIC:Lcom/google/protobuf/ManifestSchemaFactory$Mode;

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/ManifestSchemaFactory;-><init>(Lcom/google/protobuf/MessageInfoFactory;Lcom/google/protobuf/ManifestSchemaFactory$Mode;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/MessageInfoFactory;Lcom/google/protobuf/ManifestSchemaFactory$Mode;)V
    .locals 2
    .param p1, "messageInfoFactory"    # Lcom/google/protobuf/MessageInfoFactory;
    .param p2, "mode"    # Lcom/google/protobuf/ManifestSchemaFactory$Mode;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/google/protobuf/ManifestSchemaFactory;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Schema factory is unsupported on this platform"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    const-string v0, "messageDescriptorFactory"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageInfoFactory;

    iput-object v0, p0, Lcom/google/protobuf/ManifestSchemaFactory;->messageInfoFactory:Lcom/google/protobuf/MessageInfoFactory;

    .line 67
    const-string v0, "mode"

    invoke-static {p2, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ManifestSchemaFactory$Mode;

    iput-object v0, p0, Lcom/google/protobuf/ManifestSchemaFactory;->mode:Lcom/google/protobuf/ManifestSchemaFactory$Mode;

    .line 68
    return-void
.end method

.method private static getDefaultMessageInfoFactory()Lcom/google/protobuf/MessageInfoFactory;
    .locals 5

    .prologue
    .line 158
    :try_start_0
    new-instance v1, Lcom/google/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/protobuf/MessageInfoFactory;

    const/4 v3, 0x0

    .line 159
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageInfoFactory;->getInstance()Lcom/google/protobuf/GeneratedMessageInfoFactory;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/protobuf/ManifestSchemaFactory;->getDescriptorMessageInfoFactory()Lcom/google/protobuf/MessageInfoFactory;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/google/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;-><init>([Lcom/google/protobuf/MessageInfoFactory;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 160
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 161
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/google/protobuf/ManifestSchemaFactory;->UNSUPPORTED:Lcom/google/protobuf/MessageInfoFactory;

    goto :goto_0
.end method

.method private static getDescriptorMessageInfoFactory()Lcom/google/protobuf/MessageInfoFactory;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 198
    :try_start_0
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 199
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageInfoFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-object v2

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lcom/google/protobuf/ManifestSchemaFactory;->UNSUPPORTED:Lcom/google/protobuf/MessageInfoFactory;

    goto :goto_0
.end method

.method private static isProto2(Lcom/google/protobuf/MessageInfo;)Z
    .locals 2
    .param p0, "messageInfo"    # Lcom/google/protobuf/MessageInfo;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/protobuf/MessageInfo;->getSyntax()Lcom/google/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ProtoSyntax;->PROTO2:Lcom/google/protobuf/ProtoSyntax;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static newLookupSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;)Lcom/google/protobuf/Schema;
    .locals 6
    .param p1, "messageInfo"    # Lcom/google/protobuf/MessageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/MessageInfo;",
            ")",
            "Lcom/google/protobuf/Schema",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-static {p1}, Lcom/google/protobuf/ManifestSchemaFactory;->isProto2(Lcom/google/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/google/protobuf/ListFieldSchema;->lite()Lcom/google/protobuf/ListFieldSchema;

    move-result-object v2

    .line 134
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v3

    .line 135
    invoke-static {}, Lcom/google/protobuf/ExtensionSchemas;->lite()Lcom/google/protobuf/ExtensionSchema;

    move-result-object v4

    .line 136
    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->lite()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 130
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/Proto2Schema;->newLookupSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto2Schema;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 138
    :cond_0
    invoke-static {}, Lcom/google/protobuf/ListFieldSchema;->lite()Lcom/google/protobuf/ListFieldSchema;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->lite()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v1

    .line 137
    invoke-static {p0, p1, v0, v1}, Lcom/google/protobuf/Proto3Schema;->newLookupSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto3Schema;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/ManifestSchemaFactory;->isProto2(Lcom/google/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-static {}, Lcom/google/protobuf/ListFieldSchema;->full()Lcom/google/protobuf/ListFieldSchema;

    move-result-object v2

    .line 145
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->unknownFieldSetSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v3

    .line 146
    invoke-static {}, Lcom/google/protobuf/ExtensionSchemas;->full()Lcom/google/protobuf/ExtensionSchema;

    move-result-object v4

    .line 147
    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->full()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 141
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/Proto2Schema;->newLookupSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto2Schema;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_2
    invoke-static {}, Lcom/google/protobuf/ListFieldSchema;->full()Lcom/google/protobuf/ListFieldSchema;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->full()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v1

    .line 148
    invoke-static {p0, p1, v0, v1}, Lcom/google/protobuf/Proto3Schema;->newLookupSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto3Schema;

    move-result-object v0

    goto :goto_0
.end method

.method private static newTableSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;)Lcom/google/protobuf/Schema;
    .locals 6
    .param p1, "messageInfo"    # Lcom/google/protobuf/MessageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/MessageInfo;",
            ")",
            "Lcom/google/protobuf/Schema",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-static {p1}, Lcom/google/protobuf/ManifestSchemaFactory;->isProto2(Lcom/google/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/google/protobuf/ListFieldSchema;->lite()Lcom/google/protobuf/ListFieldSchema;

    move-result-object v2

    .line 109
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v3

    .line 110
    invoke-static {}, Lcom/google/protobuf/ExtensionSchemas;->lite()Lcom/google/protobuf/ExtensionSchema;

    move-result-object v4

    .line 111
    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->lite()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 105
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/Proto2Schema;->newTableSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto2Schema;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 113
    :cond_0
    invoke-static {}, Lcom/google/protobuf/ListFieldSchema;->lite()Lcom/google/protobuf/ListFieldSchema;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->lite()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v1

    .line 112
    invoke-static {p0, p1, v0, v1}, Lcom/google/protobuf/Proto3Schema;->newTableSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto3Schema;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/ManifestSchemaFactory;->isProto2(Lcom/google/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    invoke-static {}, Lcom/google/protobuf/ListFieldSchema;->full()Lcom/google/protobuf/ListFieldSchema;

    move-result-object v2

    .line 120
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->unknownFieldSetSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v3

    .line 121
    invoke-static {}, Lcom/google/protobuf/ExtensionSchemas;->full()Lcom/google/protobuf/ExtensionSchema;

    move-result-object v4

    .line 122
    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->full()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 116
    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/Proto2Schema;->newTableSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto2Schema;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {}, Lcom/google/protobuf/ListFieldSchema;->full()Lcom/google/protobuf/ListFieldSchema;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->full()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v1

    .line 123
    invoke-static {p0, p1, v0, v1}, Lcom/google/protobuf/Proto3Schema;->newTableSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto3Schema;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public createSchema(Ljava/lang/Class;)Lcom/google/protobuf/Schema;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/protobuf/Schema",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/protobuf/SchemaUtil;->requireGeneratedMessage(Ljava/lang/Class;)V

    .line 78
    iget-object v1, p0, Lcom/google/protobuf/ManifestSchemaFactory;->messageInfoFactory:Lcom/google/protobuf/MessageInfoFactory;

    invoke-interface {v1, p1}, Lcom/google/protobuf/MessageInfoFactory;->messageInfoFor(Ljava/lang/Class;)Lcom/google/protobuf/MessageInfo;

    move-result-object v0

    .line 81
    .local v0, "messageInfo":Lcom/google/protobuf/MessageInfo;
    invoke-virtual {v0}, Lcom/google/protobuf/MessageInfo;->isMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const-class v1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v1

    invoke-static {}, Lcom/google/protobuf/ExtensionSchemas;->lite()Lcom/google/protobuf/ExtensionSchema;

    move-result-object v2

    .line 83
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/MessageSetSchema;->newSchema(Ljava/lang/Class;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;)Lcom/google/protobuf/MessageSetSchema;

    move-result-object v1

    .line 96
    :goto_0
    return-object v1

    .line 87
    :cond_0
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->unknownFieldSetSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v1

    invoke-static {}, Lcom/google/protobuf/ExtensionSchemas;->full()Lcom/google/protobuf/ExtensionSchema;

    move-result-object v2

    .line 86
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/MessageSetSchema;->newSchema(Ljava/lang/Class;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;)Lcom/google/protobuf/MessageSetSchema;

    move-result-object v1

    goto :goto_0

    .line 90
    :cond_1
    sget-object v1, Lcom/google/protobuf/ManifestSchemaFactory$2;->$SwitchMap$com$google$protobuf$ManifestSchemaFactory$Mode:[I

    iget-object v2, p0, Lcom/google/protobuf/ManifestSchemaFactory;->mode:Lcom/google/protobuf/ManifestSchemaFactory$Mode;

    invoke-virtual {v2}, Lcom/google/protobuf/ManifestSchemaFactory$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 96
    invoke-virtual {v0}, Lcom/google/protobuf/MessageInfo;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/SchemaUtil;->shouldUseTableSwitch(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    invoke-static {p1, v0}, Lcom/google/protobuf/ManifestSchemaFactory;->newTableSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;)Lcom/google/protobuf/Schema;

    move-result-object v1

    goto :goto_0

    .line 92
    :pswitch_0
    invoke-static {p1, v0}, Lcom/google/protobuf/ManifestSchemaFactory;->newTableSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;)Lcom/google/protobuf/Schema;

    move-result-object v1

    goto :goto_0

    .line 94
    :pswitch_1
    invoke-static {p1, v0}, Lcom/google/protobuf/ManifestSchemaFactory;->newLookupSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;)Lcom/google/protobuf/Schema;

    move-result-object v1

    goto :goto_0

    .line 98
    :cond_2
    invoke-static {p1, v0}, Lcom/google/protobuf/ManifestSchemaFactory;->newLookupSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;)Lcom/google/protobuf/Schema;

    move-result-object v1

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
