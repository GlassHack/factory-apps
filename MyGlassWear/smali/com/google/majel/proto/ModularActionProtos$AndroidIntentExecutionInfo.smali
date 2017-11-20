.class public final Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidIntentExecutionInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;


# instance fields
.field private action_:Ljava/lang/String;

.field private bitField0_:I

.field public componentName:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

.field public data:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

.field public extra:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

.field private flags_:I

.field private isLaunchIntent_:Z

.field public pkg:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

.field private shouldStartActivityForResult_:Z

.field private type_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2884
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2885
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->clear()Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    .line 2886
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;
    .locals 2

    .prologue
    .line 2758
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    if-nez v0, :cond_1

    .line 2759
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2761
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    if-nez v0, :cond_0

    .line 2762
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    .line 2764
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2766
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    return-object v0

    .line 2764
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3081
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3075
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2889
    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    .line 2890
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->action_:Ljava/lang/String;

    .line 2891
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->type_:Ljava/lang/String;

    .line 2892
    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->flags_:I

    .line 2893
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->pkg:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    .line 2894
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->data:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    .line 2895
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->componentName:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    .line 2896
    invoke-static {}, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;->emptyArray()[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->extra:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    .line 2897
    iput-boolean v1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->isLaunchIntent_:Z

    .line 2898
    iput-boolean v1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->shouldStartActivityForResult_:Z

    .line 2899
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->cachedSize:I

    .line 2900
    return-object p0
.end method

.method public clearAction()Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;
    .locals 1

    .prologue
    .line 2788
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->action_:Ljava/lang/String;

    .line 2789
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    .line 2790
    return-object p0
.end method

.method public clearFlags()Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;
    .locals 1

    .prologue
    .line 2829
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->flags_:I

    .line 2830
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    .line 2831
    return-object p0
.end method

.method public clearIsLaunchIntent()Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;
    .locals 1

    .prologue
    .line 2860
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->isLaunchIntent_:Z

    .line 2861
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    .line 2862
    return-object p0
.end method

.method public clearShouldStartActivityForResult()Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;
    .locals 1

    .prologue
    .line 2879
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->shouldStartActivityForResult_:Z

    .line 2880
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    .line 2881
    return-object p0
.end method

.method public clearType()Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;
    .locals 1

    .prologue
    .line 2810
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->type_:Ljava/lang/String;

    .line 2811
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    .line 2812
    return-object p0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2774
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->action_:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 2818
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->flags_:I

    return v0
.end method

.method public getIsLaunchIntent()Z
    .locals 1

    .prologue
    .line 2849
    iget-boolean v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->isLaunchIntent_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2942
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 2943
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 2944
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->action_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2947
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 2948
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->flags_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2951
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->pkg:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-eqz v3, :cond_2

    .line 2952
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->pkg:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2955
    :cond_2
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->data:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-eqz v3, :cond_3

    .line 2956
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->data:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2959
    :cond_3
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->extra:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->extra:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    array-length v3, v3

    if-lez v3, :cond_5

    .line 2960
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->extra:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 2961
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->extra:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    aget-object v0, v3, v1

    .line 2962
    .local v0, "element":Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;
    if-eqz v0, :cond_4

    .line 2963
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2960
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2968
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;
    .end local v1    # "i":I
    :cond_5
    iget v3, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 2969
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->type_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2972
    :cond_6
    iget v3, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_7

    .line 2973
    const/4 v3, 0x7

    iget-boolean v4, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->isLaunchIntent_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2976
    :cond_7
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->componentName:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-eqz v3, :cond_8

    .line 2977
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->componentName:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2980
    :cond_8
    iget v3, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_9

    .line 2981
    const/16 v3, 0x9

    iget-boolean v4, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->shouldStartActivityForResult_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2984
    :cond_9
    iput v2, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->cachedSize:I

    .line 2985
    return v2
.end method

.method public getShouldStartActivityForResult()Z
    .locals 1

    .prologue
    .line 2868
    iget-boolean v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->shouldStartActivityForResult_:Z

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2796
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 2785
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFlags()Z
    .locals 1

    .prologue
    .line 2826
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsLaunchIntent()Z
    .locals 1

    .prologue
    .line 2857
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShouldStartActivityForResult()Z
    .locals 1

    .prologue
    .line 2876
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 2807
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

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
    .line 2587
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2993
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2994
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2998
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2999
    :sswitch_0
    return-object p0

    .line 3004
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->action_:Ljava/lang/String;

    .line 3005
    iget v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    goto :goto_0

    .line 3009
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->flags_:I

    .line 3010
    iget v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    goto :goto_0

    .line 3014
    :sswitch_3
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->pkg:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-nez v5, :cond_1

    .line 3015
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->pkg:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    .line 3017
    :cond_1
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->pkg:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3021
    :sswitch_4
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->data:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-nez v5, :cond_2

    .line 3022
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->data:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    .line 3024
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->data:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3028
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3030
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->extra:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    if-nez v5, :cond_4

    move v1, v4

    .line 3031
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    .line 3033
    .local v2, "newArray":[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;
    if-eqz v1, :cond_3

    .line 3034
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->extra:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3036
    :cond_3
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5

    .line 3037
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;-><init>()V

    aput-object v5, v2, v1

    .line 3038
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3039
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3036
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3030
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;
    :cond_4
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->extra:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    array-length v1, v5

    goto :goto_1

    .line 3042
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;
    :cond_5
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;-><init>()V

    aput-object v5, v2, v1

    .line 3043
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3044
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->extra:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    goto/16 :goto_0

    .line 3048
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->type_:Ljava/lang/String;

    .line 3049
    iget v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    goto/16 :goto_0

    .line 3053
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->isLaunchIntent_:Z

    .line 3054
    iget v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    goto/16 :goto_0

    .line 3058
    :sswitch_8
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->componentName:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-nez v5, :cond_6

    .line 3059
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->componentName:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    .line 3061
    :cond_6
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->componentName:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 3065
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->shouldStartActivityForResult_:Z

    .line 3066
    iget v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    goto/16 :goto_0

    .line 2994
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public setAction(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2777
    if-nez p1, :cond_0

    .line 2778
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2780
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->action_:Ljava/lang/String;

    .line 2781
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    .line 2782
    return-object p0
.end method

.method public setFlags(I)Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2821
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->flags_:I

    .line 2822
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    .line 2823
    return-object p0
.end method

.method public setIsLaunchIntent(Z)Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2852
    iput-boolean p1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->isLaunchIntent_:Z

    .line 2853
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    .line 2854
    return-object p0
.end method

.method public setShouldStartActivityForResult(Z)Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2871
    iput-boolean p1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->shouldStartActivityForResult_:Z

    .line 2872
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    .line 2873
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2799
    if-nez p1, :cond_0

    .line 2800
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2802
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->type_:Ljava/lang/String;

    .line 2803
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    .line 2804
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
    .line 2906
    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2907
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->action_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2909
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 2910
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->flags_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2912
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->pkg:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-eqz v2, :cond_2

    .line 2913
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->pkg:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2915
    :cond_2
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->data:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-eqz v2, :cond_3

    .line 2916
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->data:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2918
    :cond_3
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->extra:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->extra:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 2919
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->extra:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 2920
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->extra:[Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;

    aget-object v0, v2, v1

    .line 2921
    .local v0, "element":Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;
    if-eqz v0, :cond_4

    .line 2922
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2919
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2926
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo$Extra;
    .end local v1    # "i":I
    :cond_5
    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 2927
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->type_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2929
    :cond_6
    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_7

    .line 2930
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->isLaunchIntent_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2932
    :cond_7
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->componentName:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    if-eqz v2, :cond_8

    .line 2933
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->componentName:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2935
    :cond_8
    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_9

    .line 2936
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->shouldStartActivityForResult_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2938
    :cond_9
    return-void
.end method
