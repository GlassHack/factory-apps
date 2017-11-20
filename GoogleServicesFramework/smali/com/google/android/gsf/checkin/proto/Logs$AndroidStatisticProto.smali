.class public final Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Logs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/checkin/proto/Logs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidStatisticProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private count_:I

.field private hasCount:Z

.field private hasSum:Z

.field private hasTag:Z

.field private sum_:F

.field private tag_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 645
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->tag_:Ljava/lang/String;

    .line 662
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->count_:I

    .line 679
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->sum_:F

    .line 720
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->cachedSize:I

    .line 640
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 723
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 725
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->getSerializedSize()I

    .line 727
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->cachedSize:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->count_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 732
    const/4 v0, 0x0

    .line 733
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->hasTag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 737
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->hasCount()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 741
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->hasSum()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 742
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->getSum()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 745
    :cond_2
    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->cachedSize:I

    .line 746
    return v0
.end method

.method public getSum()F
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->sum_:F

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->tag_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCount()Z
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->hasCount:Z

    return v0
.end method

.method public hasSum()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->hasSum:Z

    return v0
.end method

.method public hasTag()Z
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->hasTag:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->hasTag:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 703
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 754
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 755
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 759
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 760
    :sswitch_0
    return-object p0

    .line 765
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->setTag(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;

    goto :goto_0

    .line 769
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->setCount(I)Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;

    goto :goto_0

    .line 773
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->setSum(F)Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;

    goto :goto_0

    .line 755
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1d -> :sswitch_3
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
    .line 637
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;

    move-result-object v0

    return-object v0
.end method

.method public setCount(I)Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->hasCount:Z

    .line 667
    iput p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->count_:I

    .line 668
    return-object p0
.end method

.method public setSum(F)Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->hasSum:Z

    .line 684
    iput p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->sum_:F

    .line 685
    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->hasTag:Z

    .line 650
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->tag_:Ljava/lang/String;

    .line 651
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->hasTag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 712
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 715
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->hasSum()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 716
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->getSum()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 718
    :cond_2
    return-void
.end method
