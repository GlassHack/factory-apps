.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidUsageStatsReport"
.end annotation


# instance fields
.field private androidId_:J

.field private cachedSize:I

.field private hasAndroidId:Z

.field private hasLoggingId:Z

.field private hasUsageStats:Z

.field private loggingId_:J

.field private usageStats_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 2009
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2014
    iput-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->androidId_:J

    .line 2031
    iput-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->loggingId_:J

    .line 2048
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->usageStats_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    .line 2094
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->cachedSize:I

    .line 2009
    return-void
.end method


# virtual methods
.method public getAndroidId()J
    .locals 2

    .prologue
    .line 2015
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->androidId_:J

    return-wide v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2097
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->cachedSize:I

    if-gez v0, :cond_0

    .line 2099
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->getSerializedSize()I

    .line 2101
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->cachedSize:I

    return v0
.end method

.method public getLoggingId()J
    .locals 2

    .prologue
    .line 2032
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->loggingId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2106
    const/4 v0, 0x0

    .line 2107
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasAndroidId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2108
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->getAndroidId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2111
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasLoggingId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2112
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->getLoggingId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2115
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasUsageStats()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2116
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->getUsageStats()Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2119
    :cond_2
    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->cachedSize:I

    .line 2120
    return v0
.end method

.method public getUsageStats()Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;
    .locals 1

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->usageStats_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    return-object v0
.end method

.method public hasAndroidId()Z
    .locals 1

    .prologue
    .line 2016
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasAndroidId:Z

    return v0
.end method

.method public hasLoggingId()Z
    .locals 1

    .prologue
    .line 2033
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasLoggingId:Z

    return v0
.end method

.method public hasUsageStats()Z
    .locals 1

    .prologue
    .line 2049
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasUsageStats:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2128
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2129
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2133
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2134
    :sswitch_0
    return-object p0

    .line 2139
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->setAndroidId(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;

    goto :goto_0

    .line 2143
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->setLoggingId(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;

    goto :goto_0

    .line 2147
    :sswitch_3
    new-instance v1, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    invoke-direct {v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;-><init>()V

    .line 2148
    .local v1, "value":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2149
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->setUsageStats(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;

    goto :goto_0

    .line 2129
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
    .line 2006
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;

    move-result-object v0

    return-object v0
.end method

.method public setAndroidId(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2018
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasAndroidId:Z

    .line 2019
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->androidId_:J

    .line 2020
    return-object p0
.end method

.method public setLoggingId(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2035
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasLoggingId:Z

    .line 2036
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->loggingId_:J

    .line 2037
    return-object p0
.end method

.method public setUsageStats(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    .prologue
    .line 2052
    if-nez p1, :cond_0

    .line 2053
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2055
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasUsageStats:Z

    .line 2056
    iput-object p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->usageStats_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    .line 2057
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2083
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasAndroidId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2084
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->getAndroidId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2086
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasLoggingId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2087
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->getLoggingId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2089
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->hasUsageStats()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2090
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->getUsageStats()Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2092
    :cond_2
    return-void
.end method
