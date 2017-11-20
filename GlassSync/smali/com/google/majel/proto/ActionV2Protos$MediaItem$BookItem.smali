.class public final Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BookItem"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;


# instance fields
.field private author_:Ljava/lang/String;

.field private bitField0_:I

.field private genre_:Ljava/lang/String;

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13962
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 13963
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->clear()Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

    .line 13964
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;
    .locals 2

    .prologue
    .line 13883
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

    if-nez v0, :cond_1

    .line 13884
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 13886
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

    if-nez v0, :cond_0

    .line 13887
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

    .line 13889
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13891
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

    return-object v0

    .line 13889
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14050
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 14044
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;
    .locals 1

    .prologue
    .line 13967
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    .line 13968
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->author_:Ljava/lang/String;

    .line 13969
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->title_:Ljava/lang/String;

    .line 13970
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->genre_:Ljava/lang/String;

    .line 13971
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->cachedSize:I

    .line 13972
    return-object p0
.end method

.method public clearAuthor()Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;
    .locals 1

    .prologue
    .line 13913
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->author_:Ljava/lang/String;

    .line 13914
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    .line 13915
    return-object p0
.end method

.method public clearGenre()Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;
    .locals 1

    .prologue
    .line 13957
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->genre_:Ljava/lang/String;

    .line 13958
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    .line 13959
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;
    .locals 1

    .prologue
    .line 13935
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->title_:Ljava/lang/String;

    .line 13936
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    .line 13937
    return-object p0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13899
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->author_:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13943
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->genre_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 13991
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 13992
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 13993
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->author_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13996
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 13997
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->title_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14000
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 14001
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->genre_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14004
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->cachedSize:I

    .line 14005
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13921
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAuthor()Z
    .locals 1

    .prologue
    .line 13910
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGenre()Z
    .locals 1

    .prologue
    .line 13954
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 13932
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13877
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14013
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 14014
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 14018
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14019
    :sswitch_0
    return-object p0

    .line 14024
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->author_:Ljava/lang/String;

    .line 14025
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    goto :goto_0

    .line 14029
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->title_:Ljava/lang/String;

    .line 14030
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    goto :goto_0

    .line 14034
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->genre_:Ljava/lang/String;

    .line 14035
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    goto :goto_0

    .line 14014
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setAuthor(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13902
    if-nez p1, :cond_0

    .line 13903
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13905
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->author_:Ljava/lang/String;

    .line 13906
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    .line 13907
    return-object p0
.end method

.method public setGenre(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13946
    if-nez p1, :cond_0

    .line 13947
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13949
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->genre_:Ljava/lang/String;

    .line 13950
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    .line 13951
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13924
    if-nez p1, :cond_0

    .line 13925
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13927
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->title_:Ljava/lang/String;

    .line 13928
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    .line 13929
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13978
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 13979
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->author_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13981
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 13982
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->title_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13984
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 13985
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$BookItem;->genre_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13987
    :cond_2
    return-void
.end method
