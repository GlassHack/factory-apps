.class public final Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;


# instance fields
.field public dependency:[Ljava/lang/String;

.field public enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

.field public extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

.field public messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

.field public name:Ljava/lang/String;

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

.field public package_:Ljava/lang/String;

.field public publicDependency:[I

.field public service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

.field public sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

.field public syntax:Ljava/lang/String;

.field public weakDependency:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 179
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->clear()Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    .line 180
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    if-nez v0, :cond_1

    .line 130
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    .line 135
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 591
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 183
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    .line 185
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    .line 186
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    .line 187
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    .line 188
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    .line 189
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    .line 190
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    .line 191
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    .line 192
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    .line 193
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    .line 194
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    .line 195
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->cachedSize:I

    .line 197
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    .line 273
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v4

    .line 274
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 275
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    .line 276
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 278
    :cond_0
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 279
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    .line 280
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 282
    :cond_1
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_4

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 285
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 286
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 287
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 288
    add-int/lit8 v0, v0, 0x1

    .line 290
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 285
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 293
    .end local v2    # "element":Ljava/lang/String;
    :cond_3
    add-int/2addr v4, v1

    .line 294
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 296
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v5, v5

    if-lez v5, :cond_6

    .line 297
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v5, v5

    if-ge v3, v5, :cond_6

    .line 298
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    aget-object v2, v5, v3

    .line 299
    .local v2, "element":Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    if-eqz v2, :cond_5

    .line 300
    const/4 v5, 0x4

    .line 301
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 297
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 305
    .end local v2    # "element":Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    .end local v3    # "i":I
    :cond_6
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v5, v5

    if-lez v5, :cond_8

    .line 306
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v5, v5

    if-ge v3, v5, :cond_8

    .line 307
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    aget-object v2, v5, v3

    .line 308
    .local v2, "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    if-eqz v2, :cond_7

    .line 309
    const/4 v5, 0x5

    .line 310
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 306
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 314
    .end local v2    # "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    .end local v3    # "i":I
    :cond_8
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    array-length v5, v5

    if-lez v5, :cond_a

    .line 315
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    array-length v5, v5

    if-ge v3, v5, :cond_a

    .line 316
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    aget-object v2, v5, v3

    .line 317
    .local v2, "element":Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    if-eqz v2, :cond_9

    .line 318
    const/4 v5, 0x6

    .line 319
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 315
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 323
    .end local v2    # "element":Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    .end local v3    # "i":I
    :cond_a
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v5, v5

    if-lez v5, :cond_c

    .line 324
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v5, v5

    if-ge v3, v5, :cond_c

    .line 325
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    aget-object v2, v5, v3

    .line 326
    .local v2, "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    if-eqz v2, :cond_b

    .line 327
    const/4 v5, 0x7

    .line 328
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 324
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 332
    .end local v2    # "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    .end local v3    # "i":I
    :cond_c
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    if-eqz v5, :cond_d

    .line 333
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    .line 334
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 336
    :cond_d
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    if-eqz v5, :cond_e

    .line 337
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    .line 338
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 340
    :cond_e
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v5, v5

    if-lez v5, :cond_10

    .line 341
    const/4 v1, 0x0

    .line 342
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v5, v5

    if-ge v3, v5, :cond_f

    .line 343
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    aget v2, v5, v3

    .line 345
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 342
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 347
    .end local v2    # "element":I
    :cond_f
    add-int/2addr v4, v1

    .line 348
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 350
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_10
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v5, v5

    if-lez v5, :cond_12

    .line 351
    const/4 v1, 0x0

    .line 352
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v5, v5

    if-ge v3, v5, :cond_11

    .line 353
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    aget v2, v5, v3

    .line 355
    .restart local v2    # "element":I
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 352
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 357
    .end local v2    # "element":I
    :cond_11
    add-int/2addr v4, v1

    .line 358
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 360
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_12
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 361
    const/16 v5, 0xc

    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    .line 362
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 364
    :cond_13
    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    .locals 9
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 372
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 373
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 377
    invoke-super {p0, p1, v6}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 378
    :sswitch_0
    return-object p0

    .line 383
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    goto :goto_0

    .line 387
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    goto :goto_0

    .line 391
    :sswitch_3
    const/16 v8, 0x1a

    .line 392
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 393
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    if-nez v8, :cond_2

    move v1, v7

    .line 394
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [Ljava/lang/String;

    .line 395
    .local v4, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 396
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 399
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 400
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 393
    .end local v1    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    array-length v1, v8

    goto :goto_1

    .line 403
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 404
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    goto :goto_0

    .line 408
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :sswitch_4
    const/16 v8, 0x22

    .line 409
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 410
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-nez v8, :cond_5

    move v1, v7

    .line 411
    .restart local v1    # "i":I
    :goto_3
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    .line 413
    .local v4, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    if-eqz v1, :cond_4

    .line 414
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    :cond_4
    :goto_4
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_6

    .line 417
    new-instance v8, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-direct {v8}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;-><init>()V

    aput-object v8, v4, v1

    .line 418
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 419
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 410
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    :cond_5
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v1, v8

    goto :goto_3

    .line 422
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    :cond_6
    new-instance v8, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-direct {v8}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;-><init>()V

    aput-object v8, v4, v1

    .line 423
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 424
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    goto/16 :goto_0

    .line 428
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    :sswitch_5
    const/16 v8, 0x2a

    .line 429
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 430
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-nez v8, :cond_8

    move v1, v7

    .line 431
    .restart local v1    # "i":I
    :goto_5
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    .line 433
    .local v4, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    if-eqz v1, :cond_7

    .line 434
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    :cond_7
    :goto_6
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_9

    .line 437
    new-instance v8, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v8}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;-><init>()V

    aput-object v8, v4, v1

    .line 438
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 439
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 430
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    :cond_8
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v1, v8

    goto :goto_5

    .line 442
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    :cond_9
    new-instance v8, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v8}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;-><init>()V

    aput-object v8, v4, v1

    .line 443
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 444
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    goto/16 :goto_0

    .line 448
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    :sswitch_6
    const/16 v8, 0x32

    .line 449
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 450
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    if-nez v8, :cond_b

    move v1, v7

    .line 451
    .restart local v1    # "i":I
    :goto_7
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    .line 453
    .local v4, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    if-eqz v1, :cond_a

    .line 454
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    :cond_a
    :goto_8
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_c

    .line 457
    new-instance v8, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v8}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;-><init>()V

    aput-object v8, v4, v1

    .line 458
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 459
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 450
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    :cond_b
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    array-length v1, v8

    goto :goto_7

    .line 462
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    :cond_c
    new-instance v8, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v8}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;-><init>()V

    aput-object v8, v4, v1

    .line 463
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 464
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    goto/16 :goto_0

    .line 468
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    :sswitch_7
    const/16 v8, 0x3a

    .line 469
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 470
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-nez v8, :cond_e

    move v1, v7

    .line 471
    .restart local v1    # "i":I
    :goto_9
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    .line 473
    .local v4, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    if-eqz v1, :cond_d

    .line 474
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    :cond_d
    :goto_a
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_f

    .line 477
    new-instance v8, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v8}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    aput-object v8, v4, v1

    .line 478
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 479
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 470
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    :cond_e
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v1, v8

    goto :goto_9

    .line 482
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    :cond_f
    new-instance v8, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v8}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    aput-object v8, v4, v1

    .line 483
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 484
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    goto/16 :goto_0

    .line 488
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    :sswitch_8
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    if-nez v8, :cond_10

    .line 489
    new-instance v8, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    invoke-direct {v8}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;-><init>()V

    iput-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    .line 491
    :cond_10
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 495
    :sswitch_9
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    if-nez v8, :cond_11

    .line 496
    new-instance v8, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    invoke-direct {v8}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;-><init>()V

    iput-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    .line 498
    :cond_11
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 502
    :sswitch_a
    const/16 v8, 0x50

    .line 503
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 504
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    if-nez v8, :cond_13

    move v1, v7

    .line 505
    .restart local v1    # "i":I
    :goto_b
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 506
    .local v4, "newArray":[I
    if-eqz v1, :cond_12

    .line 507
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    :cond_12
    :goto_c
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_14

    .line 510
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 511
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 504
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_13
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v1, v8

    goto :goto_b

    .line 514
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 515
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    goto/16 :goto_0

    .line 519
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 520
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 522
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 523
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 524
    .local v5, "startPos":I
    :goto_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_15

    .line 525
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 528
    :cond_15
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 529
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    if-nez v8, :cond_17

    move v1, v7

    .line 530
    .restart local v1    # "i":I
    :goto_e
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 531
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_16

    .line 532
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    :cond_16
    :goto_f
    array-length v8, v4

    if-ge v1, v8, :cond_18

    .line 535
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 529
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_17
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v1, v8

    goto :goto_e

    .line 537
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_18
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    .line 538
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 542
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_c
    const/16 v8, 0x58

    .line 543
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 544
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    if-nez v8, :cond_1a

    move v1, v7

    .line 545
    .restart local v1    # "i":I
    :goto_10
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 546
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_19

    .line 547
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 549
    :cond_19
    :goto_11
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_1b

    .line 550
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 551
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 544
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_1a
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v1, v8

    goto :goto_10

    .line 554
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_1b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 555
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    goto/16 :goto_0

    .line 559
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 560
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 562
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 563
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 564
    .restart local v5    # "startPos":I
    :goto_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_1c

    .line 565
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 568
    :cond_1c
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 569
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    if-nez v8, :cond_1e

    move v1, v7

    .line 570
    .restart local v1    # "i":I
    :goto_13
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 571
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_1d

    .line 572
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    :cond_1d
    :goto_14
    array-length v8, v4

    if-ge v1, v8, :cond_1f

    .line 575
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 574
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 569
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_1e
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v1, v8

    goto :goto_13

    .line 577
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_1f
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    .line 578
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 582
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    goto/16 :goto_0

    .line 373
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x52 -> :sswitch_b
        0x58 -> :sswitch_c
        0x5a -> :sswitch_d
        0x62 -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 207
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 210
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 211
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 212
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 213
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 210
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 218
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 219
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    aget-object v0, v2, v1

    .line 220
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    if-eqz v0, :cond_4

    .line 221
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 218
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 225
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    .end local v1    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 226
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 227
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    aget-object v0, v2, v1

    .line 228
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    if-eqz v0, :cond_6

    .line 229
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 226
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 233
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    .end local v1    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_9

    .line 234
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    .line 235
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    aget-object v0, v2, v1

    .line 236
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    if-eqz v0, :cond_8

    .line 237
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 234
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 241
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    .end local v1    # "i":I
    :cond_9
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_b

    .line 242
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 243
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    aget-object v0, v2, v1

    .line 244
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    if-eqz v0, :cond_a

    .line 245
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 242
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 249
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    .end local v1    # "i":I
    :cond_b
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    if-eqz v2, :cond_c

    .line 250
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 252
    :cond_c
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    if-eqz v2, :cond_d

    .line 253
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 255
    :cond_d
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v2, v2

    if-lez v2, :cond_e

    .line 256
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v2, v2

    if-ge v1, v2, :cond_e

    .line 257
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 260
    .end local v1    # "i":I
    :cond_e
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v2, v2

    if-lez v2, :cond_f

    .line 261
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v2, v2

    if-ge v1, v2, :cond_f

    .line 262
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 265
    .end local v1    # "i":I
    :cond_f
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 266
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 268
    :cond_10
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 269
    return-void
.end method
