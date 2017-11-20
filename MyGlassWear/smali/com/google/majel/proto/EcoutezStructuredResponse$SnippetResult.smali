.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SnippetResult"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;


# instance fields
.field private bitField0_:I

.field private domain_:Ljava/lang/String;

.field private snippet_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11923
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 11924
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    .line 11925
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 2

    .prologue
    .line 11822
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    if-nez v0, :cond_1

    .line 11823
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 11825
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    if-nez v0, :cond_0

    .line 11826
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    .line 11828
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11830
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    return-object v0

    .line 11828
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12024
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 12018
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1

    .prologue
    .line 11928
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    .line 11929
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->url_:Ljava/lang/String;

    .line 11930
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->domain_:Ljava/lang/String;

    .line 11931
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->title_:Ljava/lang/String;

    .line 11932
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->snippet_:Ljava/lang/String;

    .line 11933
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->cachedSize:I

    .line 11934
    return-object p0
.end method

.method public clearDomain()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1

    .prologue
    .line 11874
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->domain_:Ljava/lang/String;

    .line 11875
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    .line 11876
    return-object p0
.end method

.method public clearSnippet()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1

    .prologue
    .line 11918
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->snippet_:Ljava/lang/String;

    .line 11919
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    .line 11920
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1

    .prologue
    .line 11896
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->title_:Ljava/lang/String;

    .line 11897
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    .line 11898
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1

    .prologue
    .line 11852
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->url_:Ljava/lang/String;

    .line 11853
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    .line 11854
    return-object p0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11860
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->domain_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 11956
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 11957
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11958
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->url_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11961
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 11962
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->domain_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11965
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 11966
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->title_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11969
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 11970
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->snippet_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11973
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->cachedSize:I

    .line 11974
    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11904
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->snippet_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11882
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11838
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDomain()Z
    .locals 1

    .prologue
    .line 11871
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSnippet()Z
    .locals 1

    .prologue
    .line 11915
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 11893
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 11849
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 11816
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11982
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11983
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 11987
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11988
    :sswitch_0
    return-object p0

    .line 11993
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->url_:Ljava/lang/String;

    .line 11994
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    goto :goto_0

    .line 11998
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->domain_:Ljava/lang/String;

    .line 11999
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    goto :goto_0

    .line 12003
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->title_:Ljava/lang/String;

    .line 12004
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    goto :goto_0

    .line 12008
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->snippet_:Ljava/lang/String;

    .line 12009
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    goto :goto_0

    .line 11983
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setDomain(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11863
    if-nez p1, :cond_0

    .line 11864
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11866
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->domain_:Ljava/lang/String;

    .line 11867
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    .line 11868
    return-object p0
.end method

.method public setSnippet(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11907
    if-nez p1, :cond_0

    .line 11908
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11910
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->snippet_:Ljava/lang/String;

    .line 11911
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    .line 11912
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11885
    if-nez p1, :cond_0

    .line 11886
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11888
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->title_:Ljava/lang/String;

    .line 11889
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    .line 11890
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11841
    if-nez p1, :cond_0

    .line 11842
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11844
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->url_:Ljava/lang/String;

    .line 11845
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    .line 11846
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
    .line 11940
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 11941
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->url_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11943
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 11944
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->domain_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11946
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 11947
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->title_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11949
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 11950
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->snippet_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11952
    :cond_3
    return-void
.end method
