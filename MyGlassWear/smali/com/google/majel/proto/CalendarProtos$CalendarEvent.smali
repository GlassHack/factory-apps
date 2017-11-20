.class public final Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "CalendarProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CalendarProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalendarEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;,
        Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent;


# instance fields
.field public attendee:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

.field private bitField0_:I

.field private description_:Ljava/lang/String;

.field public endTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

.field private htmlLink_:Ljava/lang/String;

.field private isAllDay_:Z

.field private location_:Ljava/lang/String;

.field private otherAttendeesExcluded_:Z

.field public reminder:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

.field public startTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

.field private summary_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 823
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 824
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->clear()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    .line 825
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 2

    .prologue
    .line 672
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    if-nez v0, :cond_1

    .line 673
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 675
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    if-nez v0, :cond_0

    .line 676
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    sput-object v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    .line 678
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    :cond_1
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    return-object v0

    .line 678
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1056
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1050
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 828
    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    .line 829
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->htmlLink_:Ljava/lang/String;

    .line 830
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->summary_:Ljava/lang/String;

    .line 831
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->description_:Ljava/lang/String;

    .line 832
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->location_:Ljava/lang/String;

    .line 833
    iput-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->startTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 834
    iput-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->endTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 835
    iput-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->isAllDay_:Z

    .line 836
    invoke-static {}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;->emptyArray()[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    .line 837
    iput-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->otherAttendeesExcluded_:Z

    .line 838
    invoke-static {}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->emptyArray()[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    .line 839
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->cachedSize:I

    .line 840
    return-object p0
.end method

.method public clearDescription()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1

    .prologue
    .line 746
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->description_:Ljava/lang/String;

    .line 747
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    .line 748
    return-object p0
.end method

.method public clearHtmlLink()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1

    .prologue
    .line 702
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->htmlLink_:Ljava/lang/String;

    .line 703
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    .line 704
    return-object p0
.end method

.method public clearIsAllDay()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->isAllDay_:Z

    .line 794
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    .line 795
    return-object p0
.end method

.method public clearLocation()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1

    .prologue
    .line 768
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->location_:Ljava/lang/String;

    .line 769
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    .line 770
    return-object p0
.end method

.method public clearOtherAttendeesExcluded()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1

    .prologue
    .line 815
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->otherAttendeesExcluded_:Z

    .line 816
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    .line 817
    return-object p0
.end method

.method public clearSummary()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1

    .prologue
    .line 724
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->summary_:Ljava/lang/String;

    .line 725
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    .line 726
    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->htmlLink_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAllDay()Z
    .locals 1

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->isAllDay_:Z

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->location_:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherAttendeesExcluded()Z
    .locals 1

    .prologue
    .line 804
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->otherAttendeesExcluded_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 890
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 891
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 892
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->htmlLink_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 895
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 896
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->summary_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 899
    :cond_1
    iget v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 900
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->description_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 903
    :cond_2
    iget v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    .line 904
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->location_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 907
    :cond_3
    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->startTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    if-eqz v3, :cond_4

    .line 908
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->startTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 911
    :cond_4
    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->endTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    if-eqz v3, :cond_5

    .line 912
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->endTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 915
    :cond_5
    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    array-length v3, v3

    if-lez v3, :cond_7

    .line 916
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 917
    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    aget-object v0, v3, v1

    .line 918
    .local v0, "element":Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    if-eqz v0, :cond_6

    .line 919
    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 916
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 924
    .end local v0    # "element":Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .end local v1    # "i":I
    :cond_7
    iget v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_8

    .line 925
    const/16 v3, 0x8

    iget-boolean v4, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->otherAttendeesExcluded_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 928
    :cond_8
    iget v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_9

    .line 929
    const/16 v3, 0x9

    iget-boolean v4, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->isAllDay_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 932
    :cond_9
    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    array-length v3, v3

    if-lez v3, :cond_b

    .line 933
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    array-length v3, v3

    if-ge v1, v3, :cond_b

    .line 934
    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    aget-object v0, v3, v1

    .line 935
    .local v0, "element":Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    if-eqz v0, :cond_a

    .line 936
    const/16 v3, 0xa

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 933
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 941
    .end local v0    # "element":Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    .end local v1    # "i":I
    :cond_b
    iput v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->cachedSize:I

    .line 942
    return v2
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->summary_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 743
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHtmlLink()Z
    .locals 1

    .prologue
    .line 699
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsAllDay()Z
    .locals 1

    .prologue
    .line 790
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocation()Z
    .locals 1

    .prologue
    .line 765
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOtherAttendeesExcluded()Z
    .locals 1

    .prologue
    .line 812
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSummary()Z
    .locals 1

    .prologue
    .line 721
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 244
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 950
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 951
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 955
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 956
    :sswitch_0
    return-object p0

    .line 961
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->htmlLink_:Ljava/lang/String;

    .line 962
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    goto :goto_0

    .line 966
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->summary_:Ljava/lang/String;

    .line 967
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    goto :goto_0

    .line 971
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->description_:Ljava/lang/String;

    .line 972
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    goto :goto_0

    .line 976
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->location_:Ljava/lang/String;

    .line 977
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    goto :goto_0

    .line 981
    :sswitch_5
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->startTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    if-nez v5, :cond_1

    .line 982
    new-instance v5, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-direct {v5}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->startTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 984
    :cond_1
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->startTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 988
    :sswitch_6
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->endTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    if-nez v5, :cond_2

    .line 989
    new-instance v5, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-direct {v5}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->endTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 991
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->endTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 995
    :sswitch_7
    const/16 v5, 0x3a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 997
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    if-nez v5, :cond_4

    move v1, v4

    .line 998
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    .line 1000
    .local v2, "newArray":[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    if-eqz v1, :cond_3

    .line 1001
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1003
    :cond_3
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5

    .line 1004
    new-instance v5, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    invoke-direct {v5}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;-><init>()V

    aput-object v5, v2, v1

    .line 1005
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1006
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1003
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 997
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    :cond_4
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    array-length v1, v5

    goto :goto_1

    .line 1009
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    :cond_5
    new-instance v5, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    invoke-direct {v5}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;-><init>()V

    aput-object v5, v2, v1

    .line 1010
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1011
    iput-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    goto/16 :goto_0

    .line 1015
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->otherAttendeesExcluded_:Z

    .line 1016
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    goto/16 :goto_0

    .line 1020
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->isAllDay_:Z

    .line 1021
    iget v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    goto/16 :goto_0

    .line 1025
    :sswitch_a
    const/16 v5, 0x52

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1027
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    if-nez v5, :cond_7

    move v1, v4

    .line 1028
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    .line 1030
    .local v2, "newArray":[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    if-eqz v1, :cond_6

    .line 1031
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1033
    :cond_6
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_8

    .line 1034
    new-instance v5, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    invoke-direct {v5}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;-><init>()V

    aput-object v5, v2, v1

    .line 1035
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1036
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1033
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1027
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    :cond_7
    iget-object v5, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    array-length v1, v5

    goto :goto_3

    .line 1039
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    :cond_8
    new-instance v5, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    invoke-direct {v5}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;-><init>()V

    aput-object v5, v2, v1

    .line 1040
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1041
    iput-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    goto/16 :goto_0

    .line 951
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
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 735
    if-nez p1, :cond_0

    .line 736
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 738
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->description_:Ljava/lang/String;

    .line 739
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    .line 740
    return-object p0
.end method

.method public setHtmlLink(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 691
    if-nez p1, :cond_0

    .line 692
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 694
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->htmlLink_:Ljava/lang/String;

    .line 695
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    .line 696
    return-object p0
.end method

.method public setIsAllDay(Z)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 785
    iput-boolean p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->isAllDay_:Z

    .line 786
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    .line 787
    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 757
    if-nez p1, :cond_0

    .line 758
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 760
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->location_:Ljava/lang/String;

    .line 761
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    .line 762
    return-object p0
.end method

.method public setOtherAttendeesExcluded(Z)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 807
    iput-boolean p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->otherAttendeesExcluded_:Z

    .line 808
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    .line 809
    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 713
    if-nez p1, :cond_0

    .line 714
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 716
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->summary_:Ljava/lang/String;

    .line 717
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    .line 718
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
    .line 846
    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 847
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->htmlLink_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 849
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 850
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->summary_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 852
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 853
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->description_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 855
    :cond_2
    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 856
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->location_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 858
    :cond_3
    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->startTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    if-eqz v2, :cond_4

    .line 859
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->startTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 861
    :cond_4
    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->endTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    if-eqz v2, :cond_5

    .line 862
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->endTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 864
    :cond_5
    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 865
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 866
    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    aget-object v0, v2, v1

    .line 867
    .local v0, "element":Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    if-eqz v0, :cond_6

    .line 868
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 865
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 872
    .end local v0    # "element":Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .end local v1    # "i":I
    :cond_7
    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_8

    .line 873
    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->otherAttendeesExcluded_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 875
    :cond_8
    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_9

    .line 876
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->isAllDay_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 878
    :cond_9
    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    array-length v2, v2

    if-lez v2, :cond_b

    .line 879
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 880
    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    aget-object v0, v2, v1

    .line 881
    .local v0, "element":Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    if-eqz v0, :cond_a

    .line 882
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 879
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 886
    .end local v0    # "element":Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    .end local v1    # "i":I
    :cond_b
    return-void
.end method
