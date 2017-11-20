.class public final La/a/f;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static final a:[La/a/f;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:D

.field private j:La/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 843
    const/4 v0, 0x0

    new-array v0, v0, [La/a/f;

    sput-object v0, La/a/f;->a:[La/a/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 844
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 857
    iput v0, p0, La/a/f;->c:I

    .line 876
    iput v0, p0, La/a/f;->d:I

    .line 895
    iput v0, p0, La/a/f;->e:I

    .line 914
    iput v0, p0, La/a/f;->f:I

    .line 933
    iput v0, p0, La/a/f;->g:I

    .line 952
    iput v0, p0, La/a/f;->h:I

    .line 971
    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/a/f;->i:D

    .line 844
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)La/a/f;
    .locals 2

    .prologue
    .line 1108
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1109
    sparse-switch v0, :sswitch_data_0

    .line 1113
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1114
    :sswitch_0
    return-object p0

    .line 1119
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 1120
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1125
    :cond_1
    iput v0, p0, La/a/f;->c:I

    .line 1129
    :goto_1
    iget v0, p0, La/a/f;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/f;->b:I

    goto :goto_0

    .line 1127
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, La/a/f;->c:I

    goto :goto_1

    .line 1133
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, La/a/f;->d:I

    .line 1134
    iget v0, p0, La/a/f;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, La/a/f;->b:I

    goto :goto_0

    .line 1138
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, La/a/f;->e:I

    .line 1139
    iget v0, p0, La/a/f;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, La/a/f;->b:I

    goto :goto_0

    .line 1143
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, La/a/f;->f:I

    .line 1144
    iget v0, p0, La/a/f;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, La/a/f;->b:I

    goto :goto_0

    .line 1148
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, La/a/f;->g:I

    .line 1149
    iget v0, p0, La/a/f;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, La/a/f;->b:I

    goto :goto_0

    .line 1153
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, La/a/f;->h:I

    .line 1154
    iget v0, p0, La/a/f;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, La/a/f;->b:I

    goto :goto_0

    .line 1158
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, La/a/f;->i:D

    .line 1159
    iget v0, p0, La/a/f;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, La/a/f;->b:I

    goto :goto_0

    .line 1163
    :sswitch_8
    iget-object v0, p0, La/a/f;->j:La/a/c;

    if-nez v0, :cond_3

    .line 1164
    new-instance v0, La/a/c;

    invoke-direct {v0}, La/a/c;-><init>()V

    iput-object v0, p0, La/a/f;->j:La/a/c;

    .line 1166
    :cond_3
    iget-object v0, p0, La/a/f;->j:La/a/c;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1109
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x39 -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1010
    if-ne p1, p0, :cond_1

    .line 1013
    :cond_0
    :goto_0
    return v0

    .line 1011
    :cond_1
    instance-of v2, p1, La/a/f;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1012
    :cond_2
    check-cast p1, La/a/f;

    .line 1013
    iget v2, p0, La/a/f;->c:I

    iget v3, p1, La/a/f;->c:I

    if-ne v2, v3, :cond_3

    iget v2, p0, La/a/f;->d:I

    iget v3, p1, La/a/f;->d:I

    if-ne v2, v3, :cond_3

    iget v2, p0, La/a/f;->e:I

    iget v3, p1, La/a/f;->e:I

    if-ne v2, v3, :cond_3

    iget v2, p0, La/a/f;->f:I

    iget v3, p1, La/a/f;->f:I

    if-ne v2, v3, :cond_3

    iget v2, p0, La/a/f;->g:I

    iget v3, p1, La/a/f;->g:I

    if-ne v2, v3, :cond_3

    iget v2, p0, La/a/f;->h:I

    iget v3, p1, La/a/f;->h:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, La/a/f;->i:D

    iget-wide v4, p1, La/a/f;->i:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, La/a/f;->j:La/a/c;

    if-nez v2, :cond_4

    iget-object v2, p1, La/a/f;->j:La/a/c;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, La/a/f;->j:La/a/c;

    iget-object v3, p1, La/a/f;->j:La/a/c;

    invoke-virtual {v2, v3}, La/a/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 1066
    const/4 v0, 0x0

    .line 1067
    iget v1, p0, La/a/f;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1068
    const/4 v1, 0x1

    iget v2, p0, La/a/f;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1071
    :cond_0
    iget v1, p0, La/a/f;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1072
    const/4 v1, 0x2

    iget v2, p0, La/a/f;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1075
    :cond_1
    iget v1, p0, La/a/f;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1076
    const/4 v1, 0x3

    iget v2, p0, La/a/f;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1079
    :cond_2
    iget v1, p0, La/a/f;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1080
    const/4 v1, 0x4

    iget v2, p0, La/a/f;->f:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1083
    :cond_3
    iget v1, p0, La/a/f;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1084
    const/4 v1, 0x5

    iget v2, p0, La/a/f;->g:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1087
    :cond_4
    iget v1, p0, La/a/f;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 1088
    const/4 v1, 0x6

    iget v2, p0, La/a/f;->h:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1091
    :cond_5
    iget v1, p0, La/a/f;->b:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 1092
    const/4 v1, 0x7

    iget-wide v2, p0, La/a/f;->i:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1095
    :cond_6
    iget-object v1, p0, La/a/f;->j:La/a/c;

    if-eqz v1, :cond_7

    .line 1096
    const/16 v1, 0x8

    iget-object v2, p0, La/a/f;->j:La/a/c;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1099
    :cond_7
    iput v0, p0, La/a/f;->cachedSize:I

    .line 1100
    return v0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    .line 1024
    .line 1025
    iget v0, p0, La/a/f;->c:I

    add-int/lit16 v0, v0, 0x20f

    .line 1026
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/a/f;->d:I

    add-int/2addr v0, v1

    .line 1027
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/a/f;->e:I

    add-int/2addr v0, v1

    .line 1028
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/a/f;->f:I

    add-int/2addr v0, v1

    .line 1029
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/a/f;->g:I

    add-int/2addr v0, v1

    .line 1030
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/a/f;->h:I

    add-int/2addr v0, v1

    .line 1031
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, La/a/f;->i:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    iget-wide v3, p0, La/a/f;->i:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 1032
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, La/a/f;->j:La/a/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 1033
    return v0

    .line 1032
    :cond_0
    iget-object v0, p0, La/a/f;->j:La/a/c;

    invoke-virtual {v0}, La/a/c;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 840
    invoke-direct {p0, p1}, La/a/f;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)La/a/f;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 1038
    iget v0, p0, La/a/f;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1039
    const/4 v0, 0x1

    iget v1, p0, La/a/f;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1041
    :cond_0
    iget v0, p0, La/a/f;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1042
    const/4 v0, 0x2

    iget v1, p0, La/a/f;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1044
    :cond_1
    iget v0, p0, La/a/f;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1045
    const/4 v0, 0x3

    iget v1, p0, La/a/f;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1047
    :cond_2
    iget v0, p0, La/a/f;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1048
    const/4 v0, 0x4

    iget v1, p0, La/a/f;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1050
    :cond_3
    iget v0, p0, La/a/f;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1051
    const/4 v0, 0x5

    iget v1, p0, La/a/f;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1053
    :cond_4
    iget v0, p0, La/a/f;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 1054
    const/4 v0, 0x6

    iget v1, p0, La/a/f;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1056
    :cond_5
    iget v0, p0, La/a/f;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 1057
    const/4 v0, 0x7

    iget-wide v1, p0, La/a/f;->i:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1059
    :cond_6
    iget-object v0, p0, La/a/f;->j:La/a/c;

    if-eqz v0, :cond_7

    .line 1060
    const/16 v0, 0x8

    iget-object v1, p0, La/a/f;->j:La/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1062
    :cond_7
    return-void
.end method
