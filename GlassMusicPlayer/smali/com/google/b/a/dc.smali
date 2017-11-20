.class public final Lcom/google/b/a/dc;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:F

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:F

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:F

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1124
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1125
    invoke-direct {p0}, Lcom/google/b/a/dc;->a()Lcom/google/b/a/dc;

    .line 1126
    return-void
.end method

.method private a()Lcom/google/b/a/dc;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1129
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/dc;->a:I

    .line 1130
    iput v1, p0, Lcom/google/b/a/dc;->b:F

    .line 1131
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/dc;->c:Ljava/lang/String;

    .line 1132
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/dc;->d:Ljava/lang/String;

    .line 1133
    iput v1, p0, Lcom/google/b/a/dc;->e:F

    .line 1134
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/dc;->f:Ljava/lang/String;

    .line 1135
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/dc;->g:Ljava/lang/String;

    .line 1136
    iput v1, p0, Lcom/google/b/a/dc;->h:F

    .line 1137
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/dc;->i:Ljava/lang/String;

    .line 1138
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/dc;->j:Ljava/lang/String;

    .line 1139
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/dc;->k:Ljava/lang/String;

    .line 1140
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/dc;->cachedSize:I

    .line 1141
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/dc;
    .locals 1

    .prologue
    .line 1231
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1232
    sparse-switch v0, :sswitch_data_0

    .line 1236
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1237
    :sswitch_0
    return-object p0

    .line 1242
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/b/a/dc;->b:F

    .line 1243
    iget v0, p0, Lcom/google/b/a/dc;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/dc;->a:I

    goto :goto_0

    .line 1247
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dc;->c:Ljava/lang/String;

    .line 1248
    iget v0, p0, Lcom/google/b/a/dc;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/dc;->a:I

    goto :goto_0

    .line 1252
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/b/a/dc;->e:F

    .line 1253
    iget v0, p0, Lcom/google/b/a/dc;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/dc;->a:I

    goto :goto_0

    .line 1257
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dc;->f:Ljava/lang/String;

    .line 1258
    iget v0, p0, Lcom/google/b/a/dc;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/dc;->a:I

    goto :goto_0

    .line 1262
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/b/a/dc;->h:F

    .line 1263
    iget v0, p0, Lcom/google/b/a/dc;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/b/a/dc;->a:I

    goto :goto_0

    .line 1267
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dc;->d:Ljava/lang/String;

    .line 1268
    iget v0, p0, Lcom/google/b/a/dc;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/dc;->a:I

    goto :goto_0

    .line 1272
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dc;->g:Ljava/lang/String;

    .line 1273
    iget v0, p0, Lcom/google/b/a/dc;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/b/a/dc;->a:I

    goto :goto_0

    .line 1277
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dc;->k:Ljava/lang/String;

    .line 1278
    iget v0, p0, Lcom/google/b/a/dc;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/b/a/dc;->a:I

    goto :goto_0

    .line 1282
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dc;->i:Ljava/lang/String;

    .line 1283
    iget v0, p0, Lcom/google/b/a/dc;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/b/a/dc;->a:I

    goto/16 :goto_0

    .line 1287
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dc;->j:Ljava/lang/String;

    .line 1288
    iget v0, p0, Lcom/google/b/a/dc;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/b/a/dc;->a:I

    goto/16 :goto_0

    .line 1232
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x12 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x2d -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 1181
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1182
    iget v1, p0, Lcom/google/b/a/dc;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1183
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/b/a/dc;->b:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1186
    :cond_0
    iget v1, p0, Lcom/google/b/a/dc;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1187
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/dc;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1190
    :cond_1
    iget v1, p0, Lcom/google/b/a/dc;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 1191
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/b/a/dc;->e:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1194
    :cond_2
    iget v1, p0, Lcom/google/b/a/dc;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    .line 1195
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/dc;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1198
    :cond_3
    iget v1, p0, Lcom/google/b/a/dc;->a:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4

    .line 1199
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/b/a/dc;->h:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1202
    :cond_4
    iget v1, p0, Lcom/google/b/a/dc;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 1203
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/b/a/dc;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1206
    :cond_5
    iget v1, p0, Lcom/google/b/a/dc;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 1207
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/b/a/dc;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1210
    :cond_6
    iget v1, p0, Lcom/google/b/a/dc;->a:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_7

    .line 1211
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/b/a/dc;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1214
    :cond_7
    iget v1, p0, Lcom/google/b/a/dc;->a:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    .line 1215
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/b/a/dc;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1218
    :cond_8
    iget v1, p0, Lcom/google/b/a/dc;->a:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_9

    .line 1219
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/b/a/dc;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1222
    :cond_9
    iput v0, p0, Lcom/google/b/a/dc;->cachedSize:I

    .line 1223
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 894
    invoke-direct {p0, p1}, Lcom/google/b/a/dc;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/dc;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1147
    iget v0, p0, Lcom/google/b/a/dc;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1148
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/dc;->b:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1150
    :cond_0
    iget v0, p0, Lcom/google/b/a/dc;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1151
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/dc;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1153
    :cond_1
    iget v0, p0, Lcom/google/b/a/dc;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 1154
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/b/a/dc;->e:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1156
    :cond_2
    iget v0, p0, Lcom/google/b/a/dc;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 1157
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/dc;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1159
    :cond_3
    iget v0, p0, Lcom/google/b/a/dc;->a:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    .line 1160
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/b/a/dc;->h:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1162
    :cond_4
    iget v0, p0, Lcom/google/b/a/dc;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 1163
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/b/a/dc;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1165
    :cond_5
    iget v0, p0, Lcom/google/b/a/dc;->a:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 1166
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/b/a/dc;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1168
    :cond_6
    iget v0, p0, Lcom/google/b/a/dc;->a:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    .line 1169
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/b/a/dc;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1171
    :cond_7
    iget v0, p0, Lcom/google/b/a/dc;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 1172
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/b/a/dc;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1174
    :cond_8
    iget v0, p0, Lcom/google/b/a/dc;->a:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    .line 1175
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/b/a/dc;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1177
    :cond_9
    return-void
.end method
