.class final Lcom/google/protobuf/CodedInputStreamReader;
.super Ljava/lang/Object;
.source "CodedInputStreamReader.java"

# interfaces
.implements Lcom/google/protobuf/Reader;


# static fields
.field private static final FIXED32_MULTIPLE_MASK:I = 0x3

.field private static final FIXED64_MULTIPLE_MASK:I = 0x7

.field private static final NEXT_TAG_UNSET:I


# instance fields
.field private endGroupTag:I

.field private final input:Lcom/google/protobuf/CodedInputStream;

.field private nextTag:I

.field private tag:I


# direct methods
.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;)V
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    .line 36
    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    iput-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 37
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    iput-object p0, v0, Lcom/google/protobuf/CodedInputStream;->wrapper:Lcom/google/protobuf/CodedInputStreamReader;

    .line 38
    return-void
.end method

.method public static forCodedInput(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/CodedInputStreamReader;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream;->wrapper:Lcom/google/protobuf/CodedInputStreamReader;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream;->wrapper:Lcom/google/protobuf/CodedInputStreamReader;

    .line 32
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/protobuf/CodedInputStreamReader;

    invoke-direct {v0, p0}, Lcom/google/protobuf/CodedInputStreamReader;-><init>(Lcom/google/protobuf/CodedInputStream;)V

    goto :goto_0
.end method

.method private readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldType"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1197
    .local p2, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/google/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1233
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1199
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1231
    :goto_0
    return-object v0

    .line 1201
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    goto :goto_0

    .line 1203
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 1205
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1207
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1209
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1211
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 1213
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1215
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1217
    :pswitch_9
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedInputStreamReader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1219
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1221
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1223
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1225
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1227
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1229
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1231
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 1197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private readGroup(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 4
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Schema",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 169
    .local v1, "prevEndGroupTag":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 170
    invoke-static {v2}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v2

    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 174
    :try_start_0
    invoke-interface {p1}, Lcom/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 175
    .local v0, "message":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0, p0, p2}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 177
    iget v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-eq v2, v3, :cond_0

    .line 178
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    .end local v0    # "message":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    throw v2

    .restart local v0    # "message":Ljava/lang/Object;, "TT;"
    :cond_0
    iput v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 180
    return-object v0
.end method

.method private readMessage(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 5
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Schema",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    .line 154
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v3, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 157
    .local v1, "prevLimit":I
    :try_start_0
    invoke-interface {p1}, Lcom/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 158
    .local v0, "message":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0, p0, p2}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 159
    return-object v0

    .line 162
    .end local v0    # "message":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    throw v3
.end method

.method private requireWireType(I)V
    .locals 1
    .param p1, "requiredWireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 69
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 71
    :cond_0
    return-void
.end method

.method private verifyPackedFixed32Length(I)V
    .locals 1
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1238
    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_0

    .line 1240
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1242
    :cond_0
    return-void
.end method

.method private verifyPackedFixed64Length(I)V
    .locals 1
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1139
    and-int/lit8 v0, p1, 0x7

    if-eqz v0, :cond_0

    .line 1141
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1143
    :cond_0
    return-void
.end method


# virtual methods
.method public getFieldNumber()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v0, :cond_1

    .line 43
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    .line 48
    :goto_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-ne v0, v1, :cond_2

    .line 49
    :cond_0
    const v0, 0x7fffffff

    .line 51
    :goto_1
    return v0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    goto :goto_0

    .line 51
    :cond_2
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    goto :goto_1
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    return v0
.end method

.method public readBool()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 118
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    return v0
.end method

.method public readBoolList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    instance-of v4, p1, Lcom/google/protobuf/BooleanArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 632
    check-cast v3, Lcom/google/protobuf/BooleanArrayList;

    .line 633
    .local v3, "plist":Lcom/google/protobuf/BooleanArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 655
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 635
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 636
    .local v0, "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 638
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 639
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 683
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/BooleanArrayList;
    :cond_1
    :goto_0
    return-void

    .line 643
    .restart local v3    # "plist":Lcom/google/protobuf/BooleanArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 644
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 647
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 648
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 650
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 658
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/BooleanArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 680
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 660
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 661
    .restart local v0    # "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 663
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 668
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 672
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 673
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 675
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 658
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 190
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readBytesList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 780
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 781
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 785
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 793
    :goto_0
    return-void

    .line 789
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 790
    .local v0, "nextTag":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_0

    .line 792
    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 76
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubleList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    instance-of v4, p1, Lcom/google/protobuf/DoubleArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 232
    check-cast v3, Lcom/google/protobuf/DoubleArrayList;

    .line 233
    .local v3, "plist":Lcom/google/protobuf/DoubleArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 256
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 235
    :pswitch_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 236
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 237
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 239
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    .line 240
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 285
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/DoubleArrayList;
    :cond_1
    :goto_0
    return-void

    .line 244
    .restart local v3    # "plist":Lcom/google/protobuf/DoubleArrayList;
    :cond_2
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    .line 245
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 248
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 249
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 251
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 259
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/DoubleArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 282
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 261
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 262
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 263
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 265
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 270
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_3
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 274
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 275
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 277
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 259
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 202
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    return v0
.end method

.method public readEnumList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 856
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v4, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 857
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 858
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 880
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 860
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 861
    .local v0, "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 863
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 864
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 908
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_0
    return-void

    .line 868
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 869
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 872
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 873
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 875
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 883
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 905
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 885
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 886
    .restart local v0    # "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 888
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 893
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 897
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 898
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 900
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 858
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 883
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 112
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    return v0
.end method

.method public readFixed32List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v4, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 574
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 575
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 598
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 577
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 578
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 579
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 581
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 582
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 627
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_0
    return-void

    .line 586
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 587
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 590
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 591
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 593
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 601
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 624
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 603
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 604
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 605
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 607
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 612
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 616
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 617
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 619
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 575
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 601
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 106
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFixed64List(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v4, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 516
    check-cast v3, Lcom/google/protobuf/LongArrayList;

    .line 517
    .local v3, "plist":Lcom/google/protobuf/LongArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 540
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 519
    :pswitch_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 520
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 521
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 523
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 524
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 569
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_1
    :goto_0
    return-void

    .line 528
    .restart local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_2
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 529
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 532
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 533
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 535
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 543
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 566
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 545
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 546
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 547
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 549
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 554
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_3
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 558
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 559
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 561
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 543
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 82
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public readFloatList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    instance-of v4, p1, Lcom/google/protobuf/FloatArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 290
    check-cast v3, Lcom/google/protobuf/FloatArrayList;

    .line 291
    .local v3, "plist":Lcom/google/protobuf/FloatArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 314
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 293
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 294
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 295
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 297
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    .line 298
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 343
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/FloatArrayList;
    :cond_1
    :goto_0
    return-void

    .line 302
    .restart local v3    # "plist":Lcom/google/protobuf/FloatArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    .line 303
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 306
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 307
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 309
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 317
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/FloatArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 340
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 319
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 320
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 321
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 323
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 328
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 332
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 333
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 335
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 317
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public readGroup(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 146
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/protobuf/CodedInputStreamReader;->readGroup(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readGroupList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
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
    .line 758
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v3}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 759
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v3

    throw v3

    .line 762
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v2

    .line 763
    .local v2, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 765
    .local v0, "listTag":I
    :cond_1
    invoke-direct {p0, v2, p3}, Lcom/google/protobuf/CodedInputStreamReader;->readGroup(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v3, :cond_3

    .line 773
    :cond_2
    :goto_0
    return-void

    .line 769
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 770
    .local v1, "nextTag":I
    if-eq v1, v0, :cond_1

    .line 772
    iput v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 100
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    return v0
.end method

.method public readInt32List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v4, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 460
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 461
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 483
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 463
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 464
    .local v0, "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 466
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 467
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 511
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_0
    return-void

    .line 471
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 472
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 475
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 476
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 478
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 486
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 508
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 488
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 489
    .restart local v0    # "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 491
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 496
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 500
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 501
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 503
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 486
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 94
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt64List(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v4, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 404
    check-cast v3, Lcom/google/protobuf/LongArrayList;

    .line 405
    .local v3, "plist":Lcom/google/protobuf/LongArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 427
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 407
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 408
    .local v0, "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 410
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 411
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 455
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_1
    :goto_0
    return-void

    .line 415
    .restart local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 416
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 419
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 420
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 422
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 430
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 452
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 432
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 433
    .restart local v0    # "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 435
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 440
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 444
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 445
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 447
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 430
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readMap(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$Metadata;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/protobuf/MapEntryLite$Metadata",
            "<TK;TV;>;",
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
    .line 1152
    .local p1, "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "metadata":Lcom/google/protobuf/MapEntryLite$Metadata;, "Lcom/google/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 1153
    iget-object v6, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v6}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    .line 1154
    .local v4, "size":I
    iget-object v6, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v6, v4}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    .line 1155
    .local v3, "prevLimit":I
    iget-object v1, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 1156
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v5, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1159
    .local v5, "value":Ljava/lang/Object;, "TV;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->getFieldNumber()I

    move-result v2

    .line 1160
    .local v2, "number":I
    const v6, 0x7fffffff

    if-eq v2, v6, :cond_1

    iget-object v6, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v6}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1187
    :cond_1
    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1190
    iget-object v6, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v6, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 1192
    return-void

    .line 1164
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 1175
    :try_start_1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1176
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v7, "Unable to parse map entry."

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1180
    :catch_0
    move-exception v0

    .line 1182
    .local v0, "ignore":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :try_start_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1183
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v7, "Unable to parse map entry."

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1190
    .end local v0    # "ignore":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .end local v2    # "number":I
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v7, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    throw v6

    .line 1166
    .restart local v2    # "number":I
    :pswitch_0
    :try_start_3
    iget-object v6, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/google/protobuf/CodedInputStreamReader;->readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    .line 1167
    goto :goto_0

    .line 1169
    :pswitch_1
    iget-object v6, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    iget-object v7, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1172
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 1171
    invoke-direct {p0, v6, v7, p3}, Lcom/google/protobuf/CodedInputStreamReader;->readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 1173
    goto :goto_0

    .line 1164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 138
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/protobuf/CodedInputStreamReader;->readMessage(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readMessageList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
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
    .line 734
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v3}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 735
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v3

    throw v3

    .line 738
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v2

    .line 739
    .local v2, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 741
    .local v0, "listTag":I
    :cond_1
    invoke-direct {p0, v2, p3}, Lcom/google/protobuf/CodedInputStreamReader;->readMessage(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v3, :cond_3

    .line 749
    :cond_2
    :goto_0
    return-void

    .line 745
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 746
    .local v1, "nextTag":I
    if-eq v1, v0, :cond_1

    .line 748
    iput v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 208
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    return v0
.end method

.method public readSFixed32List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 912
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v4, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 913
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 914
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 937
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 916
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 917
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 918
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 920
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 921
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 966
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_0
    return-void

    .line 925
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 926
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 929
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 930
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 932
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 940
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 963
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 942
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 943
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 944
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 946
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 951
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 955
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 956
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 958
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 914
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 940
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 214
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSFixed64List(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 970
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v4, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 971
    check-cast v3, Lcom/google/protobuf/LongArrayList;

    .line 972
    .local v3, "plist":Lcom/google/protobuf/LongArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 995
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 974
    :pswitch_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 975
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 976
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 978
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 979
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 1024
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_1
    :goto_0
    return-void

    .line 983
    .restart local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_2
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 984
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 987
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 988
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 990
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 998
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 1021
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 1000
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1001
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 1002
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 1004
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 1009
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_3
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1013
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 1014
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 1016
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 972
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 998
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 220
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    return v0
.end method

.method public readSInt32List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1028
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v4, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 1029
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 1030
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1052
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 1032
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1033
    .local v0, "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 1035
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 1036
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 1080
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_0
    return-void

    .line 1040
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 1041
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1044
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 1045
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 1047
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 1055
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 1077
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 1057
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1058
    .restart local v0    # "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 1060
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 1065
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1069
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 1070
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 1072
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 1030
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1055
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 226
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt64List(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1084
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v4, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 1085
    check-cast v3, Lcom/google/protobuf/LongArrayList;

    .line 1086
    .local v3, "plist":Lcom/google/protobuf/LongArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1108
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 1088
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1089
    .local v0, "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 1091
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 1092
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 1136
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_1
    :goto_0
    return-void

    .line 1096
    .restart local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 1097
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1100
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 1101
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 1103
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 1111
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 1133
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 1113
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1114
    .restart local v0    # "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 1116
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 1121
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1125
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 1126
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 1128
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 1086
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1111
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 124
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readStringList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    .line 688
    return-void
.end method

.method public readStringListInternal(Ljava/util/List;Z)V
    .locals 4
    .param p2, "requireUtf8"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 696
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v2}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 697
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v2

    throw v2

    .line 700
    :cond_0
    instance-of v2, p1, Lcom/google/protobuf/LazyStringList;

    if-eqz v2, :cond_4

    if-nez p2, :cond_4

    move-object v0, p1

    .line 701
    check-cast v0, Lcom/google/protobuf/LazyStringList;

    .line 703
    .local v0, "lazyList":Lcom/google/protobuf/LazyStringList;
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 704
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 724
    .end local v0    # "lazyList":Lcom/google/protobuf/LazyStringList;
    :cond_2
    :goto_0
    return-void

    .line 707
    .restart local v0    # "lazyList":Lcom/google/protobuf/LazyStringList;
    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 708
    .local v1, "nextTag":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_1

    .line 710
    iput v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 716
    .end local v0    # "lazyList":Lcom/google/protobuf/LazyStringList;
    .end local v1    # "nextTag":I
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v2

    if-nez v2, :cond_2

    .line 720
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 721
    .restart local v1    # "nextTag":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_4

    .line 723
    iput v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 716
    .end local v1    # "nextTag":I
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public readStringListRequireUtf8(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 692
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    .line 693
    return-void
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 130
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 196
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    return v0
.end method

.method public readUInt32List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 800
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v4, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 801
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 802
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 824
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 804
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 805
    .local v0, "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 807
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 808
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 852
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_0
    return-void

    .line 812
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 813
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 816
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 817
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 819
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 827
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 849
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 829
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 830
    .restart local v0    # "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 832
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 837
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 841
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 842
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 844
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 802
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 827
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 88
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUInt64List(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v4, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 348
    check-cast v3, Lcom/google/protobuf/LongArrayList;

    .line 349
    .local v3, "plist":Lcom/google/protobuf/LongArrayList;
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 371
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 351
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 352
    .local v0, "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 354
    .local v1, "endPos":I
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 355
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 399
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_1
    :goto_0
    return-void

    .line 359
    .restart local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 360
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 363
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 364
    .local v2, "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_2

    .line 366
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 374
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 396
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 376
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 377
    .restart local v0    # "bytes":I
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    add-int v1, v4, v0

    .line 379
    .restart local v1    # "endPos":I
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_0

    .line 384
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :cond_5
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 388
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v4}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 389
    .restart local v2    # "nextTag":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v2, v4, :cond_5

    .line 391
    iput v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 374
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public skipField()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-ne v0, v1, :cond_1

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    invoke-virtual {v0, v1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    goto :goto_0
.end method
