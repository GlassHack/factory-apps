.class public final Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetWallpaperInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;


# instance fields
.field private bitField0_:I

.field private sha1HashCode_:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10616
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10617
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->clear()Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    .line 10618
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;
    .locals 2

    .prologue
    .line 10579
    sget-object v0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    if-nez v0, :cond_1

    .line 10580
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 10582
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    if-nez v0, :cond_0

    .line 10583
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    .line 10585
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10587
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    return-object v0

    .line 10585
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10709
    new-instance v0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 10703
    new-instance v0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;
    .locals 1

    .prologue
    .line 10621
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->bitField0_:I

    .line 10622
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    .line 10623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10624
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->cachedSize:I

    .line 10625
    return-object p0
.end method

.method public clearSha1HashCode()Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;
    .locals 1

    .prologue
    .line 10601
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    .line 10602
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->bitField0_:I

    .line 10603
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 10669
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 10670
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 10671
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    .line 10672
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 10674
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10630
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 10644
    :cond_0
    :goto_0
    return v1

    .line 10633
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 10636
    check-cast v0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    .line 10637
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    .line 10638
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10641
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10642
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 10644
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getSha1HashCode()[B
    .locals 1

    .prologue
    .line 10595
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    return-object v0
.end method

.method public hasSha1HashCode()Z
    .locals 1

    .prologue
    .line 10598
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->bitField0_:I

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
    .locals 3

    .prologue
    .line 10649
    const/16 v0, 0x11

    .line 10650
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 10651
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 10652
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10653
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 10654
    :goto_0
    add-int v0, v2, v1

    .line 10655
    return v0

    .line 10654
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10682
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10683
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 10687
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10688
    :sswitch_0
    return-object p0

    .line 10693
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    .line 10694
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->bitField0_:I

    goto :goto_0

    .line 10683
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 10573
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public setSha1HashCode([B)Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 10606
    if-nez p1, :cond_0

    .line 10607
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10609
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    .line 10610
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->bitField0_:I

    .line 10611
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
    .line 10661
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10662
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 10664
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 10665
    return-void
.end method
