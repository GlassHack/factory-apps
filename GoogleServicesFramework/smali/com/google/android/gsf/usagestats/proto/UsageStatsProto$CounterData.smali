.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CounterData"
.end annotation


# instance fields
.field private bytes_:J

.field private cachedSize:I

.field private hasBytes:Z

.field private hasPackets:Z

.field private packets_:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 314
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 319
    iput-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->bytes_:J

    .line 336
    iput-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->packets_:J

    .line 372
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->cachedSize:I

    .line 314
    return-void
.end method


# virtual methods
.method public getBytes()J
    .locals 2

    .prologue
    .line 320
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->bytes_:J

    return-wide v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->cachedSize:I

    if-gez v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->getSerializedSize()I

    .line 379
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->cachedSize:I

    return v0
.end method

.method public getPackets()J
    .locals 2

    .prologue
    .line 337
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->packets_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->hasBytes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->getBytes()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->hasPackets()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->getPackets()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 393
    :cond_1
    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->cachedSize:I

    .line 394
    return v0
.end method

.method public hasBytes()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->hasBytes:Z

    return v0
.end method

.method public hasPackets()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->hasPackets:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 403
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 407
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    :sswitch_0
    return-object p0

    .line 413
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->setBytes(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    goto :goto_0

    .line 417
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->setPackets(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    goto :goto_0

    .line 403
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 311
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->hasBytes:Z

    .line 324
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->bytes_:J

    .line 325
    return-object p0
.end method

.method public setPackets(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->hasPackets:Z

    .line 341
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->packets_:J

    .line 342
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
    .line 364
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->hasBytes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->getBytes()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->hasPackets()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->getPackets()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 370
    :cond_1
    return-void
.end method
