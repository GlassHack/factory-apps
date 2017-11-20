.class public final Lcom/google/b/a/cr;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/b/a/cq;

.field public b:Lcom/google/b/a/cq;

.field public c:[Lcom/google/b/a/cs;

.field public d:[Lcom/google/b/a/ct;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 823
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 824
    invoke-direct {p0}, Lcom/google/b/a/cr;->a()Lcom/google/b/a/cr;

    .line 825
    return-void
.end method

.method private a()Lcom/google/b/a/cr;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 828
    iput v1, p0, Lcom/google/b/a/cr;->e:I

    .line 829
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/cr;->f:Ljava/lang/String;

    .line 830
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/cr;->g:Ljava/lang/String;

    .line 831
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/cr;->h:Ljava/lang/String;

    .line 832
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/cr;->i:Ljava/lang/String;

    .line 833
    iput-object v2, p0, Lcom/google/b/a/cr;->a:Lcom/google/b/a/cq;

    .line 834
    iput-object v2, p0, Lcom/google/b/a/cr;->b:Lcom/google/b/a/cq;

    .line 835
    iput-boolean v1, p0, Lcom/google/b/a/cr;->j:Z

    .line 836
    invoke-static {}, Lcom/google/b/a/cs;->a()[Lcom/google/b/a/cs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/cr;->c:[Lcom/google/b/a/cs;

    .line 837
    iput-boolean v1, p0, Lcom/google/b/a/cr;->k:Z

    .line 838
    invoke-static {}, Lcom/google/b/a/ct;->a()[Lcom/google/b/a/ct;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/cr;->d:[Lcom/google/b/a/ct;

    .line 839
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/cr;->cachedSize:I

    .line 840
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/cr;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 950
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 951
    sparse-switch v0, :sswitch_data_0

    .line 955
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 956
    :sswitch_0
    return-object p0

    .line 961
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/cr;->f:Ljava/lang/String;

    .line 962
    iget v0, p0, Lcom/google/b/a/cr;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/cr;->e:I

    goto :goto_0

    .line 966
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/cr;->g:Ljava/lang/String;

    .line 967
    iget v0, p0, Lcom/google/b/a/cr;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/cr;->e:I

    goto :goto_0

    .line 971
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/cr;->h:Ljava/lang/String;

    .line 972
    iget v0, p0, Lcom/google/b/a/cr;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/cr;->e:I

    goto :goto_0

    .line 976
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/cr;->i:Ljava/lang/String;

    .line 977
    iget v0, p0, Lcom/google/b/a/cr;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/cr;->e:I

    goto :goto_0

    .line 981
    :sswitch_5
    iget-object v0, p0, Lcom/google/b/a/cr;->a:Lcom/google/b/a/cq;

    if-nez v0, :cond_1

    .line 982
    new-instance v0, Lcom/google/b/a/cq;

    invoke-direct {v0}, Lcom/google/b/a/cq;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/cr;->a:Lcom/google/b/a/cq;

    .line 984
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/cr;->a:Lcom/google/b/a/cq;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 988
    :sswitch_6
    iget-object v0, p0, Lcom/google/b/a/cr;->b:Lcom/google/b/a/cq;

    if-nez v0, :cond_2

    .line 989
    new-instance v0, Lcom/google/b/a/cq;

    invoke-direct {v0}, Lcom/google/b/a/cq;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/cr;->b:Lcom/google/b/a/cq;

    .line 991
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/cr;->b:Lcom/google/b/a/cq;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 995
    :sswitch_7
    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 997
    iget-object v0, p0, Lcom/google/b/a/cr;->c:[Lcom/google/b/a/cs;

    if-nez v0, :cond_4

    move v0, v1

    .line 998
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/cs;

    .line 1000
    if-eqz v0, :cond_3

    .line 1001
    iget-object v3, p0, Lcom/google/b/a/cr;->c:[Lcom/google/b/a/cs;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1003
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 1004
    new-instance v3, Lcom/google/b/a/cs;

    invoke-direct {v3}, Lcom/google/b/a/cs;-><init>()V

    aput-object v3, v2, v0

    .line 1005
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1006
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1003
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 997
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/cr;->c:[Lcom/google/b/a/cs;

    array-length v0, v0

    goto :goto_1

    .line 1009
    :cond_5
    new-instance v3, Lcom/google/b/a/cs;

    invoke-direct {v3}, Lcom/google/b/a/cs;-><init>()V

    aput-object v3, v2, v0

    .line 1010
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1011
    iput-object v2, p0, Lcom/google/b/a/cr;->c:[Lcom/google/b/a/cs;

    goto/16 :goto_0

    .line 1015
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/cr;->k:Z

    .line 1016
    iget v0, p0, Lcom/google/b/a/cr;->e:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/b/a/cr;->e:I

    goto/16 :goto_0

    .line 1020
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/cr;->j:Z

    .line 1021
    iget v0, p0, Lcom/google/b/a/cr;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/cr;->e:I

    goto/16 :goto_0

    .line 1025
    :sswitch_a
    const/16 v0, 0x52

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1027
    iget-object v0, p0, Lcom/google/b/a/cr;->d:[Lcom/google/b/a/ct;

    if-nez v0, :cond_7

    move v0, v1

    .line 1028
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/ct;

    .line 1030
    if-eqz v0, :cond_6

    .line 1031
    iget-object v3, p0, Lcom/google/b/a/cr;->d:[Lcom/google/b/a/ct;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1033
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 1034
    new-instance v3, Lcom/google/b/a/ct;

    invoke-direct {v3}, Lcom/google/b/a/ct;-><init>()V

    aput-object v3, v2, v0

    .line 1035
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1036
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1033
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1027
    :cond_7
    iget-object v0, p0, Lcom/google/b/a/cr;->d:[Lcom/google/b/a/ct;

    array-length v0, v0

    goto :goto_3

    .line 1039
    :cond_8
    new-instance v3, Lcom/google/b/a/ct;

    invoke-direct {v3}, Lcom/google/b/a/ct;-><init>()V

    aput-object v3, v2, v0

    .line 1040
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1041
    iput-object v2, p0, Lcom/google/b/a/cr;->d:[Lcom/google/b/a/ct;

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


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 890
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 891
    iget v2, p0, Lcom/google/b/a/cr;->e:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 892
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/b/a/cr;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 895
    :cond_0
    iget v2, p0, Lcom/google/b/a/cr;->e:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 896
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/b/a/cr;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 899
    :cond_1
    iget v2, p0, Lcom/google/b/a/cr;->e:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 900
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/b/a/cr;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 903
    :cond_2
    iget v2, p0, Lcom/google/b/a/cr;->e:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 904
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/b/a/cr;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 907
    :cond_3
    iget-object v2, p0, Lcom/google/b/a/cr;->a:Lcom/google/b/a/cq;

    if-eqz v2, :cond_4

    .line 908
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/b/a/cr;->a:Lcom/google/b/a/cq;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 911
    :cond_4
    iget-object v2, p0, Lcom/google/b/a/cr;->b:Lcom/google/b/a/cq;

    if-eqz v2, :cond_5

    .line 912
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/b/a/cr;->b:Lcom/google/b/a/cq;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 915
    :cond_5
    iget-object v2, p0, Lcom/google/b/a/cr;->c:[Lcom/google/b/a/cs;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/b/a/cr;->c:[Lcom/google/b/a/cs;

    array-length v2, v2

    if-lez v2, :cond_8

    move v2, v0

    move v0, v1

    .line 916
    :goto_0
    iget-object v3, p0, Lcom/google/b/a/cr;->c:[Lcom/google/b/a/cs;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 917
    iget-object v3, p0, Lcom/google/b/a/cr;->c:[Lcom/google/b/a/cs;

    aget-object v3, v3, v0

    .line 918
    if-eqz v3, :cond_6

    .line 919
    const/4 v4, 0x7

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 916
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    move v0, v2

    .line 924
    :cond_8
    iget v2, p0, Lcom/google/b/a/cr;->e:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_9

    .line 925
    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/google/b/a/cr;->k:Z

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 928
    :cond_9
    iget v2, p0, Lcom/google/b/a/cr;->e:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_a

    .line 929
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/b/a/cr;->j:Z

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 932
    :cond_a
    iget-object v2, p0, Lcom/google/b/a/cr;->d:[Lcom/google/b/a/ct;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/b/a/cr;->d:[Lcom/google/b/a/ct;

    array-length v2, v2

    if-lez v2, :cond_c

    .line 933
    :goto_1
    iget-object v2, p0, Lcom/google/b/a/cr;->d:[Lcom/google/b/a/ct;

    array-length v2, v2

    if-ge v1, v2, :cond_c

    .line 934
    iget-object v2, p0, Lcom/google/b/a/cr;->d:[Lcom/google/b/a/ct;

    aget-object v2, v2, v1

    .line 935
    if-eqz v2, :cond_b

    .line 936
    const/16 v3, 0xa

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 933
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 941
    :cond_c
    iput v0, p0, Lcom/google/b/a/cr;->cachedSize:I

    .line 942
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/google/b/a/cr;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/cr;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 846
    iget v0, p0, Lcom/google/b/a/cr;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 847
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/b/a/cr;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 849
    :cond_0
    iget v0, p0, Lcom/google/b/a/cr;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 850
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/b/a/cr;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 852
    :cond_1
    iget v0, p0, Lcom/google/b/a/cr;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 853
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/b/a/cr;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 855
    :cond_2
    iget v0, p0, Lcom/google/b/a/cr;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 856
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/b/a/cr;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 858
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/cr;->a:Lcom/google/b/a/cq;

    if-eqz v0, :cond_4

    .line 859
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/b/a/cr;->a:Lcom/google/b/a/cq;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 861
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/cr;->b:Lcom/google/b/a/cq;

    if-eqz v0, :cond_5

    .line 862
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/b/a/cr;->b:Lcom/google/b/a/cq;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 864
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/cr;->c:[Lcom/google/b/a/cs;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/b/a/cr;->c:[Lcom/google/b/a/cs;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 865
    :goto_0
    iget-object v2, p0, Lcom/google/b/a/cr;->c:[Lcom/google/b/a/cs;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 866
    iget-object v2, p0, Lcom/google/b/a/cr;->c:[Lcom/google/b/a/cs;

    aget-object v2, v2, v0

    .line 867
    if-eqz v2, :cond_6

    .line 868
    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 865
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 872
    :cond_7
    iget v0, p0, Lcom/google/b/a/cr;->e:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 873
    const/16 v0, 0x8

    iget-boolean v2, p0, Lcom/google/b/a/cr;->k:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 875
    :cond_8
    iget v0, p0, Lcom/google/b/a/cr;->e:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 876
    const/16 v0, 0x9

    iget-boolean v2, p0, Lcom/google/b/a/cr;->j:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 878
    :cond_9
    iget-object v0, p0, Lcom/google/b/a/cr;->d:[Lcom/google/b/a/ct;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/b/a/cr;->d:[Lcom/google/b/a/ct;

    array-length v0, v0

    if-lez v0, :cond_b

    .line 879
    :goto_1
    iget-object v0, p0, Lcom/google/b/a/cr;->d:[Lcom/google/b/a/ct;

    array-length v0, v0

    if-ge v1, v0, :cond_b

    .line 880
    iget-object v0, p0, Lcom/google/b/a/cr;->d:[Lcom/google/b/a/ct;

    aget-object v0, v0, v1

    .line 881
    if-eqz v0, :cond_a

    .line 882
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 879
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 886
    :cond_b
    return-void
.end method
