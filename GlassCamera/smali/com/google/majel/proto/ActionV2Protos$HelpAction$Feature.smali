.class public final Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$HelpAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;


# instance fields
.field public example:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

.field public headline:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10656
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 10657
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->clear()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    .line 10658
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    .locals 2

    .prologue
    .line 10639
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    if-nez v0, :cond_1

    .line 10640
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 10642
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    if-nez v0, :cond_0

    .line 10643
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    .line 10645
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10647
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    return-object v0

    .line 10645
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10757
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 10751
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    .locals 1

    .prologue
    .line 10661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->headline:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    .line 10662
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    .line 10663
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->cachedSize:I

    .line 10664
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 10685
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 10686
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->headline:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    if-eqz v3, :cond_0

    .line 10687
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->headline:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 10690
    :cond_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 10691
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 10692
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    aget-object v0, v3, v1

    .line 10693
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    if-eqz v0, :cond_1

    .line 10694
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 10691
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10699
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .end local v1    # "i":I
    :cond_2
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->cachedSize:I

    .line 10700
    return v2
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
    .line 10112
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 10708
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 10709
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 10713
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 10714
    :sswitch_0
    return-object p0

    .line 10719
    :sswitch_1
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->headline:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    if-nez v5, :cond_1

    .line 10720
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->headline:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    .line 10722
    :cond_1
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->headline:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10726
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 10728
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    if-nez v5, :cond_3

    move v1, v4

    .line 10729
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    .line 10731
    .local v2, "newArray":[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    if-eqz v1, :cond_2

    .line 10732
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10734
    :cond_2
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 10735
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;-><init>()V

    aput-object v5, v2, v1

    .line 10736
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10737
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 10734
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10728
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    :cond_3
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    array-length v1, v5

    goto :goto_1

    .line 10740
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    :cond_4
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;-><init>()V

    aput-object v5, v2, v1

    .line 10741
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10742
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    goto :goto_0

    .line 10709
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
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
    .line 10670
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->headline:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    if-eqz v2, :cond_0

    .line 10671
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->headline:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10673
    :cond_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 10674
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 10675
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    aget-object v0, v2, v1

    .line 10676
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    if-eqz v0, :cond_1

    .line 10677
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10674
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10681
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
