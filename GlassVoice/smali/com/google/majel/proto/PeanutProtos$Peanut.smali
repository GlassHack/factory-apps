.class public final Lcom/google/majel/proto/PeanutProtos$Peanut;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "PeanutProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/PeanutProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Peanut"
.end annotation


# static fields
.field public static final PRIMARY_TYPE_HINT_ACTION:I = 0x6

.field public static final PRIMARY_TYPE_HINT_IMAGE:I = 0x2

.field public static final PRIMARY_TYPE_HINT_LATLNG:I = 0x4

.field public static final PRIMARY_TYPE_HINT_TEXT:I = 0x1

.field public static final PRIMARY_TYPE_HINT_UNKNOWN:I = 0x0

.field public static final PRIMARY_TYPE_HINT_URL:I = 0x3

.field public static final PRIMARY_TYPE_HINT_VIDEO:I = 0x5

.field private static volatile _emptyArray:[Lcom/google/majel/proto/PeanutProtos$Peanut;


# instance fields
.field public actionResponse:[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

.field public actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

.field private bitField0_:I

.field private confidence_:F

.field private debug_:Ljava/lang/String;

.field private finalScore_:F

.field private highConfidenceResponse_:Z

.field public imageResponse:[Lcom/google/majel/proto/PeanutProtos$Image;

.field private imageResponseHeader_:Ljava/lang/String;

.field private isLoggable_:Z

.field private isQuestion_:Z

.field private onlyShowPeanutImageResponse_:Z

.field public placeResponse:[Lcom/google/majel/proto/LatLngProtos$LatLng;

.field private primaryType_:I

.field private searchResultsUnnecessary_:Z

.field private serverName_:Ljava/lang/String;

.field public structuredResponse:Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

.field public textResponse:Lcom/google/majel/proto/PeanutProtos$Text;

.field public urlResponse:[Lcom/google/majel/proto/PeanutProtos$Url;

.field public videoResponse:[Lcom/google/majel/proto/PeanutProtos$Video;

.field private webSearchType_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1972
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1973
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->clear()Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 1974
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 2

    .prologue
    .line 1695
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$Peanut;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$Peanut;

    if-nez v0, :cond_1

    .line 1696
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1698
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$Peanut;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$Peanut;

    if-nez v0, :cond_0

    .line 1699
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/PeanutProtos$Peanut;

    sput-object v0, Lcom/google/majel/proto/PeanutProtos$Peanut;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 1701
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1703
    :cond_1
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$Peanut;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$Peanut;

    return-object v0

    .line 1701
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2435
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Peanut;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Peanut;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$Peanut;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$Peanut;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2429
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Peanut;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Peanut;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Peanut;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1977
    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1978
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->serverName_:Ljava/lang/String;

    .line 1979
    iput v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->finalScore_:F

    .line 1980
    iput v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->confidence_:F

    .line 1981
    iput-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->textResponse:Lcom/google/majel/proto/PeanutProtos$Text;

    .line 1982
    invoke-static {}, Lcom/google/majel/proto/PeanutProtos$Image;->emptyArray()[Lcom/google/majel/proto/PeanutProtos$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse:[Lcom/google/majel/proto/PeanutProtos$Image;

    .line 1983
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponseHeader_:Ljava/lang/String;

    .line 1984
    invoke-static {}, Lcom/google/majel/proto/PeanutProtos$Url;->emptyArray()[Lcom/google/majel/proto/PeanutProtos$Url;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse:[Lcom/google/majel/proto/PeanutProtos$Url;

    .line 1985
    invoke-static {}, Lcom/google/majel/proto/LatLngProtos$LatLng;->emptyArray()[Lcom/google/majel/proto/LatLngProtos$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse:[Lcom/google/majel/proto/LatLngProtos$LatLng;

    .line 1986
    invoke-static {}, Lcom/google/majel/proto/PeanutProtos$Video;->emptyArray()[Lcom/google/majel/proto/PeanutProtos$Video;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse:[Lcom/google/majel/proto/PeanutProtos$Video;

    .line 1987
    iput-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->structuredResponse:Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 1988
    invoke-static {}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->emptyArray()[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse:[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    .line 1989
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    .line 1990
    iput-boolean v1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isQuestion_:Z

    .line 1991
    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->primaryType_:I

    .line 1992
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->webSearchType_:Ljava/lang/String;

    .line 1993
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->searchResultsUnnecessary_:Z

    .line 1994
    iput-boolean v1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->highConfidenceResponse_:Z

    .line 1995
    iput-boolean v1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->onlyShowPeanutImageResponse_:Z

    .line 1996
    iput-boolean v1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isLoggable_:Z

    .line 1997
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->debug_:Ljava/lang/String;

    .line 1998
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->cachedSize:I

    .line 1999
    return-object p0
.end method

.method public clearConfidence()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1763
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->confidence_:F

    .line 1764
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1765
    return-object p0
.end method

.method public clearDebug()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1967
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->debug_:Ljava/lang/String;

    .line 1968
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1969
    return-object p0
.end method

.method public clearFinalScore()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1744
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->finalScore_:F

    .line 1745
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1746
    return-object p0
.end method

.method public clearHighConfidenceResponse()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1907
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->highConfidenceResponse_:Z

    .line 1908
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1909
    return-object p0
.end method

.method public clearImageResponseHeader()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1791
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponseHeader_:Ljava/lang/String;

    .line 1792
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1793
    return-object p0
.end method

.method public clearIsLoggable()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1945
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isLoggable_:Z

    .line 1946
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1947
    return-object p0
.end method

.method public clearIsQuestion()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1828
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isQuestion_:Z

    .line 1829
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1830
    return-object p0
.end method

.method public clearOnlyShowPeanutImageResponse()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1926
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->onlyShowPeanutImageResponse_:Z

    .line 1927
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1928
    return-object p0
.end method

.method public clearPrimaryType()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1847
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->primaryType_:I

    .line 1848
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1849
    return-object p0
.end method

.method public clearSearchResultsUnnecessary()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1888
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->searchResultsUnnecessary_:Z

    .line 1889
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1890
    return-object p0
.end method

.method public clearServerName()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1725
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->serverName_:Ljava/lang/String;

    .line 1726
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1727
    return-object p0
.end method

.method public clearWebSearchType()Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1

    .prologue
    .line 1869
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->webSearchType_:Ljava/lang/String;

    .line 1870
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1871
    return-object p0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 1752
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->confidence_:F

    return v0
.end method

.method public getDebug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->debug_:Ljava/lang/String;

    return-object v0
.end method

.method public getFinalScore()F
    .locals 1

    .prologue
    .line 1733
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->finalScore_:F

    return v0
.end method

.method public getHighConfidenceResponse()Z
    .locals 1

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->highConfidenceResponse_:Z

    return v0
.end method

.method public getImageResponseHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponseHeader_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLoggable()Z
    .locals 1

    .prologue
    .line 1934
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isLoggable_:Z

    return v0
.end method

.method public getIsQuestion()Z
    .locals 1

    .prologue
    .line 1817
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isQuestion_:Z

    return v0
.end method

.method public getOnlyShowPeanutImageResponse()Z
    .locals 1

    .prologue
    .line 1915
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->onlyShowPeanutImageResponse_:Z

    return v0
.end method

.method public getPrimaryType()I
    .locals 1

    .prologue
    .line 1836
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->primaryType_:I

    return v0
.end method

.method public getSearchResultsUnnecessary()Z
    .locals 1

    .prologue
    .line 1877
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->searchResultsUnnecessary_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2099
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 2100
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 2101
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->serverName_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2104
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 2105
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->confidence_:F

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 2108
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->textResponse:Lcom/google/majel/proto/PeanutProtos$Text;

    if-eqz v3, :cond_2

    .line 2109
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->textResponse:Lcom/google/majel/proto/PeanutProtos$Text;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2112
    :cond_2
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse:[Lcom/google/majel/proto/PeanutProtos$Image;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse:[Lcom/google/majel/proto/PeanutProtos$Image;

    array-length v3, v3

    if-lez v3, :cond_4

    .line 2113
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse:[Lcom/google/majel/proto/PeanutProtos$Image;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 2114
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse:[Lcom/google/majel/proto/PeanutProtos$Image;

    aget-object v0, v3, v1

    .line 2115
    .local v0, "element":Lcom/google/majel/proto/PeanutProtos$Image;
    if-eqz v0, :cond_3

    .line 2116
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2113
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2121
    .end local v0    # "element":Lcom/google/majel/proto/PeanutProtos$Image;
    .end local v1    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse:[Lcom/google/majel/proto/PeanutProtos$Url;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse:[Lcom/google/majel/proto/PeanutProtos$Url;

    array-length v3, v3

    if-lez v3, :cond_6

    .line 2122
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse:[Lcom/google/majel/proto/PeanutProtos$Url;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 2123
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse:[Lcom/google/majel/proto/PeanutProtos$Url;

    aget-object v0, v3, v1

    .line 2124
    .local v0, "element":Lcom/google/majel/proto/PeanutProtos$Url;
    if-eqz v0, :cond_5

    .line 2125
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2122
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2130
    .end local v0    # "element":Lcom/google/majel/proto/PeanutProtos$Url;
    .end local v1    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse:[Lcom/google/majel/proto/LatLngProtos$LatLng;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse:[Lcom/google/majel/proto/LatLngProtos$LatLng;

    array-length v3, v3

    if-lez v3, :cond_8

    .line 2131
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse:[Lcom/google/majel/proto/LatLngProtos$LatLng;

    array-length v3, v3

    if-ge v1, v3, :cond_8

    .line 2132
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse:[Lcom/google/majel/proto/LatLngProtos$LatLng;

    aget-object v0, v3, v1

    .line 2133
    .local v0, "element":Lcom/google/majel/proto/LatLngProtos$LatLng;
    if-eqz v0, :cond_7

    .line 2134
    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2131
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2139
    .end local v0    # "element":Lcom/google/majel/proto/LatLngProtos$LatLng;
    .end local v1    # "i":I
    :cond_8
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_9

    .line 2140
    const/16 v3, 0x8

    iget-boolean v4, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isQuestion_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2143
    :cond_9
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_a

    .line 2144
    const/16 v3, 0x9

    iget v4, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->primaryType_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2147
    :cond_a
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_b

    .line 2148
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->debug_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2151
    :cond_b
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse:[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse:[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    array-length v3, v3

    if-lez v3, :cond_d

    .line 2152
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse:[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    array-length v3, v3

    if-ge v1, v3, :cond_d

    .line 2153
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse:[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    aget-object v0, v3, v1

    .line 2154
    .local v0, "element":Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    if-eqz v0, :cond_c

    .line 2155
    const/16 v3, 0xb

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2152
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2160
    .end local v0    # "element":Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .end local v1    # "i":I
    :cond_d
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_e

    .line 2161
    const/16 v3, 0xc

    iget v4, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->finalScore_:F

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 2164
    :cond_e
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->structuredResponse:Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    if-eqz v3, :cond_f

    .line 2165
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->structuredResponse:Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2168
    :cond_f
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse:[Lcom/google/majel/proto/PeanutProtos$Video;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse:[Lcom/google/majel/proto/PeanutProtos$Video;

    array-length v3, v3

    if-lez v3, :cond_11

    .line 2169
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse:[Lcom/google/majel/proto/PeanutProtos$Video;

    array-length v3, v3

    if-ge v1, v3, :cond_11

    .line 2170
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse:[Lcom/google/majel/proto/PeanutProtos$Video;

    aget-object v0, v3, v1

    .line 2171
    .local v0, "element":Lcom/google/majel/proto/PeanutProtos$Video;
    if-eqz v0, :cond_10

    .line 2172
    const/16 v3, 0xe

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2169
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2177
    .end local v0    # "element":Lcom/google/majel/proto/PeanutProtos$Video;
    .end local v1    # "i":I
    :cond_11
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    array-length v3, v3

    if-lez v3, :cond_13

    .line 2178
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    array-length v3, v3

    if-ge v1, v3, :cond_13

    .line 2179
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    aget-object v0, v3, v1

    .line 2180
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    if-eqz v0, :cond_12

    .line 2181
    const/16 v3, 0xf

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2178
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2186
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    .end local v1    # "i":I
    :cond_13
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_14

    .line 2187
    const/16 v3, 0x10

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->webSearchType_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2190
    :cond_14
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_15

    .line 2191
    const/16 v3, 0x11

    iget-boolean v4, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->searchResultsUnnecessary_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2194
    :cond_15
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_16

    .line 2195
    const/16 v3, 0x12

    iget-boolean v4, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->highConfidenceResponse_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2198
    :cond_16
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_17

    .line 2199
    const/16 v3, 0x13

    iget-boolean v4, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isLoggable_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2202
    :cond_17
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_18

    .line 2203
    const/16 v3, 0x14

    iget-boolean v4, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->onlyShowPeanutImageResponse_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2206
    :cond_18
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_19

    .line 2207
    const/16 v3, 0x15

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponseHeader_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2210
    :cond_19
    iput v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->cachedSize:I

    .line 2211
    return v2
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->serverName_:Ljava/lang/String;

    return-object v0
.end method

.method public getWebSearchType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->webSearchType_:Ljava/lang/String;

    return-object v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 1760
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDebug()Z
    .locals 1

    .prologue
    .line 1964
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFinalScore()Z
    .locals 1

    .prologue
    .line 1741
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHighConfidenceResponse()Z
    .locals 1

    .prologue
    .line 1904
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImageResponseHeader()Z
    .locals 1

    .prologue
    .line 1788
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsLoggable()Z
    .locals 1

    .prologue
    .line 1942
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsQuestion()Z
    .locals 1

    .prologue
    .line 1825
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnlyShowPeanutImageResponse()Z
    .locals 1

    .prologue
    .line 1923
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrimaryType()Z
    .locals 1

    .prologue
    .line 1844
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSearchResultsUnnecessary()Z
    .locals 1

    .prologue
    .line 1885
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServerName()Z
    .locals 1

    .prologue
    .line 1722
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWebSearchType()Z
    .locals 1

    .prologue
    .line 1866
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

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
    .line 1680
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$Peanut;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2219
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2220
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2224
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2225
    :sswitch_0
    return-object p0

    .line 2230
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->serverName_:Ljava/lang/String;

    .line 2231
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    goto :goto_0

    .line 2235
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->confidence_:F

    .line 2236
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    goto :goto_0

    .line 2240
    :sswitch_3
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->textResponse:Lcom/google/majel/proto/PeanutProtos$Text;

    if-nez v5, :cond_1

    .line 2241
    new-instance v5, Lcom/google/majel/proto/PeanutProtos$Text;

    invoke-direct {v5}, Lcom/google/majel/proto/PeanutProtos$Text;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->textResponse:Lcom/google/majel/proto/PeanutProtos$Text;

    .line 2243
    :cond_1
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->textResponse:Lcom/google/majel/proto/PeanutProtos$Text;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2247
    :sswitch_4
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2249
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse:[Lcom/google/majel/proto/PeanutProtos$Image;

    if-nez v5, :cond_3

    move v1, v4

    .line 2250
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/PeanutProtos$Image;

    .line 2252
    .local v2, "newArray":[Lcom/google/majel/proto/PeanutProtos$Image;
    if-eqz v1, :cond_2

    .line 2253
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse:[Lcom/google/majel/proto/PeanutProtos$Image;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2255
    :cond_2
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 2256
    new-instance v5, Lcom/google/majel/proto/PeanutProtos$Image;

    invoke-direct {v5}, Lcom/google/majel/proto/PeanutProtos$Image;-><init>()V

    aput-object v5, v2, v1

    .line 2257
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2258
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2255
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2249
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/PeanutProtos$Image;
    :cond_3
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse:[Lcom/google/majel/proto/PeanutProtos$Image;

    array-length v1, v5

    goto :goto_1

    .line 2261
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/PeanutProtos$Image;
    :cond_4
    new-instance v5, Lcom/google/majel/proto/PeanutProtos$Image;

    invoke-direct {v5}, Lcom/google/majel/proto/PeanutProtos$Image;-><init>()V

    aput-object v5, v2, v1

    .line 2262
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2263
    iput-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse:[Lcom/google/majel/proto/PeanutProtos$Image;

    goto :goto_0

    .line 2267
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/PeanutProtos$Image;
    :sswitch_5
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2269
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse:[Lcom/google/majel/proto/PeanutProtos$Url;

    if-nez v5, :cond_6

    move v1, v4

    .line 2270
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/PeanutProtos$Url;

    .line 2272
    .local v2, "newArray":[Lcom/google/majel/proto/PeanutProtos$Url;
    if-eqz v1, :cond_5

    .line 2273
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse:[Lcom/google/majel/proto/PeanutProtos$Url;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2275
    :cond_5
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    .line 2276
    new-instance v5, Lcom/google/majel/proto/PeanutProtos$Url;

    invoke-direct {v5}, Lcom/google/majel/proto/PeanutProtos$Url;-><init>()V

    aput-object v5, v2, v1

    .line 2277
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2278
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2275
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2269
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/PeanutProtos$Url;
    :cond_6
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse:[Lcom/google/majel/proto/PeanutProtos$Url;

    array-length v1, v5

    goto :goto_3

    .line 2281
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/PeanutProtos$Url;
    :cond_7
    new-instance v5, Lcom/google/majel/proto/PeanutProtos$Url;

    invoke-direct {v5}, Lcom/google/majel/proto/PeanutProtos$Url;-><init>()V

    aput-object v5, v2, v1

    .line 2282
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2283
    iput-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse:[Lcom/google/majel/proto/PeanutProtos$Url;

    goto/16 :goto_0

    .line 2287
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/PeanutProtos$Url;
    :sswitch_6
    const/16 v5, 0x3a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2289
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse:[Lcom/google/majel/proto/LatLngProtos$LatLng;

    if-nez v5, :cond_9

    move v1, v4

    .line 2290
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/LatLngProtos$LatLng;

    .line 2292
    .local v2, "newArray":[Lcom/google/majel/proto/LatLngProtos$LatLng;
    if-eqz v1, :cond_8

    .line 2293
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse:[Lcom/google/majel/proto/LatLngProtos$LatLng;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2295
    :cond_8
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_a

    .line 2296
    new-instance v5, Lcom/google/majel/proto/LatLngProtos$LatLng;

    invoke-direct {v5}, Lcom/google/majel/proto/LatLngProtos$LatLng;-><init>()V

    aput-object v5, v2, v1

    .line 2297
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2298
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2295
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2289
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/LatLngProtos$LatLng;
    :cond_9
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse:[Lcom/google/majel/proto/LatLngProtos$LatLng;

    array-length v1, v5

    goto :goto_5

    .line 2301
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/LatLngProtos$LatLng;
    :cond_a
    new-instance v5, Lcom/google/majel/proto/LatLngProtos$LatLng;

    invoke-direct {v5}, Lcom/google/majel/proto/LatLngProtos$LatLng;-><init>()V

    aput-object v5, v2, v1

    .line 2302
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2303
    iput-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse:[Lcom/google/majel/proto/LatLngProtos$LatLng;

    goto/16 :goto_0

    .line 2307
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/LatLngProtos$LatLng;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isQuestion_:Z

    .line 2308
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    goto/16 :goto_0

    .line 2312
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->primaryType_:I

    .line 2313
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    goto/16 :goto_0

    .line 2317
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->debug_:Ljava/lang/String;

    .line 2318
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    goto/16 :goto_0

    .line 2322
    :sswitch_a
    const/16 v5, 0x5a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2324
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse:[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    if-nez v5, :cond_c

    move v1, v4

    .line 2325
    .restart local v1    # "i":I
    :goto_7
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    .line 2327
    .local v2, "newArray":[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    if-eqz v1, :cond_b

    .line 2328
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse:[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2330
    :cond_b
    :goto_8
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_d

    .line 2331
    new-instance v5, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    invoke-direct {v5}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;-><init>()V

    aput-object v5, v2, v1

    .line 2332
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2333
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2330
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2324
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    :cond_c
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse:[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    array-length v1, v5

    goto :goto_7

    .line 2336
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    :cond_d
    new-instance v5, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    invoke-direct {v5}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;-><init>()V

    aput-object v5, v2, v1

    .line 2337
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2338
    iput-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse:[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    goto/16 :goto_0

    .line 2342
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->finalScore_:F

    .line 2343
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    goto/16 :goto_0

    .line 2347
    :sswitch_c
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->structuredResponse:Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    if-nez v5, :cond_e

    .line 2348
    new-instance v5, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    invoke-direct {v5}, Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->structuredResponse:Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    .line 2350
    :cond_e
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->structuredResponse:Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2354
    :sswitch_d
    const/16 v5, 0x72

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2356
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse:[Lcom/google/majel/proto/PeanutProtos$Video;

    if-nez v5, :cond_10

    move v1, v4

    .line 2357
    .restart local v1    # "i":I
    :goto_9
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/PeanutProtos$Video;

    .line 2359
    .local v2, "newArray":[Lcom/google/majel/proto/PeanutProtos$Video;
    if-eqz v1, :cond_f

    .line 2360
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse:[Lcom/google/majel/proto/PeanutProtos$Video;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2362
    :cond_f
    :goto_a
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_11

    .line 2363
    new-instance v5, Lcom/google/majel/proto/PeanutProtos$Video;

    invoke-direct {v5}, Lcom/google/majel/proto/PeanutProtos$Video;-><init>()V

    aput-object v5, v2, v1

    .line 2364
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2365
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2362
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2356
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/PeanutProtos$Video;
    :cond_10
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse:[Lcom/google/majel/proto/PeanutProtos$Video;

    array-length v1, v5

    goto :goto_9

    .line 2368
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/PeanutProtos$Video;
    :cond_11
    new-instance v5, Lcom/google/majel/proto/PeanutProtos$Video;

    invoke-direct {v5}, Lcom/google/majel/proto/PeanutProtos$Video;-><init>()V

    aput-object v5, v2, v1

    .line 2369
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2370
    iput-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse:[Lcom/google/majel/proto/PeanutProtos$Video;

    goto/16 :goto_0

    .line 2374
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/PeanutProtos$Video;
    :sswitch_e
    const/16 v5, 0x7a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2376
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    if-nez v5, :cond_13

    move v1, v4

    .line 2377
    .restart local v1    # "i":I
    :goto_b
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    .line 2379
    .local v2, "newArray":[Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    if-eqz v1, :cond_12

    .line 2380
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2382
    :cond_12
    :goto_c
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_14

    .line 2383
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;-><init>()V

    aput-object v5, v2, v1

    .line 2384
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2385
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2382
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 2376
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    :cond_13
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    array-length v1, v5

    goto :goto_b

    .line 2388
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    :cond_14
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;-><init>()V

    aput-object v5, v2, v1

    .line 2389
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2390
    iput-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    goto/16 :goto_0

    .line 2394
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->webSearchType_:Ljava/lang/String;

    .line 2395
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    goto/16 :goto_0

    .line 2399
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->searchResultsUnnecessary_:Z

    .line 2400
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    goto/16 :goto_0

    .line 2404
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->highConfidenceResponse_:Z

    .line 2405
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    goto/16 :goto_0

    .line 2409
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isLoggable_:Z

    .line 2410
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    goto/16 :goto_0

    .line 2414
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->onlyShowPeanutImageResponse_:Z

    .line 2415
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    goto/16 :goto_0

    .line 2419
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponseHeader_:Ljava/lang/String;

    .line 2420
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    goto/16 :goto_0

    .line 2220
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x40 -> :sswitch_7
        0x48 -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x65 -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x7a -> :sswitch_e
        0x82 -> :sswitch_f
        0x88 -> :sswitch_10
        0x90 -> :sswitch_11
        0x98 -> :sswitch_12
        0xa0 -> :sswitch_13
        0xaa -> :sswitch_14
    .end sparse-switch
.end method

.method public setConfidence(F)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1755
    iput p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->confidence_:F

    .line 1756
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1757
    return-object p0
.end method

.method public setDebug(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1956
    if-nez p1, :cond_0

    .line 1957
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1959
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->debug_:Ljava/lang/String;

    .line 1960
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1961
    return-object p0
.end method

.method public setFinalScore(F)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1736
    iput p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->finalScore_:F

    .line 1737
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1738
    return-object p0
.end method

.method public setHighConfidenceResponse(Z)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1899
    iput-boolean p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->highConfidenceResponse_:Z

    .line 1900
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1901
    return-object p0
.end method

.method public setImageResponseHeader(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1780
    if-nez p1, :cond_0

    .line 1781
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1783
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponseHeader_:Ljava/lang/String;

    .line 1784
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1785
    return-object p0
.end method

.method public setIsLoggable(Z)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1937
    iput-boolean p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isLoggable_:Z

    .line 1938
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1939
    return-object p0
.end method

.method public setIsQuestion(Z)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1820
    iput-boolean p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isQuestion_:Z

    .line 1821
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1822
    return-object p0
.end method

.method public setOnlyShowPeanutImageResponse(Z)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1918
    iput-boolean p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->onlyShowPeanutImageResponse_:Z

    .line 1919
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1920
    return-object p0
.end method

.method public setPrimaryType(I)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1839
    iput p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->primaryType_:I

    .line 1840
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1841
    return-object p0
.end method

.method public setSearchResultsUnnecessary(Z)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1880
    iput-boolean p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->searchResultsUnnecessary_:Z

    .line 1881
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1882
    return-object p0
.end method

.method public setServerName(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1714
    if-nez p1, :cond_0

    .line 1715
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1717
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->serverName_:Ljava/lang/String;

    .line 1718
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1719
    return-object p0
.end method

.method public setWebSearchType(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Peanut;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1858
    if-nez p1, :cond_0

    .line 1859
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1861
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->webSearchType_:Ljava/lang/String;

    .line 1862
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    .line 1863
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2005
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2006
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->serverName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2008
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 2009
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->confidence_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2011
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->textResponse:Lcom/google/majel/proto/PeanutProtos$Text;

    if-eqz v2, :cond_2

    .line 2012
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->textResponse:Lcom/google/majel/proto/PeanutProtos$Text;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2014
    :cond_2
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse:[Lcom/google/majel/proto/PeanutProtos$Image;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse:[Lcom/google/majel/proto/PeanutProtos$Image;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 2015
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse:[Lcom/google/majel/proto/PeanutProtos$Image;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 2016
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponse:[Lcom/google/majel/proto/PeanutProtos$Image;

    aget-object v0, v2, v1

    .line 2017
    .local v0, "element":Lcom/google/majel/proto/PeanutProtos$Image;
    if-eqz v0, :cond_3

    .line 2018
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2015
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2022
    .end local v0    # "element":Lcom/google/majel/proto/PeanutProtos$Image;
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse:[Lcom/google/majel/proto/PeanutProtos$Url;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse:[Lcom/google/majel/proto/PeanutProtos$Url;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 2023
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse:[Lcom/google/majel/proto/PeanutProtos$Url;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 2024
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->urlResponse:[Lcom/google/majel/proto/PeanutProtos$Url;

    aget-object v0, v2, v1

    .line 2025
    .local v0, "element":Lcom/google/majel/proto/PeanutProtos$Url;
    if-eqz v0, :cond_5

    .line 2026
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2023
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2030
    .end local v0    # "element":Lcom/google/majel/proto/PeanutProtos$Url;
    .end local v1    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse:[Lcom/google/majel/proto/LatLngProtos$LatLng;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse:[Lcom/google/majel/proto/LatLngProtos$LatLng;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 2031
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse:[Lcom/google/majel/proto/LatLngProtos$LatLng;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 2032
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->placeResponse:[Lcom/google/majel/proto/LatLngProtos$LatLng;

    aget-object v0, v2, v1

    .line 2033
    .local v0, "element":Lcom/google/majel/proto/LatLngProtos$LatLng;
    if-eqz v0, :cond_7

    .line 2034
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2031
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2038
    .end local v0    # "element":Lcom/google/majel/proto/LatLngProtos$LatLng;
    .end local v1    # "i":I
    :cond_8
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_9

    .line 2039
    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isQuestion_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2041
    :cond_9
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_a

    .line 2042
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->primaryType_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2044
    :cond_a
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_b

    .line 2045
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->debug_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2047
    :cond_b
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse:[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse:[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    array-length v2, v2

    if-lez v2, :cond_d

    .line 2048
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse:[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    .line 2049
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionResponse:[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    aget-object v0, v2, v1

    .line 2050
    .local v0, "element":Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    if-eqz v0, :cond_c

    .line 2051
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2048
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2055
    .end local v0    # "element":Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .end local v1    # "i":I
    :cond_d
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_e

    .line 2056
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->finalScore_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2058
    :cond_e
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->structuredResponse:Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    if-eqz v2, :cond_f

    .line 2059
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->structuredResponse:Lcom/google/majel/proto/CommonStructuredResponse$StructuredResponse;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2061
    :cond_f
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse:[Lcom/google/majel/proto/PeanutProtos$Video;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse:[Lcom/google/majel/proto/PeanutProtos$Video;

    array-length v2, v2

    if-lez v2, :cond_11

    .line 2062
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse:[Lcom/google/majel/proto/PeanutProtos$Video;

    array-length v2, v2

    if-ge v1, v2, :cond_11

    .line 2063
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->videoResponse:[Lcom/google/majel/proto/PeanutProtos$Video;

    aget-object v0, v2, v1

    .line 2064
    .local v0, "element":Lcom/google/majel/proto/PeanutProtos$Video;
    if-eqz v0, :cond_10

    .line 2065
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2062
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2069
    .end local v0    # "element":Lcom/google/majel/proto/PeanutProtos$Video;
    .end local v1    # "i":I
    :cond_11
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    array-length v2, v2

    if-lez v2, :cond_13

    .line 2070
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    array-length v2, v2

    if-ge v1, v2, :cond_13

    .line 2071
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    aget-object v0, v2, v1

    .line 2072
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    if-eqz v0, :cond_12

    .line 2073
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2070
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2077
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    .end local v1    # "i":I
    :cond_13
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_14

    .line 2078
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->webSearchType_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2080
    :cond_14
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_15

    .line 2081
    const/16 v2, 0x11

    iget-boolean v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->searchResultsUnnecessary_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2083
    :cond_15
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_16

    .line 2084
    const/16 v2, 0x12

    iget-boolean v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->highConfidenceResponse_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2086
    :cond_16
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_17

    .line 2087
    const/16 v2, 0x13

    iget-boolean v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->isLoggable_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2089
    :cond_17
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_18

    .line 2090
    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->onlyShowPeanutImageResponse_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2092
    :cond_18
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_19

    .line 2093
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->imageResponseHeader_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2095
    :cond_19
    return-void
.end method
