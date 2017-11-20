.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PayloadLevelAppStat"
.end annotation


# instance fields
.field private applicationTag_:I

.field private cachedSize:I

.field private hasApplicationTag:Z

.field private hasPackageKey:Z

.field private packageKey_:I

.field private payloadLevelAppBucket_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1047
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1052
    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->packageKey_:I

    .line 1069
    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->applicationTag_:I

    .line 1085
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->payloadLevelAppBucket_:Ljava/util/List;

    .line 1143
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->cachedSize:I

    .line 1047
    return-void
.end method


# virtual methods
.method public addPayloadLevelAppBucket(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    .prologue
    .line 1102
    if-nez p1, :cond_0

    .line 1103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->payloadLevelAppBucket_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->payloadLevelAppBucket_:Ljava/util/List;

    .line 1108
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->payloadLevelAppBucket_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1109
    return-object p0
.end method

.method public getApplicationTag()I
    .locals 1

    .prologue
    .line 1070
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->applicationTag_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1146
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->cachedSize:I

    if-gez v0, :cond_0

    .line 1148
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->getSerializedSize()I

    .line 1150
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->cachedSize:I

    return v0
.end method

.method public getPackageKey()I
    .locals 1

    .prologue
    .line 1053
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->packageKey_:I

    return v0
.end method

.method public getPayloadLevelAppBucketList()Ljava/util/List;
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
    .line 1088
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->payloadLevelAppBucket_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1155
    const/4 v2, 0x0

    .line 1156
    .local v2, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->hasPackageKey()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1157
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->getPackageKey()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1160
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->hasApplicationTag()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1161
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->getApplicationTag()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1164
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->getPayloadLevelAppBucketList()Ljava/util/List;

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

    .line 1165
    .local v0, "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1168
    .end local v0    # "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    :cond_2
    iput v2, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->cachedSize:I

    .line 1169
    return v2
.end method

.method public hasApplicationTag()Z
    .locals 1

    .prologue
    .line 1071
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->hasApplicationTag:Z

    return v0
.end method

.method public hasPackageKey()Z
    .locals 1

    .prologue
    .line 1054
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->hasPackageKey:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1177
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1178
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1182
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1183
    :sswitch_0
    return-object p0

    .line 1188
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->setPackageKey(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;

    goto :goto_0

    .line 1192
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->setApplicationTag(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;

    goto :goto_0

    .line 1196
    :sswitch_3
    new-instance v1, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    invoke-direct {v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;-><init>()V

    .line 1197
    .local v1, "value":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1198
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->addPayloadLevelAppBucket(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;

    goto :goto_0

    .line 1178
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
    .line 1044
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;

    move-result-object v0

    return-object v0
.end method

.method public setApplicationTag(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->hasApplicationTag:Z

    .line 1074
    iput p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->applicationTag_:I

    .line 1075
    return-object p0
.end method

.method public setPackageKey(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1056
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->hasPackageKey:Z

    .line 1057
    iput p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->packageKey_:I

    .line 1058
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
    .line 1132
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->hasPackageKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1133
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->getPackageKey()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1135
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->hasApplicationTag()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1136
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->getApplicationTag()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1138
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->getPayloadLevelAppBucketList()Ljava/util/List;

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

    .line 1139
    .local v0, "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1141
    .end local v0    # "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    :cond_2
    return-void
.end method
