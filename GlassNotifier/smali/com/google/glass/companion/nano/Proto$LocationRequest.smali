.class public final Lcom/google/glass/companion/nano/Proto$LocationRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/nano/Proto$LocationRequest$Priority;,
        Lcom/google/glass/companion/nano/Proto$LocationRequest$RequestType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$LocationRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$LocationRequest;


# instance fields
.field private bitField0_:I

.field private fastestInterval_:J

.field private minDistance_:F

.field private minTime_:J

.field private priority_:I

.field public provider:Ljava/lang/String;

.field private sendLastKnownLocation_:Z

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2931
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2932
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$LocationRequest;->clear()Lcom/google/glass/companion/nano/Proto$LocationRequest;

    .line 2933
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$LocationRequest;
    .locals 2

    .prologue
    .line 2815
    sget-object v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$LocationRequest;

    if-nez v0, :cond_1

    .line 2816
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2818
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$LocationRequest;

    if-nez v0, :cond_0

    .line 2819
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$LocationRequest;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$LocationRequest;

    .line 2821
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2823
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$LocationRequest;

    return-object v0

    .line 2821
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$LocationRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3150
    new-instance v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$LocationRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$LocationRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$LocationRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3144
    new-instance v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$LocationRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$LocationRequest;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 2936
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    .line 2937
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->type:I

    .line 2938
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->provider:Ljava/lang/String;

    .line 2939
    iput-wide v2, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minTime_:J

    .line 2940
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minDistance_:F

    .line 2941
    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->sendLastKnownLocation_:Z

    .line 2942
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->priority_:I

    .line 2943
    iput-wide v2, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->fastestInterval_:J

    .line 2944
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2945
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->cachedSize:I

    .line 2946
    return-object p0
.end method

.method public clearFastestInterval()Lcom/google/glass/companion/nano/Proto$LocationRequest;
    .locals 2

    .prologue
    .line 2919
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->fastestInterval_:J

    .line 2920
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    .line 2921
    return-object p0
.end method

.method public clearMinDistance()Lcom/google/glass/companion/nano/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 2862
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minDistance_:F

    .line 2863
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    .line 2864
    return-object p0
.end method

.method public clearMinTime()Lcom/google/glass/companion/nano/Proto$LocationRequest;
    .locals 2

    .prologue
    .line 2843
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minTime_:J

    .line 2844
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    .line 2845
    return-object p0
.end method

.method public clearPriority()Lcom/google/glass/companion/nano/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 2905
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    .line 2906
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->priority_:I

    .line 2907
    return-object p0
.end method

.method public clearSendLastKnownLocation()Lcom/google/glass/companion/nano/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 2881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->sendLastKnownLocation_:Z

    .line 2882
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    .line 2883
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 3039
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3040
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->type:I

    .line 3041
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3042
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->provider:Ljava/lang/String;

    .line 3043
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3044
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3045
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minTime_:J

    .line 3046
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3048
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3049
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minDistance_:F

    .line 3050
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3052
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3053
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->sendLastKnownLocation_:Z

    .line 3054
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3056
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 3057
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->priority_:I

    .line 3058
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3060
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 3061
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->fastestInterval_:J

    .line 3062
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3064
    :cond_4
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2951
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 2992
    :cond_0
    :goto_0
    return v1

    .line 2954
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$LocationRequest;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 2957
    check-cast v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;

    .line 2958
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$LocationRequest;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->type:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->type:I

    if-ne v3, v4, :cond_0

    .line 2961
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->provider:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 2962
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->provider:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 2968
    :cond_2
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minTime_:J

    iget-wide v6, v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minTime_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 2972
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minDistance_:F

    .line 2973
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minDistance_:F

    .line 2974
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2977
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->sendLastKnownLocation_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->sendLastKnownLocation_:Z

    if-ne v3, v4, :cond_0

    .line 2981
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->priority_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->priority_:I

    if-ne v3, v4, :cond_0

    .line 2985
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->fastestInterval_:J

    iget-wide v6, v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->fastestInterval_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 2989
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2990
    :cond_3
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto/16 :goto_0

    .line 2965
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->provider:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 2992
    :cond_6
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getFastestInterval()J
    .locals 2

    .prologue
    .line 2913
    iget-wide v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->fastestInterval_:J

    return-wide v0
