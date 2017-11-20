.class public final Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "YouTubeVideo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;


# instance fields
.field public allowedCountry:[Ljava/lang/String;

.field private bitField0_:I

.field public blockedCountry:[Ljava/lang/String;

.field private duration_:I

.field private id_:Ljava/lang/String;

.field public thumbnail:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

.field private title_:Ljava/lang/String;

.field private watchUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2974
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2975
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->clear()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    .line 2976
    return-void
.end method

.method public static emptyArray()[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 2

    .prologue
    .line 2867
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    if-nez v0, :cond_1

    .line 2868
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2870
    :try_start_0
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    if-nez v0, :cond_0

    .line 2871
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    sput-object v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    .line 2873
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2875
    :cond_1
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    return-object v0

    .line 2873
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3193
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3187
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2979
    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    .line 2980
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->id_:Ljava/lang/String;

    .line 2981
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->watchUrl_:Ljava/lang/String;

    .line 2982
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->title_:Ljava/lang/String;

    .line 2983
    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->duration_:I

    .line 2984
    invoke-static {}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->emptyArray()[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    .line 2985
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry:[Ljava/lang/String;

    .line 2986
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry:[Ljava/lang/String;

    .line 2987
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->cachedSize:I

    .line 2988
    return-object p0
.end method

.method public clearDuration()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1

    .prologue
    .line 2960
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->duration_:I

    .line 2961
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    .line 2962
    return-object p0
.end method

.method public clearId()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1

    .prologue
    .line 2897
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->id_:Ljava/lang/String;

    .line 2898
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    .line 2899
    return-object p0
.end method

.method public clearTitle()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1

    .prologue
    .line 2941
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->title_:Ljava/lang/String;

    .line 2942
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    .line 2943
    return-object p0
.end method

.method public clearWatchUrl()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1

    .prologue
    .line 2919
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->watchUrl_:Ljava/lang/String;

    .line 2920
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    .line 2921
    return-object p0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 2949
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->duration_:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2883
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 3034
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 3035
    .local v4, "size":I
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 3036
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->id_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3039
    :cond_0
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 3040
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->watchUrl_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3043
    :cond_1
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 3044
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->title_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3047
    :cond_2
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    .line 3048
    const/4 v5, 0x4

    iget v6, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->duration_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 3051
    :cond_3
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    array-length v5, v5

    if-lez v5, :cond_5

    .line 3052
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    array-length v5, v5

    if-ge v3, v5, :cond_5

    .line 3053
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    aget-object v2, v5, v3

    .line 3054
    .local v2, "element":Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    if-eqz v2, :cond_4

    .line 3055
    const/4 v5, 0x5

    invoke-static {v5, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3052
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3060
    .end local v2    # "element":Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .end local v3    # "i":I
    :cond_5
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry:[Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_8

    .line 3061
    const/4 v0, 0x0

    .line 3062
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 3063
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_7

    .line 3064
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 3065
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 3066
    add-int/lit8 v0, v0, 0x1

    .line 3067
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 3063
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3071
    .end local v2    # "element":Ljava/lang/String;
    :cond_7
    add-int/2addr v4, v1

    .line 3072
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 3074
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_8
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry:[Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_b

    .line 3075
    const/4 v0, 0x0

    .line 3076
    .restart local v0    # "dataCount":I
    const/4 v1, 0x0

    .line 3077
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_a

    .line 3078
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 3079
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 3080
    add-int/lit8 v0, v0, 0x1

    .line 3081
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 3077
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3085
    .end local v2    # "element":Ljava/lang/String;
    :cond_a
    add-int/2addr v4, v1

    .line 3086
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 3088
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_b
    iput v4, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->cachedSize:I

    .line 3089
    return v4
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2927
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2905
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->watchUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDuration()Z
    .locals 1

    .prologue
    .line 2957
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 2894
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 2938
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWatchUrl()Z
    .locals 1

    .prologue
    .line 2916
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3097
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 3098
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3102
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3103
    :sswitch_0
    return-object p0

    .line 3108
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->id_:Ljava/lang/String;

    .line 3109
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    goto :goto_0

    .line 3113
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->watchUrl_:Ljava/lang/String;

    .line 3114
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    goto :goto_0

    .line 3118
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->title_:Ljava/lang/String;

    .line 3119
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    goto :goto_0

    .line 3123
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->duration_:I

    .line 3124
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    goto :goto_0

    .line 3128
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3130
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    if-nez v5, :cond_2

    move v1, v4

    .line 3131
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    .line 3133
    .local v2, "newArray":[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    if-eqz v1, :cond_1

    .line 3134
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3136
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 3137
    new-instance v5, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    invoke-direct {v5}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;-><init>()V

    aput-object v5, v2, v1

    .line 3138
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3139
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3136
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3130
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    :cond_2
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    array-length v1, v5

    goto :goto_1

    .line 3142
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    :cond_3
    new-instance v5, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    invoke-direct {v5}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;-><init>()V

    aput-object v5, v2, v1

    .line 3143
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3144
    iput-object v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    goto/16 :goto_0

    .line 3148
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    :sswitch_6
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3150
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry:[Ljava/lang/String;

    if-nez v5, :cond_5

    move v1, v4

    .line 3151
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 3152
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 3153
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3155
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 3156
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3157
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3155
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3150
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_3

    .line 3160
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3161
    iput-object v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry:[Ljava/lang/String;

    goto/16 :goto_0

    .line 3165
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_7
    const/16 v5, 0x3a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3167
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry:[Ljava/lang/String;

    if-nez v5, :cond_8

    move v1, v4

    .line 3168
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 3169
    .restart local v2    # "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 3170
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3172
    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    .line 3173
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3174
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3172
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3167
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_5

    .line 3177
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3178
    iput-object v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry:[Ljava/lang/String;

    goto/16 :goto_0

    .line 3098
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
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
    .line 2690
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(I)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2952
    iput p1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->duration_:I

    .line 2953
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    .line 2954
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2886
    if-nez p1, :cond_0

    .line 2887
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2889
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->id_:Ljava/lang/String;

    .line 2890
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    .line 2891
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2930
    if-nez p1, :cond_0

    .line 2931
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2933
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->title_:Ljava/lang/String;

    .line 2934
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    .line 2935
    return-object p0
.end method

.method public setWatchUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2908
    if-nez p1, :cond_0

    .line 2909
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2911
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->watchUrl_:Ljava/lang/String;

    .line 2912
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    .line 2913
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
    .line 2994
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2995
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->id_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2997
    :cond_0
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 2998
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->watchUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3000
    :cond_1
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 3001
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->title_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3003
    :cond_2
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 3004
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->duration_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3006
    :cond_3
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 3007
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 3008
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    aget-object v0, v2, v1

    .line 3009
    .local v0, "element":Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    if-eqz v0, :cond_4

    .line 3010
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3007
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3014
    .end local v0    # "element":Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .end local v1    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry:[Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 3015
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 3016
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 3017
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 3018
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3015
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3022
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry:[Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_9

    .line 3023
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    .line 3024
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 3025
    .restart local v0    # "element":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 3026
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3023
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3030
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_9
    return-void
.end method
