.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpLayerAppStat"
.end annotation


# instance fields
.field private applicationTag_:I

.field private cachedSize:I

.field private hasApplicationTag:Z

.field private hasPackageKey:Z

.field private ipLayerAppBucket_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;",
            ">;"
        }
    .end annotation
.end field

.field private packageKey_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1221
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1226
    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->packageKey_:I

    .line 1243
    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->applicationTag_:I

    .line 1259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->ipLayerAppBucket_:Ljava/util/List;

    .line 1317
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->cachedSize:I

    .line 1221
    return-void
.end method


# virtual methods
.method public addIpLayerAppBucket(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    .prologue
    .line 1276
    if-nez p1, :cond_0

    .line 1277
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1279
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->ipLayerAppBucket_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->ipLayerAppBucket_:Ljava/util/List;

    .line 1282
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->ipLayerAppBucket_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1283
    return-object p0
.end method

.method public getApplicationTag()I
    .locals 1

    .prologue
    .line 1244
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->applicationTag_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1320
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->cachedSize:I

    if-gez v0, :cond_0

    .line 1322
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->getSerializedSize()I

    .line 1324
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->cachedSize:I

    return v0
.end method

.method public getIpLayerAppBucketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->ipLayerAppBucket_:Ljava/util/List;

    return-object v0
.end method

.method public getPackageKey()I
    .locals 1

    .prologue
    .line 1227
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->packageKey_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1329
    const/4 v2, 0x0

    .line 1330
    .local v2, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->hasPackageKey()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1331
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->getPackageKey()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1334
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->hasApplicationTag()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1335
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->getApplicationTag()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1338
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->getIpLayerAppBucketList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    .line 1339
    .local v0, "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1342
    .end local v0    # "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    :cond_2
    iput v2, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->cachedSize:I

    .line 1343
    return v2
.end method

.method public hasApplicationTag()Z
    .locals 1

    .prologue
    .line 1245
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->hasApplicationTag:Z

    return v0
.end method

.method public hasPackageKey()Z
    .locals 1

    .prologue
    .line 1228
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->hasPackageKey:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1351
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1352
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1356
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1357
    :sswitch_0
    return-object p0

    .line 1362
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->setPackageKey(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    goto :goto_0

    .line 1366
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->setApplicationTag(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    goto :goto_0

    .line 1370
    :sswitch_3
    new-instance v1, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    invoke-direct {v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;-><init>()V

    .line 1371
    .local v1, "value":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1372
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->addIpLayerAppBucket(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    goto :goto_0

    .line 1352
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1218
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    move-result-object v0

    return-object v0
.end method

.method public setApplicationTag(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->hasApplicationTag:Z

    .line 1248
    iput p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->applicationTag_:I

    .line 1249
    return-object p0
.end method

.method public setPackageKey(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->hasPackageKey:Z

    .line 1231
    iput p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->packageKey_:I

    .line 1232
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->hasPackageKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1307
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->getPackageKey()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1309
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->hasApplicationTag()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1310
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->getApplicationTag()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1312
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->getIpLayerAppBucketList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    .line 1313
    .local v0, "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1315
    .end local v0    # "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    :cond_2
    return-void
.end method
