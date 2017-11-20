.class final Lcom/google/protobuf/MessageSetSchema;
.super Ljava/lang/Object;
.source "MessageSetSchema.java"

# interfaces
.implements Lcom/google/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Schema",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final defaultInstance:Lcom/google/protobuf/MessageLite;

.field private final extensionSchema:Lcom/google/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/ExtensionSchema",
            "<*>;"
        }
    .end annotation
.end field

.field private final hasExtensions:Z

.field private final unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<*>;",
            "Lcom/google/protobuf/ExtensionSchema",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<*>;"
    .local p3, "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 20
    invoke-virtual {p3, p1}, Lcom/google/protobuf/ExtensionSchema;->hasExtensions(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/MessageSetSchema;->hasExtensions:Z

    .line 21
    iput-object p3, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    .line 22
    invoke-static {p1}, Lcom/google/protobuf/SchemaUtil;->reflectDefaultInstance(Ljava/lang/Class;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 23
    return-void
.end method

.method private mergeFromHelper(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .param p4, "reader"    # Lcom/google/protobuf/Reader;
    .param p5, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite",
            "<TET;>;>(",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<TUT;>;",
            "Lcom/google/protobuf/ExtensionSchema",
            "<TET;>;TT;",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;>;"
    .local p2, "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<TET;>;"
    .local p3, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Lcom/google/protobuf/UnknownFieldSchema;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 115
    .local v6, "unknownFields":Ljava/lang/Object;, "TUT;"
    invoke-static {}, Lcom/google/protobuf/FieldSet;->newFieldSet()Lcom/google/protobuf/FieldSet;

    move-result-object v4

    .line 117
    .local v4, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TET;>;"
    invoke-virtual {p2, p3, v4}, Lcom/google/protobuf/ExtensionSchema;->setExtensions(Ljava/lang/Object;Lcom/google/protobuf/FieldSet;)V

    .line 120
    :cond_0
    :try_start_0
    invoke-interface {p4}, Lcom/google/protobuf/Reader;->getFieldNumber()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 121
    .local v7, "number":I
    const v0, 0x7fffffff

    if-ne v7, v0, :cond_1

    .line 137
    invoke-virtual {p1, v6}, Lcom/google/protobuf/UnknownFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/google/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    move-object v5, p1

    .line 124
    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/MessageSetSchema;->parseMessageSetItemOrUnknownField(Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p1, v6}, Lcom/google/protobuf/UnknownFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/google/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .end local v7    # "number":I
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v6}, Lcom/google/protobuf/UnknownFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lcom/google/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
.end method

.method static newSchema(Ljava/lang/Class;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;)Lcom/google/protobuf/MessageSetSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<*>;",
            "Lcom/google/protobuf/ExtensionSchema",
            "<*>;)",
            "Lcom/google/protobuf/MessageSetSchema",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<*>;"
    .local p2, "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<*>;"
    new-instance v0, Lcom/google/protobuf/MessageSetSchema;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/MessageSetSchema;-><init>(Ljava/lang/Class;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;)V

    return-object v0
.end method

.method private parseMessageSetItemOrUnknownField(Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "reader"    # Lcom/google/protobuf/Reader;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite",
            "<TET;>;>(",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/ExtensionSchema",
            "<TET;>;",
            "Lcom/google/protobuf/FieldSet",
            "<TET;>;",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<TUT;>;TUT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p3, "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<TET;>;"
    .local p4, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TET;>;"
    .local p5, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;>;"
    .local p6, "unknownFields":Ljava/lang/Object;, "TUT;"
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->getTag()I

    move-result v2

    sget v4, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    if-eq v2, v4, :cond_0

    .line 151
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z

    move-result v2

    .line 223
    :goto_0
    return v2

    .line 170
    :cond_0
    const/4 v11, 0x0

    .line 171
    .local v11, "typeId":I
    const/4 v10, 0x0

    .line 172
    .local v10, "rawBytes":Lcom/google/protobuf/ByteString;
    const/4 v8, 0x0

    .local v8, "extension":Ljava/lang/Object;
    move-object v5, v8

    .line 178
    .end local v8    # "extension":Ljava/lang/Object;
    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->getFieldNumber()I

    move-result v9

    .line 179
    .local v9, "number":I
    const v2, 0x7fffffff

    if-ne v9, v2, :cond_2

    .line 206
    :goto_2
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->getTag()I

    move-result v2

    sget v4, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    if-eq v2, v4, :cond_4

    .line 207
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 183
    :cond_2
    packed-switch v9, :pswitch_data_0

    .line 199
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->skipField()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 185
    :pswitch_0
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readUInt32()I

    move-result v11

    .line 186
    iget-object v2, p0, Lcom/google/protobuf/MessageSetSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 187
    invoke-virtual {p3, p2, v2, v11}, Lcom/google/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "extension":Ljava/lang/Object;
    move-object v5, v8

    .line 188
    goto :goto_1

    .line 190
    .end local v8    # "extension":Ljava/lang/Object;
    :pswitch_1
    if-eqz v5, :cond_3

    .line 191
    iget-object v4, p0, Lcom/google/protobuf/MessageSetSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    move-object v2, p3

    move-object v3, p1

    move-object v6, p2

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/google/protobuf/ExtensionSchema;->parseLengthPrefixedMessageSetItem(Lcom/google/protobuf/Reader;Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V

    goto :goto_1

    .line 196
    :cond_3
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    .line 197
    goto :goto_1

    .line 211
    :cond_4
    if-eqz v10, :cond_6

    .line 212
    if-eqz v5, :cond_5

    .line 213
    invoke-virtual {v10}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/google/protobuf/BinaryReader;->newInstance(Ljava/nio/ByteBuffer;Z)Lcom/google/protobuf/BinaryReader;

    move-result-object v3

    .line 214
    .local v3, "itemReader":Lcom/google/protobuf/Reader;
    iget-object v4, p0, Lcom/google/protobuf/MessageSetSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    move-object v2, p3

    move-object v6, p2

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/google/protobuf/ExtensionSchema;->parseMessageSetItem(Lcom/google/protobuf/Reader;Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V

    .line 216
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->getFieldNumber()I

    move-result v2

    const v4, 0x7fffffff

    if-eq v2, v4, :cond_6

    .line 217
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 220
    .end local v3    # "itemReader":Lcom/google/protobuf/Reader;
    :cond_5
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v11, v10}, Lcom/google/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    .line 223
    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private writeUnknownFieldsHelper(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p3, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<TUT;>;TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;>;"
    .local p2, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/google/protobuf/UnknownFieldSchema;->writeAsMessageSetTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 94
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v4, p1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 41
    .local v1, "messageUnknown":Ljava/lang/Object;
    iget-object v4, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v4, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 42
    .local v3, "otherUnknown":Ljava/lang/Object;
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    const/4 v4, 0x0

    .line 50
    :goto_0
    return v4

    .line 45
    :cond_0
    iget-boolean v4, p0, Lcom/google/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v4, :cond_1

    .line 46
    iget-object v4, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v4, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 47
    .local v0, "messageExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    iget-object v4, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v4, p2}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v2

    .line 48
    .local v2, "otherExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    invoke-virtual {v0, v2}, Lcom/google/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 50
    .end local v0    # "messageExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    .end local v2    # "otherExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 56
    .local v1, "hashCode":I
    iget-boolean v2, p0, Lcom/google/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 58
    .local v0, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    mul-int/lit8 v2, v1, 0x35

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 60
    .end local v0    # "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    :cond_0
    return v1
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 229
    .local v0, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->isInitialized()Z

    move-result v1

    return v1
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .param p2, "reader"    # Lcom/google/protobuf/Reader;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    iget-object v2, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/MessageSetSchema;->mergeFromHelper(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 100
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/SchemaUtil;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/SchemaUtil;->mergeExtensions(Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    :cond_0
    return-void
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->buildPartial()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 6
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v4, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    .line 75
    .local v1, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    invoke-virtual {v1}, Lcom/google/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 76
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    .local v0, "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 79
    .local v2, "fd":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<*>;"
    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v4, v5, :cond_0

    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Found invalid MessageSet item."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 82
    :cond_1
    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Lcom/google/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    goto :goto_0

    .line 84
    .end local v0    # "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "fd":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<*>;"
    :cond_2
    iget-object v4, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v4, p1, p2}, Lcom/google/protobuf/MessageSetSchema;->writeUnknownFieldsHelper(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 85
    return-void
.end method
