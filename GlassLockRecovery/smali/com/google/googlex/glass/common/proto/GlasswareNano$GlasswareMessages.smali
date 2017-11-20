.class public final Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "GlasswareNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/GlasswareNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlasswareMessages"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;

.field private static final LOCALE_DEFAULT:Ljava/lang/String; = "en_US"


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/String;

.field private locale_:Ljava/lang/String;

.field private moreInfoTitle_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private permissions_:Ljava/lang/String;

.field private shortDescription_:Ljava/lang/String;

.field private speakableName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 16
    const-string v0, "en_US"

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->locale_:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->name_:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->description_:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->shortDescription_:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->permissions_:Ljava/lang/String;

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->speakableName_:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;

    return-object v0
.end method


# virtual methods
.method public clearDescription()Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
    .locals 1

    .prologue
    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->description_:Ljava/lang/String;

    .line 77
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    .line 78
    return-object p0
.end method

.method public clearLocale()Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
    .locals 1

    .prologue
    .line 32
    const-string v0, "en_US"

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->locale_:Ljava/lang/String;

    .line 33
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    .line 34
    return-object p0
.end method

.method public clearMoreInfoTitle()Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
    .locals 1

    .prologue
    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    .line 121
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    .line 122
    return-object p0
.end method

.method public clearName()Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
    .locals 1

    .prologue
    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->name_:Ljava/lang/String;

    .line 55
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    .line 56
    return-object p0
.end method

.method public clearPermissions()Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
    .locals 1

    .prologue
    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->permissions_:Ljava/lang/String;

    .line 143
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    .line 144
    return-object p0
.end method

.method public clearShortDescription()Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
    .locals 1

    .prologue
    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->shortDescription_:Ljava/lang/String;

    .line 99
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    .line 100
    return-object p0
.end method

.method public clearSpeakableName()Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
    .locals 1

    .prologue
    .line 164
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->speakableName_:Ljava/lang/String;

    .line 165
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    .line 166
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    if-ne p1, p0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v1

    .line 172
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 173
    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;

    .line 174
    .local v0, "other":Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->locale_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->locale_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->name_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->name_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 175
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->description_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->description_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 176
    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->shortDescription_:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->shortDescription_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 177
    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 178
    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->permissions_:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->permissions_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 179
    :goto_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->speakableName_:Ljava/lang/String;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->speakableName_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 180
    :goto_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 181
    goto :goto_0

    .line 174
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->locale_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->locale_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->name_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->name_:Ljava/lang/String;

    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->description_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->description_:Ljava/lang/String;

    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->shortDescription_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->shortDescription_:Ljava/lang/String;

    .line 177
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->permissions_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->permissions_:Ljava/lang/String;

    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->speakableName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->speakableName_:Ljava/lang/String;

    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_7

    :cond_b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->unknownFieldData:Ljava/util/List;

    .line 181
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreInfoTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->permissions_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 228
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->locale_:Ljava/lang/String;

    .line 229
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 231
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 232
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->name_:Ljava/lang/String;

    .line 233
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 235
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 236
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->description_:Ljava/lang/String;

    .line 237
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 239
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 240
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->shortDescription_:Ljava/lang/String;

    .line 241
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 243
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 244
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    .line 245
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 247
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 248
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->permissions_:Ljava/lang/String;

    .line 249
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 251
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 252
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->speakableName_:Ljava/lang/String;

    .line 253
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 255
    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 256
    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->cachedSize:I

    .line 257
    return v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->shortDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeakableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->speakableName_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMoreInfoTitle()Z
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPermissions()Z
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShortDescription()Z
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeakableName()Z
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 185
    const/16 v0, 0x11

    .line 186
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->locale_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 187
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->name_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 188
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->description_:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 189
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->shortDescription_:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 190
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    add-int v0, v3, v1

    .line 191
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->permissions_:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    :goto_5
    add-int v0, v3, v1

    .line 192
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->speakableName_:Ljava/lang/String;

    if-nez v1, :cond_6

    move v1, v2

    :goto_6
    add-int v0, v3, v1

    .line 193
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_7

    :goto_7
    add-int v0, v1, v2

    .line 194
    return v0

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->locale_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->name_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->description_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 189
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->shortDescription_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 190
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    .line 191
    :cond_5
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->permissions_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    .line 192
    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->speakableName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    .line 193
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 266
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 270
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->unknownFieldData:Ljava/util/List;

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    :sswitch_0
    return-object p0

    .line 281
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->locale_:Ljava/lang/String;

    .line 282
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    goto :goto_0

    .line 286
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->name_:Ljava/lang/String;

    .line 287
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    goto :goto_0

    .line 291
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->description_:Ljava/lang/String;

    .line 292
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    goto :goto_0

    .line 296
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->shortDescription_:Ljava/lang/String;

    .line 297
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    goto :goto_0

    .line 301
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    .line 302
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    goto :goto_0

    .line 306
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->permissions_:Ljava/lang/String;

    .line 307
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    goto :goto_0

    .line 311
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->speakableName_:Ljava/lang/String;

    .line 312
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    goto :goto_0

    .line 266
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

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->description_:Ljava/lang/String;

    .line 69
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    .line 70
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 21
    if-nez p1, :cond_0

    .line 22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->locale_:Ljava/lang/String;

    .line 25
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    .line 26
    return-object p0
.end method

.method public setMoreInfoTitle(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    .line 113
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    .line 114
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->name_:Ljava/lang/String;

    .line 47
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    .line 48
    return-object p0
.end method

.method public setPermissions(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->permissions_:Ljava/lang/String;

    .line 135
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    .line 136
    return-object p0
.end method

.method public setShortDescription(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->shortDescription_:Ljava/lang/String;

    .line 91
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    .line 92
    return-object p0
.end method

.method public setSpeakableName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->speakableName_:Ljava/lang/String;

    .line 157
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    .line 158
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->locale_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 202
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 203
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 205
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 206
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->description_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 208
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 209
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->shortDescription_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 211
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 212
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 214
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 215
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->permissions_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 217
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 218
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->speakableName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 220
    :cond_6
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareNano$GlasswareMessages;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 222
    return-void
.end method
