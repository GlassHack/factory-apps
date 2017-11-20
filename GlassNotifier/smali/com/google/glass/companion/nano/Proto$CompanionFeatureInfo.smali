.class public final Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompanionFeatureInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;


# instance fields
.field private bitField0_:I

.field private isKeyboardTextEntrySupported_:Z

.field private isPhotoSyncEnabled_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8935
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8936
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->clear()Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    .line 8937
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;
    .locals 2

    .prologue
    .line 8882
    sget-object v0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    if-nez v0, :cond_1

    .line 8883
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 8885
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    if-nez v0, :cond_0

    .line 8886
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    .line 8888
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8890
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    return-object v0

    .line 8888
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9046
    new-instance v0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9040
    new-instance v0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8940
    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    .line 8941
    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->isPhotoSyncEnabled_:Z

    .line 8942
    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->isKeyboardTextEntrySupported_:Z

    .line 8943
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 8944
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->cachedSize:I

    .line 8945
    return-object p0
.end method

.method public clearIsKeyboardTextEntrySupported()Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;
    .locals 1

    .prologue
    .line 8923
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->isKeyboardTextEntrySupported_:Z

    .line 8924
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    .line 8925
    return-object p0
.end method

.method public clearIsPhotoSyncEnabled()Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;
    .locals 1

    .prologue
    .line 8904
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->isPhotoSyncEnabled_:Z

    .line 8905
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    .line 8906
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 8997
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8998
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8999
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->isPhotoSyncEnabled_:Z

    .line 9000
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9002
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 9003
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->isKeyboardTextEntrySupported_:Z

    .line 9004
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9006
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 8950
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 8968
    :cond_0
    :goto_0
    return v1

    .line 8953
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 8956
    check-cast v0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    .line 8957
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->isPhotoSyncEnabled_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->isPhotoSyncEnabled_:Z

    if-ne v3, v4, :cond_0

    .line 8961
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->isKeyboardTextEntrySupported_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->isKeyboardTextEntrySupported_:Z

    if-ne v3, v4, :cond_0

    .line 8965
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8966
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 8968
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getIsKeyboardTextEntrySupported()Z
    .locals 1

    .prologue
    .line 8917
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->isKeyboardTextEntrySupported_:Z

    return v0
.end method

.method public getIsPhotoSyncEnabled()Z
    .locals 1

    .prologue
    .line 8898
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->isPhotoSyncEnabled_:Z

    return v0
.end method

.method public hasIsKeyboardTextEntrySupported()Z
    .locals 1

    .prologue
    .line 8920
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsPhotoSyncEnabled()Z
    .locals 1

    .prologue
    .line 8901
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    .line 8973
    const/16 v0, 0x11

    .line 8974
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 8975
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->isPhotoSyncEnabled_:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 8976
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->isKeyboardTextEntrySupported_:Z

    if-eqz v4, :cond_2

    :goto_1
    add-int v0, v1, v2

    .line 8977
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 8978
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, 0x0

    .line 8979
    :goto_2
    add-int v0, v2, v1

    .line 8980
    return v0

    :cond_1
    move v1, v3

    .line 8975
    goto :goto_0

    :cond_2
    move v2, v3

    .line 8976
    goto :goto_1

    .line 8979
    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9014
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9015
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 9019
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9020
    :sswitch_0
    return-object p0

    .line 9025
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->isPhotoSyncEnabled_:Z

    .line 9026
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    goto :goto_0

    .line 9030
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->isKeyboardTextEntrySupported_:Z

    .line 9031
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    goto :goto_0

    .line 9015
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 8876
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public setIsKeyboardTextEntrySupported(Z)Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 8928
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->isKeyboardTextEntrySupported_:Z

    .line 8929
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    .line 8930
    return-object p0
.end method

.method public setIsPhotoSyncEnabled(Z)Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 8909
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->isPhotoSyncEnabled_:Z

    .line 8910
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    .line 8911
    return-object p0
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
    .line 8986
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8987
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->isPhotoSyncEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 8989
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8990
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->isKeyboardTextEntrySupported_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 8992
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8993
    return-void
.end method
