.class public final Lcom/google/e/a/ej;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/e/a/ei;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2916
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2917
    invoke-direct {p0}, Lcom/google/e/a/ej;->a()Lcom/google/e/a/ej;

    .line 2918
    return-void
.end method

.method private a()Lcom/google/e/a/ej;
    .locals 1

    .prologue
    .line 2921
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/ej;->b:I

    .line 2922
    invoke-static {}, Lcom/google/e/a/ei;->a()[Lcom/google/e/a/ei;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ej;->a:[Lcom/google/e/a/ei;

    .line 2923
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ej;->c:Ljava/lang/String;

    .line 2924
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ej;->d:Ljava/lang/String;

    .line 2925
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ej;->e:Ljava/lang/String;

    .line 2926
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ej;->f:Ljava/lang/String;

    .line 2927
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ej;->g:Ljava/lang/String;

    .line 2928
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/ej;->cachedSize:I

    .line 2929
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ej;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3001
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3002
    sparse-switch v0, :sswitch_data_0

    .line 3006
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3007
    :sswitch_0
    return-object p0

    .line 3012
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 3014
    iget-object v0, p0, Lcom/google/e/a/ej;->a:[Lcom/google/e/a/ei;

    if-nez v0, :cond_2

    move v0, v1

    .line 3015
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/ei;

    .line 3017
    if-eqz v0, :cond_1

    .line 3018
    iget-object v3, p0, Lcom/google/e/a/ej;->a:[Lcom/google/e/a/ei;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3020
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 3021
    new-instance v3, Lcom/google/e/a/ei;

    invoke-direct {v3}, Lcom/google/e/a/ei;-><init>()V

    aput-object v3, v2, v0

    .line 3022
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3023
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3020
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3014
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/ej;->a:[Lcom/google/e/a/ei;

    array-length v0, v0

    goto :goto_1

    .line 3026
    :cond_3
    new-instance v3, Lcom/google/e/a/ei;

    invoke-direct {v3}, Lcom/google/e/a/ei;-><init>()V

    aput-object v3, v2, v0

    .line 3027
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3028
    iput-object v2, p0, Lcom/google/e/a/ej;->a:[Lcom/google/e/a/ei;

    goto :goto_0

    .line 3032
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ej;->c:Ljava/lang/String;

    .line 3033
    iget v0, p0, Lcom/google/e/a/ej;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/ej;->b:I

    goto :goto_0

    .line 3037
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ej;->d:Ljava/lang/String;

    .line 3038
    iget v0, p0, Lcom/google/e/a/ej;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/ej;->b:I

    goto :goto_0

    .line 3042
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ej;->e:Ljava/lang/String;

    .line 3043
    iget v0, p0, Lcom/google/e/a/ej;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/ej;->b:I

    goto :goto_0

    .line 3047
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ej;->f:Ljava/lang/String;

    .line 3048
    iget v0, p0, Lcom/google/e/a/ej;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/ej;->b:I

    goto :goto_0

    .line 3052
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ej;->g:Ljava/lang/String;

    .line 3053
    iget v0, p0, Lcom/google/e/a/ej;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/ej;->b:I

    goto/16 :goto_0

    .line 3002
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 2962
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 2963
    iget-object v0, p0, Lcom/google/e/a/ej;->a:[Lcom/google/e/a/ei;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/e/a/ej;->a:[Lcom/google/e/a/ei;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 2964
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/e/a/ej;->a:[Lcom/google/e/a/ei;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2965
    iget-object v2, p0, Lcom/google/e/a/ej;->a:[Lcom/google/e/a/ei;

    aget-object v2, v2, v0

    .line 2966
    if-eqz v2, :cond_0

    .line 2967
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2964
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2972
    :cond_1
    iget v0, p0, Lcom/google/e/a/ej;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 2973
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/e/a/ej;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 2976
    :cond_2
    iget v0, p0, Lcom/google/e/a/ej;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 2977
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/e/a/ej;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 2980
    :cond_3
    iget v0, p0, Lcom/google/e/a/ej;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 2981
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/e/a/ej;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 2984
    :cond_4
    iget v0, p0, Lcom/google/e/a/ej;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 2985
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/e/a/ej;->f:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 2988
    :cond_5
    iget v0, p0, Lcom/google/e/a/ej;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 2989
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/e/a/ej;->g:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 2992
    :cond_6
    iput v1, p0, Lcom/google/e/a/ej;->cachedSize:I

    .line 2993
    return v1
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2784
    invoke-direct {p0, p1}, Lcom/google/e/a/ej;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ej;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 2935
    iget-object v0, p0, Lcom/google/e/a/ej;->a:[Lcom/google/e/a/ei;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/e/a/ej;->a:[Lcom/google/e/a/ei;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 2936
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/e/a/ej;->a:[Lcom/google/e/a/ei;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2937
    iget-object v1, p0, Lcom/google/e/a/ej;->a:[Lcom/google/e/a/ei;

    aget-object v1, v1, v0

    .line 2938
    if-eqz v1, :cond_0

    .line 2939
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2936
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2943
    :cond_1
    iget v0, p0, Lcom/google/e/a/ej;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 2944
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/ej;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2946
    :cond_2
    iget v0, p0, Lcom/google/e/a/ej;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 2947
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/e/a/ej;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2949
    :cond_3
    iget v0, p0, Lcom/google/e/a/ej;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 2950
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/e/a/ej;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2952
    :cond_4
    iget v0, p0, Lcom/google/e/a/ej;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 2953
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/e/a/ej;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2955
    :cond_5
    iget v0, p0, Lcom/google/e/a/ej;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 2956
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/e/a/ej;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2958
    :cond_6
    return-void
.end method
