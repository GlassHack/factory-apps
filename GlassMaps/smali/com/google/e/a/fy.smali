.class public final Lcom/google/e/a/fy;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/e/a/gc;

.field public b:Lcom/google/e/a/gc;

.field public c:Lcom/google/e/a/gc;

.field public d:[Lcom/google/e/a/fz;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2884
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2885
    invoke-direct {p0}, Lcom/google/e/a/fy;->b()Lcom/google/e/a/fy;

    .line 2886
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/fy;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2993
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2994
    sparse-switch v0, :sswitch_data_0

    .line 2998
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2999
    :sswitch_0
    return-object p0

    .line 3004
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/fy;->f:Ljava/lang/String;

    .line 3005
    iget v0, p0, Lcom/google/e/a/fy;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/fy;->e:I

    goto :goto_0

    .line 3009
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/fy;->h:I

    .line 3010
    iget v0, p0, Lcom/google/e/a/fy;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/fy;->e:I

    goto :goto_0

    .line 3014
    :sswitch_3
    iget-object v0, p0, Lcom/google/e/a/fy;->a:Lcom/google/e/a/gc;

    if-nez v0, :cond_1

    .line 3015
    new-instance v0, Lcom/google/e/a/gc;

    invoke-direct {v0}, Lcom/google/e/a/gc;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/fy;->a:Lcom/google/e/a/gc;

    .line 3017
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/fy;->a:Lcom/google/e/a/gc;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3021
    :sswitch_4
    iget-object v0, p0, Lcom/google/e/a/fy;->b:Lcom/google/e/a/gc;

    if-nez v0, :cond_2

    .line 3022
    new-instance v0, Lcom/google/e/a/gc;

    invoke-direct {v0}, Lcom/google/e/a/gc;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/fy;->b:Lcom/google/e/a/gc;

    .line 3024
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/fy;->b:Lcom/google/e/a/gc;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3028
    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 3030
    iget-object v0, p0, Lcom/google/e/a/fy;->d:[Lcom/google/e/a/fz;

    if-nez v0, :cond_4

    move v0, v1

    .line 3031
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/fz;

    .line 3033
    if-eqz v0, :cond_3

    .line 3034
    iget-object v3, p0, Lcom/google/e/a/fy;->d:[Lcom/google/e/a/fz;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3036
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 3037
    new-instance v3, Lcom/google/e/a/fz;

    invoke-direct {v3}, Lcom/google/e/a/fz;-><init>()V

    aput-object v3, v2, v0

    .line 3038
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3039
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3036
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3030
    :cond_4
    iget-object v0, p0, Lcom/google/e/a/fy;->d:[Lcom/google/e/a/fz;

    array-length v0, v0

    goto :goto_1

    .line 3042
    :cond_5
    new-instance v3, Lcom/google/e/a/fz;

    invoke-direct {v3}, Lcom/google/e/a/fz;-><init>()V

    aput-object v3, v2, v0

    .line 3043
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3044
    iput-object v2, p0, Lcom/google/e/a/fy;->d:[Lcom/google/e/a/fz;

    goto/16 :goto_0

    .line 3048
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/fy;->g:Ljava/lang/String;

    .line 3049
    iget v0, p0, Lcom/google/e/a/fy;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/fy;->e:I

    goto/16 :goto_0

    .line 3053
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/fy;->i:Z

    .line 3054
    iget v0, p0, Lcom/google/e/a/fy;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/fy;->e:I

    goto/16 :goto_0

    .line 3058
    :sswitch_8
    iget-object v0, p0, Lcom/google/e/a/fy;->c:Lcom/google/e/a/gc;

    if-nez v0, :cond_6

    .line 3059
    new-instance v0, Lcom/google/e/a/gc;

    invoke-direct {v0}, Lcom/google/e/a/gc;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/fy;->c:Lcom/google/e/a/gc;

    .line 3061
    :cond_6
    iget-object v0, p0, Lcom/google/e/a/fy;->c:Lcom/google/e/a/gc;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 3065
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/fy;->j:Z

    .line 3066
    iget v0, p0, Lcom/google/e/a/fy;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/fy;->e:I

    goto/16 :goto_0

    .line 2994
    nop

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

.method private b()Lcom/google/e/a/fy;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2889
    iput v1, p0, Lcom/google/e/a/fy;->e:I

    .line 2890
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/fy;->f:Ljava/lang/String;

    .line 2891
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/fy;->g:Ljava/lang/String;

    .line 2892
    iput v1, p0, Lcom/google/e/a/fy;->h:I

    .line 2893
    iput-object v2, p0, Lcom/google/e/a/fy;->a:Lcom/google/e/a/gc;

    .line 2894
    iput-object v2, p0, Lcom/google/e/a/fy;->b:Lcom/google/e/a/gc;

    .line 2895
    iput-object v2, p0, Lcom/google/e/a/fy;->c:Lcom/google/e/a/gc;

    .line 2896
    invoke-static {}, Lcom/google/e/a/fz;->a()[Lcom/google/e/a/fz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/fy;->d:[Lcom/google/e/a/fz;

    .line 2897
    iput-boolean v1, p0, Lcom/google/e/a/fy;->i:Z

    .line 2898
    iput-boolean v1, p0, Lcom/google/e/a/fy;->j:Z

    .line 2899
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/fy;->cachedSize:I

    .line 2900
    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2774
    iget-object v0, p0, Lcom/google/e/a/fy;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 2942
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2943
    iget v1, p0, Lcom/google/e/a/fy;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2944
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/fy;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2947
    :cond_0
    iget v1, p0, Lcom/google/e/a/fy;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 2948
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/e/a/fy;->h:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2951
    :cond_1
    iget-object v1, p0, Lcom/google/e/a/fy;->a:Lcom/google/e/a/gc;

    if-eqz v1, :cond_2

    .line 2952
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/e/a/fy;->a:Lcom/google/e/a/gc;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2955
    :cond_2
    iget-object v1, p0, Lcom/google/e/a/fy;->b:Lcom/google/e/a/gc;

    if-eqz v1, :cond_3

    .line 2956
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/e/a/fy;->b:Lcom/google/e/a/gc;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2959
    :cond_3
    iget-object v1, p0, Lcom/google/e/a/fy;->d:[Lcom/google/e/a/fz;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/e/a/fy;->d:[Lcom/google/e/a/fz;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 2960
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/e/a/fy;->d:[Lcom/google/e/a/fz;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 2961
    iget-object v2, p0, Lcom/google/e/a/fy;->d:[Lcom/google/e/a/fz;

    aget-object v2, v2, v0

    .line 2962
    if-eqz v2, :cond_4

    .line 2963
    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2960
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 2968
    :cond_6
    iget v1, p0, Lcom/google/e/a/fy;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    .line 2969
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/e/a/fy;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2972
    :cond_7
    iget v1, p0, Lcom/google/e/a/fy;->e:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    .line 2973
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/e/a/fy;->i:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2976
    :cond_8
    iget-object v1, p0, Lcom/google/e/a/fy;->c:Lcom/google/e/a/gc;

    if-eqz v1, :cond_9

    .line 2977
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/e/a/fy;->c:Lcom/google/e/a/gc;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2980
    :cond_9
    iget v1, p0, Lcom/google/e/a/fy;->e:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    .line 2981
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/e/a/fy;->j:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2984
    :cond_a
    iput v0, p0, Lcom/google/e/a/fy;->cachedSize:I

    .line 2985
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2587
    invoke-direct {p0, p1}, Lcom/google/e/a/fy;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/fy;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 2906
    iget v0, p0, Lcom/google/e/a/fy;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2907
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/fy;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2909
    :cond_0
    iget v0, p0, Lcom/google/e/a/fy;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 2910
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/e/a/fy;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2912
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/fy;->a:Lcom/google/e/a/gc;

    if-eqz v0, :cond_2

    .line 2913
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/e/a/fy;->a:Lcom/google/e/a/gc;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2915
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/fy;->b:Lcom/google/e/a/gc;

    if-eqz v0, :cond_3

    .line 2916
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/e/a/fy;->b:Lcom/google/e/a/gc;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2918
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/fy;->d:[Lcom/google/e/a/fz;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/e/a/fy;->d:[Lcom/google/e/a/fz;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 2919
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/e/a/fy;->d:[Lcom/google/e/a/fz;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 2920
    iget-object v1, p0, Lcom/google/e/a/fy;->d:[Lcom/google/e/a/fz;

    aget-object v1, v1, v0

    .line 2921
    if-eqz v1, :cond_4

    .line 2922
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2919
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2926
    :cond_5
    iget v0, p0, Lcom/google/e/a/fy;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 2927
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/e/a/fy;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2929
    :cond_6
    iget v0, p0, Lcom/google/e/a/fy;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    .line 2930
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/e/a/fy;->i:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2932
    :cond_7
    iget-object v0, p0, Lcom/google/e/a/fy;->c:Lcom/google/e/a/gc;

    if-eqz v0, :cond_8

    .line 2933
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/e/a/fy;->c:Lcom/google/e/a/gc;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2935
    :cond_8
    iget v0, p0, Lcom/google/e/a/fy;->e:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 2936
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/e/a/fy;->j:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2938
    :cond_9
    return-void
.end method