.end method

.method public getMinDistance()F
    .locals 1

    .prologue
    .line 2856
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minDistance_:F

    return v0
.end method

.method public getMinTime()J
    .locals 2

    .prologue
    .line 2837
    iget-wide v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minTime_:J

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 2894
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->priority_:I

    return v0
.end method

.method public getSendLastKnownLocation()Z
    .locals 1

    .prologue
    .line 2875
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->sendLastKnownLocation_:Z

    return v0
.end method

.method public hasFastestInterval()Z
    .locals 1

    .prologue
    .line 2916
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMinDistance()Z
    .locals 1

    .prologue
    .line 2859
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMinTime()Z
    .locals 1

    .prologue
    .line 2840
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 2902
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSendLastKnownLocation()Z
    .locals 1

    .prologue
    .line 2878
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v2, 0x0

    .line 2997
    const/16 v0, 0x11

    .line 2998
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 2999
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->type:I

    add-int v0, v1, v3

    .line 3000
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->provider:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    .line 3001
    :goto_0
    add-int v0, v3, v1

    .line 3002
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minTime_:J

    iget-wide v6, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minTime_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v0, v1, v3

    .line 3003
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minDistance_:F

    .line 3004
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v0, v1, v3

    .line 3005
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->sendLastKnownLocation_:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    :goto_1
    add-int v0, v3, v1

    .line 3006
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->priority_:I

    add-int v0, v1, v3

    .line 3007
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->fastestInterval_:J

    iget-wide v6, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->fastestInterval_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v0, v1, v3

    .line 3008
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3009
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3010
    :cond_0
    :goto_2
    add-int v0, v1, v2

    .line 3011
    return v0

    .line 3001
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->provider:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 3005
    :cond_2
    const/16 v1, 0x4d5

    goto :goto_1

    .line 3010
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$LocationRequest;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3072
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 3073
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 3077
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3078
    :sswitch_0
    return-object p0

    .line 3083
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 3084
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 3085
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 3091
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 3092
    invoke-virtual {p0, p1, v1}, Lcom/google/glass/companion/nano/Proto$LocationRequest;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 3088
    :pswitch_0
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->type:I

    goto :goto_0

    .line 3098
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->provider:Ljava/lang/String;

    goto :goto_0

    .line 3102
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minTime_:J

    .line 3103
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    goto :goto_0

    .line 3107
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minDistance_:F

    .line 3108
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    goto :goto_0

    .line 3112
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->sendLastKnownLocation_:Z

    .line 3113
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    goto :goto_0

    .line 3117
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 3118
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 3119
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_1

    .line 3127
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 3128
    invoke-virtual {p0, p1, v1}, Lcom/google/glass/companion/nano/Proto$LocationRequest;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 3123
    :pswitch_1
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->priority_:I

    .line 3124
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    goto :goto_0

    .line 3134
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->fastestInterval_:J

    .line 3135
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    goto :goto_0

    .line 3073
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch

    .line 3085
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3119
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2796
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$LocationRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public setFastestInterval(J)Lcom/google/glass/companion/nano/Proto$LocationRequest;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2924
    iput-wide p1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->fastestInterval_:J

    .line 2925
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    .line 2926
    return-object p0
.end method

.method public setMinDistance(F)Lcom/google/glass/companion/nano/Proto$LocationRequest;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 2867
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minDistance_:F

    .line 2868
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    .line 2869
    return-object p0
.end method

.method public setMinTime(J)Lcom/google/glass/companion/nano/Proto$LocationRequest;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2848
    iput-wide p1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minTime_:J

    .line 2849
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    .line 2850
    return-object p0
.end method

.method public setPriority(I)Lcom/google/glass/companion/nano/Proto$LocationRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2897
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->priority_:I

    .line 2898
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    .line 2899
    return-object p0
.end method

.method public setSendLastKnownLocation(Z)Lcom/google/glass/companion/nano/Proto$LocationRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2886
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->sendLastKnownLocation_:Z

    .line 2887
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    .line 2888
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3017
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3018
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3019
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3020
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minTime_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3022
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3023
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->minDistance_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3025
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3026
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->sendLastKnownLocation_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3028
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3029
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->priority_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3031
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3032
    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$LocationRequest;->fastestInterval_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3034
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3035
    return-void
.end method
