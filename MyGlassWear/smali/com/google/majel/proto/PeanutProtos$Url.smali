.class public final Lcom/google/majel/proto/PeanutProtos$Url;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "PeanutProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/PeanutProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Url"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/PeanutProtos$Url;


# instance fields
.field private bitField0_:I

.field public cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

.field private displayLink_:Ljava/lang/String;

.field private html_:Ljava/lang/String;

.field private link_:Ljava/lang/String;

.field private renderedLink_:Ljava/lang/String;

.field private renderedPage_:[B

.field public searchResultsInfo:Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1075
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1076
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->clear()Lcom/google/majel/proto/PeanutProtos$Url;

    .line 1077
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 2

    .prologue
    .line 924
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$Url;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$Url;

    if-nez v0, :cond_1

    .line 925
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 927
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$Url;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$Url;

    if-nez v0, :cond_0

    .line 928
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/PeanutProtos$Url;

    sput-object v0, Lcom/google/majel/proto/PeanutProtos$Url;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$Url;

    .line 930
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 932
    :cond_1
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$Url;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$Url;

    return-object v0

    .line 930
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1255
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Url;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Url;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$Url;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$Url;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1249
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Url;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Url;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Url;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1

    .prologue
    .line 1080
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    .line 1081
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->link_:Ljava/lang/String;

    .line 1082
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->displayLink_:Ljava/lang/String;

    .line 1083
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedLink_:Ljava/lang/String;

    .line 1084
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedPage_:[B

    .line 1085
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->title_:Ljava/lang/String;

    .line 1086
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->html_:Ljava/lang/String;

    .line 1087
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->searchResultsInfo:Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    .line 1088
    invoke-static {}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->emptyArray()[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    .line 1089
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cachedSize:I

    .line 1090
    return-object p0
.end method

.method public clearDisplayLink()Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1

    .prologue
    .line 976
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->displayLink_:Ljava/lang/String;

    .line 977
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    .line 978
    return-object p0
.end method

.method public clearHtml()Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1

    .prologue
    .line 1064
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->html_:Ljava/lang/String;

    .line 1065
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    .line 1066
    return-object p0
.end method

.method public clearLink()Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1

    .prologue
    .line 954
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->link_:Ljava/lang/String;

    .line 955
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    .line 956
    return-object p0
.end method

.method public clearRenderedLink()Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1

    .prologue
    .line 998
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedLink_:Ljava/lang/String;

    .line 999
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    .line 1000
    return-object p0
.end method

.method public clearRenderedPage()Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1

    .prologue
    .line 1020
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedPage_:[B

    .line 1021
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    .line 1022
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1

    .prologue
    .line 1042
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->title_:Ljava/lang/String;

    .line 1043
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    .line 1044
    return-object p0
.end method

.method public getDisplayLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->displayLink_:Ljava/lang/String;

    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->html_:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->link_:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderedLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedLink_:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderedPage()[B
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedPage_:[B

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1129
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 1130
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 1131
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Url;->link_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1134
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 1135
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedLink_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1138
    :cond_1
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    .line 1139
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedPage_:[B

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v3

    add-int/2addr v2, v3

    .line 1142
    :cond_2
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_3

    .line 1143
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Url;->title_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1146
    :cond_3
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_4

    .line 1147
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Url;->html_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1150
    :cond_4
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Url;->searchResultsInfo:Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    if-eqz v3, :cond_5

    .line 1151
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Url;->searchResultsInfo:Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1154
    :cond_5
    iget v3, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 1155
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/majel/proto/PeanutProtos$Url;->displayLink_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1158
    :cond_6
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    array-length v3, v3

    if-lez v3, :cond_8

    .line 1159
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    array-length v3, v3

    if-ge v1, v3, :cond_8

    .line 1160
    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    aget-object v0, v3, v1

    .line 1161
    .local v0, "element":Lcom/google/majel/proto/CookieProtos$MajelCookie;
    if-eqz v0, :cond_7

    .line 1162
    const/16 v3, 0x8

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1159
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1167
    .end local v0    # "element":Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .end local v1    # "i":I
    :cond_8
    iput v2, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cachedSize:I

    .line 1168
    return v2
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDisplayLink()Z
    .locals 1

    .prologue
    .line 973
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHtml()Z
    .locals 1

    .prologue
    .line 1061
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLink()Z
    .locals 1

    .prologue
    .line 951
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRenderedLink()Z
    .locals 1

    .prologue
    .line 995
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRenderedPage()Z
    .locals 1

    .prologue
    .line 1017
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

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
    .line 1039
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 918
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/PeanutProtos$Url;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$Url;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1176
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1177
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1181
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1182
    :sswitch_0
    return-object p0

    .line 1187
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->link_:Ljava/lang/String;

    .line 1188
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    goto :goto_0

    .line 1192
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedLink_:Ljava/lang/String;

    .line 1193
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    goto :goto_0

    .line 1197
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedPage_:[B

    .line 1198
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    goto :goto_0

    .line 1202
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->title_:Ljava/lang/String;

    .line 1203
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    goto :goto_0

    .line 1207
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->html_:Ljava/lang/String;

    .line 1208
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    goto :goto_0

    .line 1212
    :sswitch_6
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->searchResultsInfo:Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    if-nez v5, :cond_1

    .line 1213
    new-instance v5, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    invoke-direct {v5}, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->searchResultsInfo:Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    .line 1215
    :cond_1
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->searchResultsInfo:Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1219
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->displayLink_:Ljava/lang/String;

    .line 1220
    iget v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    goto :goto_0

    .line 1224
    :sswitch_8
    const/16 v5, 0x42

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1226
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    if-nez v5, :cond_3

    move v1, v4

    .line 1227
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/CookieProtos$MajelCookie;

    .line 1229
    .local v2, "newArray":[Lcom/google/majel/proto/CookieProtos$MajelCookie;
    if-eqz v1, :cond_2

    .line 1230
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1232
    :cond_2
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 1233
    new-instance v5, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    invoke-direct {v5}, Lcom/google/majel/proto/CookieProtos$MajelCookie;-><init>()V

    aput-object v5, v2, v1

    .line 1234
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1235
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1232
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1226
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/CookieProtos$MajelCookie;
    :cond_3
    iget-object v5, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    array-length v1, v5

    goto :goto_1

    .line 1238
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/CookieProtos$MajelCookie;
    :cond_4
    new-instance v5, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    invoke-direct {v5}, Lcom/google/majel/proto/CookieProtos$MajelCookie;-><init>()V

    aput-object v5, v2, v1

    .line 1239
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1240
    iput-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    goto/16 :goto_0

    .line 1177
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
    .end sparse-switch
.end method

.method public setDisplayLink(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 965
    if-nez p1, :cond_0

    .line 966
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 968
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Url;->displayLink_:Ljava/lang/String;

    .line 969
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    .line 970
    return-object p0
.end method

.method public setHtml(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1053
    if-nez p1, :cond_0

    .line 1054
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1056
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Url;->html_:Ljava/lang/String;

    .line 1057
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    .line 1058
    return-object p0
.end method

.method public setLink(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 943
    if-nez p1, :cond_0

    .line 944
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 946
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Url;->link_:Ljava/lang/String;

    .line 947
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    .line 948
    return-object p0
.end method

.method public setRenderedLink(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 987
    if-nez p1, :cond_0

    .line 988
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 990
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedLink_:Ljava/lang/String;

    .line 991
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    .line 992
    return-object p0
.end method

.method public setRenderedPage([B)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 1009
    if-nez p1, :cond_0

    .line 1010
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1012
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedPage_:[B

    .line 1013
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    .line 1014
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1031
    if-nez p1, :cond_0

    .line 1032
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1034
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Url;->title_:Ljava/lang/String;

    .line 1035
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    .line 1036
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
    .line 1096
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1097
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Url;->link_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1099
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 1100
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedLink_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1102
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 1103
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedPage_:[B

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 1105
    :cond_2
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3

    .line 1106
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Url;->title_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1108
    :cond_3
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_4

    .line 1109
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Url;->html_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1111
    :cond_4
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Url;->searchResultsInfo:Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    if-eqz v2, :cond_5

    .line 1112
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Url;->searchResultsInfo:Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1114
    :cond_5
    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Url;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 1115
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/majel/proto/PeanutProtos$Url;->displayLink_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1117
    :cond_6
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 1118
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 1119
    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    aget-object v0, v2, v1

    .line 1120
    .local v0, "element":Lcom/google/majel/proto/CookieProtos$MajelCookie;
    if-eqz v0, :cond_7

    .line 1121
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1118
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1125
    .end local v0    # "element":Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .end local v1    # "i":I
    :cond_8
    return-void
.end method
