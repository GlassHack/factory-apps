.class public final Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Logs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/checkin/proto/Logs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidEventProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasTag:Z

.field private hasTimeMsec:Z

.field private hasValue:Z

.field private tag_:Ljava/lang/String;

.field private timeMsec_:J

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 489
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->tag_:Ljava/lang/String;

    .line 506
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->value_:Ljava/lang/String;

    .line 523
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->timeMsec_:J

    .line 564
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->cachedSize:I

    .line 484
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->getSerializedSize()I

    .line 571
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->hasTag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 581
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 582
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 585
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->hasTimeMsec()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 586
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->getTimeMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 589
    :cond_2
    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->cachedSize:I

    .line 590
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->tag_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeMsec()J
    .locals 2

    .prologue
    .line 524
    iget-wide v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->timeMsec_:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasTag()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->hasTag:Z

    return v0
.end method

.method public hasTimeMsec()Z
    .locals 1

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->hasTimeMsec:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->hasValue:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->hasTag:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 547
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 599
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 603
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 604
    :sswitch_0
    return-object p0

    .line 609
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->setTag(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;

    goto :goto_0

    .line 613
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->setValue(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;

    goto :goto_0

    .line 617
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->setTimeMsec(J)Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;

    goto :goto_0

    .line 599
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 481
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;

    move-result-object v0

    return-object v0
.end method

.method public setTag(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->hasTag:Z

    .line 494
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->tag_:Ljava/lang/String;

    .line 495
    return-object p0
.end method

.method public setTimeMsec(J)Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->hasTimeMsec:Z

    .line 528
    iput-wide p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->timeMsec_:J

    .line 529
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->hasValue:Z

    .line 511
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->value_:Ljava/lang/String;

    .line 512
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
    .line 553
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->hasTag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 559
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->hasTimeMsec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->getTimeMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 562
    :cond_2
    return-void
.end method
