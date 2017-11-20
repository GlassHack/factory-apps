.class public final Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;


# instance fields
.field private authToken_:Ljava/lang/String;

.field private bitField0_:I

.field private type_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1190
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1191
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1196
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->type_:Ljava/lang/String;

    .line 1218
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->authToken_:Ljava/lang/String;

    .line 1191
    return-void
.end method


# virtual methods
.method public final clearAuthToken()Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;
    .locals 1

    .prologue
    .line 1234
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->authToken_:Ljava/lang/String;

    .line 1235
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->bitField0_:I

    .line 1236
    return-object p0
.end method

.method public final clearType()Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;
    .locals 1

    .prologue
    .line 1212
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->type_:Ljava/lang/String;

    .line 1213
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->bitField0_:I

    .line 1214
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1241
    if-ne p1, p0, :cond_1

    .line 1246
    :cond_0
    :goto_0
    return v0

    .line 1242
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1243
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    .line 1244
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->type_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->type_:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->authToken_:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->authToken_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1245
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 1246
    goto :goto_0

    .line 1244
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->type_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->type_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->authToken_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->authToken_:Ljava/lang/String;

    .line 1245
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->unknownFieldData:Ljava/util/List;

    .line 1246
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->authToken_:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 1271
    const/4 v0, 0x0

    .line 1272
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1273
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->type_:Ljava/lang/String;

    .line 1274
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1276
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1277
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->authToken_:Ljava/lang/String;

    .line 1278
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1280
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1281
    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->cachedSize:I

    .line 1282
    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public final hasAuthToken()Z
    .locals 1

    .prologue
    .line 1231
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasType()Z
    .locals 1

    .prologue
    .line 1209
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1250
    .line 1251
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->type_:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 1252
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->authToken_:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 1253
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 1254
    return v0

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->type_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 1252
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->authToken_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 1253
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;
    .locals 2

    .prologue
    .line 1290
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1291
    sparse-switch v0, :sswitch_data_0

    .line 1295
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1296
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->unknownFieldData:Ljava/util/List;

    .line 1299
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1301
    :sswitch_0
    return-object p0

    .line 1306
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->type_:Ljava/lang/String;

    .line 1307
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->bitField0_:I

    goto :goto_0

    .line 1311
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->authToken_:Ljava/lang/String;

    .line 1312
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->bitField0_:I

    goto :goto_0

    .line 1291
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1187
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public final parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;
    .locals 1

    .prologue
    .line 1327
    new-instance v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public final parseFrom([B)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;
    .locals 1

    .prologue
    .line 1321
    new-instance v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;

    return-object v0
.end method

.method public final setAuthToken(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;
    .locals 1

    .prologue
    .line 1223
    if-nez p1, :cond_0

    .line 1224
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1226
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->authToken_:Ljava/lang/String;

    .line 1227
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->bitField0_:I

    .line 1228
    return-object p0
.end method

.method public final setType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;
    .locals 1

    .prologue
    .line 1201
    if-nez p1, :cond_0

    .line 1202
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1204
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->type_:Ljava/lang/String;

    .line 1205
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->bitField0_:I

    .line 1206
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1259
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1260
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->type_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1262
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1263
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->authToken_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1265
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$AuthToken;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1267
    return-void
.end method
