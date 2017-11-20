.class public final Lcom/google/a/a/a/f;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/a/a/a/h;

.field public b:[Ljava/lang/String;

.field public c:[Lcom/google/a/a/a/g;

.field public d:[Lcom/google/a/a/a/j;

.field public e:[Lcom/google/a/a/a/i;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 910
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 911
    invoke-direct {p0}, Lcom/google/a/a/a/f;->a()Lcom/google/a/a/a/f;

    .line 912
    return-void
.end method

.method private a()Lcom/google/a/a/a/f;
    .locals 1

    .prologue
    .line 915
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/a/a/f;->f:I

    .line 916
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/a/a/f;->a:Lcom/google/a/a/a/h;

    .line 917
    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/f;->g:Ljava/lang/String;

    .line 918
    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/f;->h:Ljava/lang/String;

    .line 919
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/a/a/a/f;->b:[Ljava/lang/String;

    .line 920
    invoke-static {}, Lcom/google/a/a/a/g;->a()[Lcom/google/a/a/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/f;->c:[Lcom/google/a/a/a/g;

    .line 921
    invoke-static {}, Lcom/google/a/a/a/j;->a()[Lcom/google/a/a/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/f;->d:[Lcom/google/a/a/a/j;

    .line 922
    invoke-static {}, Lcom/google/a/a/a/i;->a()[Lcom/google/a/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/f;->e:[Lcom/google/a/a/a/i;

    .line 923
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/f;->cachedSize:I

    .line 924
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/a/a/a/f;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1038
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1039
    sparse-switch v0, :sswitch_data_0

    .line 1043
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1044
    :sswitch_0
    return-object p0

    .line 1049
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/f;->a:Lcom/google/a/a/a/h;

    if-nez v0, :cond_1

    .line 1050
    new-instance v0, Lcom/google/a/a/a/h;

    invoke-direct {v0}, Lcom/google/a/a/a/h;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/f;->a:Lcom/google/a/a/a/h;

    .line 1052
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/f;->a:Lcom/google/a/a/a/h;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1056
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/f;->g:Ljava/lang/String;

    .line 1057
    iget v0, p0, Lcom/google/a/a/a/f;->f:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/a/a/f;->f:I

    goto :goto_0

    .line 1061
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/f;->h:Ljava/lang/String;

    .line 1062
    iget v0, p0, Lcom/google/a/a/a/f;->f:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/a/a/a/f;->f:I

    goto :goto_0

    .line 1066
    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1068
    iget-object v0, p0, Lcom/google/a/a/a/f;->b:[Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    .line 1069
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 1070
    if-eqz v0, :cond_2

    .line 1071
    iget-object v3, p0, Lcom/google/a/a/a/f;->b:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1073
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1074
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1075
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1073
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1068
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/f;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 1078
    :cond_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1079
    iput-object v2, p0, Lcom/google/a/a/a/f;->b:[Ljava/lang/String;

    goto :goto_0

    .line 1083
    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1085
    iget-object v0, p0, Lcom/google/a/a/a/f;->c:[Lcom/google/a/a/a/g;

    if-nez v0, :cond_6

    move v0, v1

    .line 1086
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/g;

    .line 1088
    if-eqz v0, :cond_5

    .line 1089
    iget-object v3, p0, Lcom/google/a/a/a/f;->c:[Lcom/google/a/a/a/g;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1091
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 1092
    new-instance v3, Lcom/google/a/a/a/g;

    invoke-direct {v3}, Lcom/google/a/a/a/g;-><init>()V

    aput-object v3, v2, v0

    .line 1093
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1094
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1091
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1085
    :cond_6
    iget-object v0, p0, Lcom/google/a/a/a/f;->c:[Lcom/google/a/a/a/g;

    array-length v0, v0

    goto :goto_3

    .line 1097
    :cond_7
    new-instance v3, Lcom/google/a/a/a/g;

    invoke-direct {v3}, Lcom/google/a/a/a/g;-><init>()V

    aput-object v3, v2, v0

    .line 1098
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1099
    iput-object v2, p0, Lcom/google/a/a/a/f;->c:[Lcom/google/a/a/a/g;

    goto/16 :goto_0

    .line 1103
    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1105
    iget-object v0, p0, Lcom/google/a/a/a/f;->d:[Lcom/google/a/a/a/j;

    if-nez v0, :cond_9

    move v0, v1

    .line 1106
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/j;

    .line 1108
    if-eqz v0, :cond_8

    .line 1109
    iget-object v3, p0, Lcom/google/a/a/a/f;->d:[Lcom/google/a/a/a/j;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1111
    :cond_8
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    .line 1112
    new-instance v3, Lcom/google/a/a/a/j;

    invoke-direct {v3}, Lcom/google/a/a/a/j;-><init>()V

    aput-object v3, v2, v0

    .line 1113
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1114
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1111
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1105
    :cond_9
    iget-object v0, p0, Lcom/google/a/a/a/f;->d:[Lcom/google/a/a/a/j;

    array-length v0, v0

    goto :goto_5

    .line 1117
    :cond_a
    new-instance v3, Lcom/google/a/a/a/j;

    invoke-direct {v3}, Lcom/google/a/a/a/j;-><init>()V

    aput-object v3, v2, v0

    .line 1118
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1119
    iput-object v2, p0, Lcom/google/a/a/a/f;->d:[Lcom/google/a/a/a/j;

    goto/16 :goto_0

    .line 1123
    :sswitch_7
    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1125
    iget-object v0, p0, Lcom/google/a/a/a/f;->e:[Lcom/google/a/a/a/i;

    if-nez v0, :cond_c

    move v0, v1

    .line 1126
    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/i;

    .line 1128
    if-eqz v0, :cond_b

    .line 1129
    iget-object v3, p0, Lcom/google/a/a/a/f;->e:[Lcom/google/a/a/a/i;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1131
    :cond_b
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d

    .line 1132
    new-instance v3, Lcom/google/a/a/a/i;

    invoke-direct {v3}, Lcom/google/a/a/a/i;-><init>()V

    aput-object v3, v2, v0

    .line 1133
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1134
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1131
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1125
    :cond_c
    iget-object v0, p0, Lcom/google/a/a/a/f;->e:[Lcom/google/a/a/a/i;

    array-length v0, v0

    goto :goto_7

    .line 1137
    :cond_d
    new-instance v3, Lcom/google/a/a/a/i;

    invoke-direct {v3}, Lcom/google/a/a/a/i;-><init>()V

    aput-object v3, v2, v0

    .line 1138
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1139
    iput-object v2, p0, Lcom/google/a/a/a/f;->e:[Lcom/google/a/a/a/i;

    goto/16 :goto_0

    .line 1039
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
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 975
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 976
    iget-object v1, p0, Lcom/google/a/a/a/f;->a:Lcom/google/a/a/a/h;

    if-eqz v1, :cond_0

    .line 977
    const/4 v1, 0x1

    iget-object v3, p0, Lcom/google/a/a/a/f;->a:Lcom/google/a/a/a/h;

    invoke-static {v1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 980
    :cond_0
    iget v1, p0, Lcom/google/a/a/a/f;->f:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 981
    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/a/a/a/f;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 984
    :cond_1
    iget v1, p0, Lcom/google/a/a/a/f;->f:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 985
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/a/a/a/f;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 988
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/f;->b:[Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/a/a/a/f;->b:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v2

    move v3, v2

    move v4, v2

    .line 991
    :goto_0
    iget-object v5, p0, Lcom/google/a/a/a/f;->b:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 992
    iget-object v5, p0, Lcom/google/a/a/a/f;->b:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 993
    if-eqz v5, :cond_3

    .line 994
    add-int/lit8 v4, v4, 0x1

    .line 995
    invoke-static {v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 991
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 999
    :cond_4
    add-int/2addr v0, v3

    .line 1000
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 1002
    :cond_5
    iget-object v1, p0, Lcom/google/a/a/a/f;->c:[Lcom/google/a/a/a/g;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/a/a/a/f;->c:[Lcom/google/a/a/a/g;

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v0

    move v0, v2

    .line 1003
    :goto_1
    iget-object v3, p0, Lcom/google/a/a/a/f;->c:[Lcom/google/a/a/a/g;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 1004
    iget-object v3, p0, Lcom/google/a/a/a/f;->c:[Lcom/google/a/a/a/g;

    aget-object v3, v3, v0

    .line 1005
    if-eqz v3, :cond_6

    .line 1006
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1003
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v1

    .line 1011
    :cond_8
    iget-object v1, p0, Lcom/google/a/a/a/f;->d:[Lcom/google/a/a/a/j;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/a/a/a/f;->d:[Lcom/google/a/a/a/j;

    array-length v1, v1

    if-lez v1, :cond_b

    move v1, v0

    move v0, v2

    .line 1012
    :goto_2
    iget-object v3, p0, Lcom/google/a/a/a/f;->d:[Lcom/google/a/a/a/j;

    array-length v3, v3

    if-ge v0, v3, :cond_a

    .line 1013
    iget-object v3, p0, Lcom/google/a/a/a/f;->d:[Lcom/google/a/a/a/j;

    aget-object v3, v3, v0

    .line 1014
    if-eqz v3, :cond_9

    .line 1015
    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1012
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    move v0, v1

    .line 1020
    :cond_b
    iget-object v1, p0, Lcom/google/a/a/a/f;->e:[Lcom/google/a/a/a/i;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/a/a/a/f;->e:[Lcom/google/a/a/a/i;

    array-length v1, v1

    if-lez v1, :cond_d

    .line 1021
    :goto_3
    iget-object v1, p0, Lcom/google/a/a/a/f;->e:[Lcom/google/a/a/a/i;

    array-length v1, v1

    if-ge v2, v1, :cond_d

    .line 1022
    iget-object v1, p0, Lcom/google/a/a/a/f;->e:[Lcom/google/a/a/a/i;

    aget-object v1, v1, v2

    .line 1023
    if-eqz v1, :cond_c

    .line 1024
    const/4 v3, 0x7

    invoke-static {v3, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1021
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1029
    :cond_d
    iput v0, p0, Lcom/google/a/a/a/f;->cachedSize:I

    .line 1030
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lcom/google/a/a/a/f;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/a/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 930
    iget-object v0, p0, Lcom/google/a/a/a/f;->a:Lcom/google/a/a/a/h;

    if-eqz v0, :cond_0

    .line 931
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/f;->a:Lcom/google/a/a/a/h;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 933
    :cond_0
    iget v0, p0, Lcom/google/a/a/a/f;->f:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 934
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/f;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 936
    :cond_1
    iget v0, p0, Lcom/google/a/a/a/f;->f:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 937
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/f;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 939
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/f;->b:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/a/a/a/f;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 940
    :goto_0
    iget-object v2, p0, Lcom/google/a/a/a/f;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 941
    iget-object v2, p0, Lcom/google/a/a/a/f;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 942
    if-eqz v2, :cond_3

    .line 943
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 940
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 947
    :cond_4
    iget-object v0, p0, Lcom/google/a/a/a/f;->c:[Lcom/google/a/a/a/g;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/a/a/a/f;->c:[Lcom/google/a/a/a/g;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    .line 948
    :goto_1
    iget-object v2, p0, Lcom/google/a/a/a/f;->c:[Lcom/google/a/a/a/g;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 949
    iget-object v2, p0, Lcom/google/a/a/a/f;->c:[Lcom/google/a/a/a/g;

    aget-object v2, v2, v0

    .line 950
    if-eqz v2, :cond_5

    .line 951
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 948
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 955
    :cond_6
    iget-object v0, p0, Lcom/google/a/a/a/f;->d:[Lcom/google/a/a/a/j;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/a/a/a/f;->d:[Lcom/google/a/a/a/j;

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    .line 956
    :goto_2
    iget-object v2, p0, Lcom/google/a/a/a/f;->d:[Lcom/google/a/a/a/j;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 957
    iget-object v2, p0, Lcom/google/a/a/a/f;->d:[Lcom/google/a/a/a/j;

    aget-object v2, v2, v0

    .line 958
    if-eqz v2, :cond_7

    .line 959
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 956
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 963
    :cond_8
    iget-object v0, p0, Lcom/google/a/a/a/f;->e:[Lcom/google/a/a/a/i;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/a/a/a/f;->e:[Lcom/google/a/a/a/i;

    array-length v0, v0

    if-lez v0, :cond_a

    .line 964
    :goto_3
    iget-object v0, p0, Lcom/google/a/a/a/f;->e:[Lcom/google/a/a/a/i;

    array-length v0, v0

    if-ge v1, v0, :cond_a

    .line 965
    iget-object v0, p0, Lcom/google/a/a/a/f;->e:[Lcom/google/a/a/a/i;

    aget-object v0, v0, v1

    .line 966
    if-eqz v0, :cond_9

    .line 967
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 964
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 971
    :cond_a
    return-void
.end method
