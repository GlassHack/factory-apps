.class public final Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpgradedOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;


# instance fields
.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3336
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3337
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->clear()Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    .line 3338
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 2

    .prologue
    .line 3317
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    if-nez v0, :cond_1

    .line 3318
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3320
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    if-nez v0, :cond_0

    .line 3321
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    .line 3323
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3325
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    return-object v0

    .line 3323
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3409
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3403
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1

    .prologue
    .line 3341
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->name:Ljava/lang/String;

    .line 3342
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->value:Ljava/lang/String;

    .line 3343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3344
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->cachedSize:I

    .line 3345
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 3362
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3363
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3364
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->name:Ljava/lang/String;

    .line 3365
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3367
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->value:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->value:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3368
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->value:Ljava/lang/String;

    .line 3369
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3371
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3379
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3380
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3384
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3385
    :sswitch_0
    return-object p0

    .line 3390
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->name:Ljava/lang/String;

    goto :goto_0

    .line 3394
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->value:Ljava/lang/String;

    goto :goto_0

    .line 3380
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 3311
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3351
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3352
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3354
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->value:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3355
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3357
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3358
    return-void
.end method
