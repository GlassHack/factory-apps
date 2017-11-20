.class public final Lcom/google/b/a/fi;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/b/a/fh;

.field public b:Lcom/google/b/a/fj;

.field public c:[Lcom/google/b/a/dy;

.field public d:Lcom/google/b/a/ek;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1129
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1130
    invoke-direct {p0}, Lcom/google/b/a/fi;->a()Lcom/google/b/a/fi;

    .line 1131
    return-void
.end method

.method private a()Lcom/google/b/a/fi;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1134
    iput v2, p0, Lcom/google/b/a/fi;->e:I

    .line 1135
    iput-object v1, p0, Lcom/google/b/a/fi;->a:Lcom/google/b/a/fh;

    .line 1136
    iput-object v1, p0, Lcom/google/b/a/fi;->b:Lcom/google/b/a/fj;

    .line 1137
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fi;->f:Ljava/lang/String;

    .line 1138
    invoke-static {}, Lcom/google/b/a/dy;->a()[Lcom/google/b/a/dy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fi;->c:[Lcom/google/b/a/dy;

    .line 1139
    iput-object v1, p0, Lcom/google/b/a/fi;->d:Lcom/google/b/a/ek;

    .line 1140
    iput-boolean v2, p0, Lcom/google/b/a/fi;->g:Z

    .line 1141
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/fi;->cachedSize:I

    .line 1142
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/fi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1214
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1215
    sparse-switch v0, :sswitch_data_0

    .line 1219
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1220
    :sswitch_0
    return-object p0

    .line 1225
    :sswitch_1
    iget-object v0, p0, Lcom/google/b/a/fi;->a:Lcom/google/b/a/fh;

    if-nez v0, :cond_1

    .line 1226
    new-instance v0, Lcom/google/b/a/fh;

    invoke-direct {v0}, Lcom/google/b/a/fh;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/fi;->a:Lcom/google/b/a/fh;

    .line 1228
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/fi;->a:Lcom/google/b/a/fh;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1232
    :sswitch_2
    iget-object v0, p0, Lcom/google/b/a/fi;->b:Lcom/google/b/a/fj;

    if-nez v0, :cond_2

    .line 1233
    new-instance v0, Lcom/google/b/a/fj;

    invoke-direct {v0}, Lcom/google/b/a/fj;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/fi;->b:Lcom/google/b/a/fj;

    .line 1235
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/fi;->b:Lcom/google/b/a/fj;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1239
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fi;->f:Ljava/lang/String;

    .line 1240
    iget v0, p0, Lcom/google/b/a/fi;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/fi;->e:I

    goto :goto_0

    .line 1244
    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1246
    iget-object v0, p0, Lcom/google/b/a/fi;->c:[Lcom/google/b/a/dy;

    if-nez v0, :cond_4

    move v0, v1

    .line 1247
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/dy;

    .line 1249
    if-eqz v0, :cond_3

    .line 1250
    iget-object v3, p0, Lcom/google/b/a/fi;->c:[Lcom/google/b/a/dy;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1252
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 1253
    new-instance v3, Lcom/google/b/a/dy;

    invoke-direct {v3}, Lcom/google/b/a/dy;-><init>()V

    aput-object v3, v2, v0

    .line 1254
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1255
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1252
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1246
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/fi;->c:[Lcom/google/b/a/dy;

    array-length v0, v0

    goto :goto_1

    .line 1258
    :cond_5
    new-instance v3, Lcom/google/b/a/dy;

    invoke-direct {v3}, Lcom/google/b/a/dy;-><init>()V

    aput-object v3, v2, v0

    .line 1259
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1260
    iput-object v2, p0, Lcom/google/b/a/fi;->c:[Lcom/google/b/a/dy;

    goto :goto_0

    .line 1264
    :sswitch_5
    iget-object v0, p0, Lcom/google/b/a/fi;->d:Lcom/google/b/a/ek;

    if-nez v0, :cond_6

    .line 1265
    new-instance v0, Lcom/google/b/a/ek;

    invoke-direct {v0}, Lcom/google/b/a/ek;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/fi;->d:Lcom/google/b/a/ek;

    .line 1267
    :cond_6
    iget-object v0, p0, Lcom/google/b/a/fi;->d:Lcom/google/b/a/ek;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1271
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/fi;->g:Z

    .line 1272
    iget v0, p0, Lcom/google/b/a/fi;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/fi;->e:I

    goto/16 :goto_0

    .line 1215
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 1175
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1176
    iget-object v1, p0, Lcom/google/b/a/fi;->a:Lcom/google/b/a/fh;

    if-eqz v1, :cond_0

    .line 1177
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/fi;->a:Lcom/google/b/a/fh;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1180
    :cond_0
    iget-object v1, p0, Lcom/google/b/a/fi;->b:Lcom/google/b/a/fj;

    if-eqz v1, :cond_1

    .line 1181
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/fi;->b:Lcom/google/b/a/fj;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1184
    :cond_1
    iget v1, p0, Lcom/google/b/a/fi;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 1185
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/fi;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1188
    :cond_2
    iget-object v1, p0, Lcom/google/b/a/fi;->c:[Lcom/google/b/a/dy;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/b/a/fi;->c:[Lcom/google/b/a/dy;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 1189
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/fi;->c:[Lcom/google/b/a/dy;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 1190
    iget-object v2, p0, Lcom/google/b/a/fi;->c:[Lcom/google/b/a/dy;

    aget-object v2, v2, v0

    .line 1191
    if-eqz v2, :cond_3

    .line 1192
    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1189
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1197
    :cond_5
    iget-object v1, p0, Lcom/google/b/a/fi;->d:Lcom/google/b/a/ek;

    if-eqz v1, :cond_6

    .line 1198
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/b/a/fi;->d:Lcom/google/b/a/ek;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1201
    :cond_6
    iget v1, p0, Lcom/google/b/a/fi;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    .line 1202
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/b/a/fi;->g:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1205
    :cond_7
    iput v0, p0, Lcom/google/b/a/fi;->cachedSize:I

    .line 1206
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1057
    invoke-direct {p0, p1}, Lcom/google/b/a/fi;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/google/b/a/fi;->a:Lcom/google/b/a/fh;

    if-eqz v0, :cond_0

    .line 1149
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/fi;->a:Lcom/google/b/a/fh;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/google/b/a/fi;->b:Lcom/google/b/a/fj;

    if-eqz v0, :cond_1

    .line 1152
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/fi;->b:Lcom/google/b/a/fj;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1154
    :cond_1
    iget v0, p0, Lcom/google/b/a/fi;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1155
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/fi;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1157
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/fi;->c:[Lcom/google/b/a/dy;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/b/a/fi;->c:[Lcom/google/b/a/dy;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1158
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/fi;->c:[Lcom/google/b/a/dy;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 1159
    iget-object v1, p0, Lcom/google/b/a/fi;->c:[Lcom/google/b/a/dy;

    aget-object v1, v1, v0

    .line 1160
    if-eqz v1, :cond_3

    .line 1161
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1158
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1165
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/fi;->d:Lcom/google/b/a/ek;

    if-eqz v0, :cond_5

    .line 1166
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/b/a/fi;->d:Lcom/google/b/a/ek;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1168
    :cond_5
    iget v0, p0, Lcom/google/b/a/fi;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 1169
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/b/a/fi;->g:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1171
    :cond_6
    return-void
.end method
