.class public final Lcom/google/b/a/gz;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile c:[Lcom/google/b/a/gz;


# instance fields
.field public a:Lcom/google/b/a/gx;

.field public b:[Lcom/google/b/a/dr;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:[B

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1075
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1076
    invoke-direct {p0}, Lcom/google/b/a/gz;->b()Lcom/google/b/a/gz;

    .line 1077
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gz;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1176
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1177
    sparse-switch v0, :sswitch_data_0

    .line 1181
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1182
    :sswitch_0
    return-object p0

    .line 1187
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gz;->e:Ljava/lang/String;

    .line 1188
    iget v0, p0, Lcom/google/b/a/gz;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/gz;->d:I

    goto :goto_0

    .line 1192
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gz;->g:Ljava/lang/String;

    .line 1193
    iget v0, p0, Lcom/google/b/a/gz;->d:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/gz;->d:I

    goto :goto_0

    .line 1197
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gz;->h:[B

    .line 1198
    iget v0, p0, Lcom/google/b/a/gz;->d:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/gz;->d:I

    goto :goto_0

    .line 1202
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gz;->i:Ljava/lang/String;

    .line 1203
    iget v0, p0, Lcom/google/b/a/gz;->d:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/gz;->d:I

    goto :goto_0

    .line 1207
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gz;->j:Ljava/lang/String;

    .line 1208
    iget v0, p0, Lcom/google/b/a/gz;->d:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/b/a/gz;->d:I

    goto :goto_0

    .line 1212
    :sswitch_6
    iget-object v0, p0, Lcom/google/b/a/gz;->a:Lcom/google/b/a/gx;

    if-nez v0, :cond_1

    .line 1213
    new-instance v0, Lcom/google/b/a/gx;

    invoke-direct {v0}, Lcom/google/b/a/gx;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/gz;->a:Lcom/google/b/a/gx;

    .line 1215
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/gz;->a:Lcom/google/b/a/gx;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1219
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gz;->f:Ljava/lang/String;

    .line 1220
    iget v0, p0, Lcom/google/b/a/gz;->d:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/gz;->d:I

    goto :goto_0

    .line 1224
    :sswitch_8
    const/16 v0, 0x42

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1226
    iget-object v0, p0, Lcom/google/b/a/gz;->b:[Lcom/google/b/a/dr;

    if-nez v0, :cond_3

    move v0, v1

    .line 1227
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/dr;

    .line 1229
    if-eqz v0, :cond_2

    .line 1230
    iget-object v3, p0, Lcom/google/b/a/gz;->b:[Lcom/google/b/a/dr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1232
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1233
    new-instance v3, Lcom/google/b/a/dr;

    invoke-direct {v3}, Lcom/google/b/a/dr;-><init>()V

    aput-object v3, v2, v0

    .line 1234
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1235
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1232
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1226
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/gz;->b:[Lcom/google/b/a/dr;

    array-length v0, v0

    goto :goto_1

    .line 1238
    :cond_4
    new-instance v3, Lcom/google/b/a/dr;

    invoke-direct {v3}, Lcom/google/b/a/dr;-><init>()V

    aput-object v3, v2, v0

    .line 1239
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1240
    iput-object v2, p0, Lcom/google/b/a/gz;->b:[Lcom/google/b/a/dr;

    goto/16 :goto_0

    .line 1177
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
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/gz;
    .locals 2

    .prologue
    .line 924
    sget-object v0, Lcom/google/b/a/gz;->c:[Lcom/google/b/a/gz;

    if-nez v0, :cond_1

    .line 925
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 927
    :try_start_0
    sget-object v0, Lcom/google/b/a/gz;->c:[Lcom/google/b/a/gz;

    if-nez v0, :cond_0

    .line 928
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/gz;

    sput-object v0, Lcom/google/b/a/gz;->c:[Lcom/google/b/a/gz;

    .line 930
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 932
    :cond_1
    sget-object v0, Lcom/google/b/a/gz;->c:[Lcom/google/b/a/gz;

    return-object v0

    .line 930
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/gz;
    .locals 1

    .prologue
    .line 1080
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/gz;->d:I

    .line 1081
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gz;->e:Ljava/lang/String;

    .line 1082
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gz;->f:Ljava/lang/String;

    .line 1083
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gz;->g:Ljava/lang/String;

    .line 1084
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/b/a/gz;->h:[B

    .line 1085
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gz;->i:Ljava/lang/String;

    .line 1086
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gz;->j:Ljava/lang/String;

    .line 1087
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/gz;->a:Lcom/google/b/a/gx;

    .line 1088
    invoke-static {}, Lcom/google/b/a/dr;->a()[Lcom/google/b/a/dr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gz;->b:[Lcom/google/b/a/dr;

    .line 1089
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/gz;->cachedSize:I

    .line 1090
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 1129
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1130
    iget v1, p0, Lcom/google/b/a/gz;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1131
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/gz;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1134
    :cond_0
    iget v1, p0, Lcom/google/b/a/gz;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 1135
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/gz;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1138
    :cond_1
    iget v1, p0, Lcom/google/b/a/gz;->d:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 1139
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/gz;->h:[B

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1142
    :cond_2
    iget v1, p0, Lcom/google/b/a/gz;->d:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    .line 1143
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/gz;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1146
    :cond_3
    iget v1, p0, Lcom/google/b/a/gz;->d:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    .line 1147
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/b/a/gz;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1150
    :cond_4
    iget-object v1, p0, Lcom/google/b/a/gz;->a:Lcom/google/b/a/gx;

    if-eqz v1, :cond_5

    .line 1151
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/b/a/gz;->a:Lcom/google/b/a/gx;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1154
    :cond_5
    iget v1, p0, Lcom/google/b/a/gz;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    .line 1155
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/b/a/gz;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1158
    :cond_6
    iget-object v1, p0, Lcom/google/b/a/gz;->b:[Lcom/google/b/a/dr;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/b/a/gz;->b:[Lcom/google/b/a/dr;

    array-length v1, v1

    if-lez v1, :cond_9

    .line 1159
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/gz;->b:[Lcom/google/b/a/dr;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 1160
    iget-object v2, p0, Lcom/google/b/a/gz;->b:[Lcom/google/b/a/dr;

    aget-object v2, v2, v0

    .line 1161
    if-eqz v2, :cond_7

    .line 1162
    const/16 v3, 0x8

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1159
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    move v0, v1

    .line 1167
    :cond_9
    iput v0, p0, Lcom/google/b/a/gz;->cachedSize:I

    .line 1168
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 918
    invoke-direct {p0, p1}, Lcom/google/b/a/gz;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gz;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 1096
    iget v0, p0, Lcom/google/b/a/gz;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1097
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/gz;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1099
    :cond_0
    iget v0, p0, Lcom/google/b/a/gz;->d:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 1100
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/gz;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1102
    :cond_1
    iget v0, p0, Lcom/google/b/a/gz;->d:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 1103
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/gz;->h:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 1105
    :cond_2
    iget v0, p0, Lcom/google/b/a/gz;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 1106
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/gz;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1108
    :cond_3
    iget v0, p0, Lcom/google/b/a/gz;->d:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 1109
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/b/a/gz;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1111
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/gz;->a:Lcom/google/b/a/gx;

    if-eqz v0, :cond_5

    .line 1112
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/b/a/gz;->a:Lcom/google/b/a/gx;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1114
    :cond_5
    iget v0, p0, Lcom/google/b/a/gz;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 1115
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/b/a/gz;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1117
    :cond_6
    iget-object v0, p0, Lcom/google/b/a/gz;->b:[Lcom/google/b/a/dr;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/b/a/gz;->b:[Lcom/google/b/a/dr;

    array-length v0, v0

    if-lez v0, :cond_8

    .line 1118
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/gz;->b:[Lcom/google/b/a/dr;

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 1119
    iget-object v1, p0, Lcom/google/b/a/gz;->b:[Lcom/google/b/a/dr;

    aget-object v1, v1, v0

    .line 1120
    if-eqz v1, :cond_7

    .line 1121
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1118
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1125
    :cond_8
    return-void
.end method
