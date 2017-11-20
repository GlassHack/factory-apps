.class public final Lcom/google/glass/companion/Proto$LocationMessage;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$LocationMessage;


# instance fields
.field private bitField0_:I

.field private location_:Lcom/google/glass/companion/Proto$Location;

.field public provider:Ljava/lang/String;

.field private receiver_:Ljava/lang/String;

.field private status_:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3011
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$LocationMessage;

    sput-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$LocationMessage;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3012
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3024
    iput v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    .line 3027
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    .line 3049
    iput v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    .line 3068
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    .line 3012
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3219
    new-instance v0, Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$LocationMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3213
    new-instance v0, Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method


# virtual methods
.method public clearLocation()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 3045
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 3046
    return-object p0
.end method

.method public clearReceiver()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 3084
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    .line 3085
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    .line 3086
    return-object p0
.end method

.method public clearStatus()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 3062
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    .line 3063
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    .line 3064
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3091
    if-ne p1, p0, :cond_1

    .line 3099
    :cond_0
    :goto_0
    return v1

    .line 3092
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$LocationMessage;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 3093
    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    .line 3094
    .local v0, "other":Lcom/google/glass/companion/Proto$LocationMessage;
    iget v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    iget v4, v0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 3095
    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    if-nez v3, :cond_3

    .line 3096
    :goto_2
    iget v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 3098
    :goto_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 3099
    goto :goto_0

    .line 3094
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    .line 3095
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 3096
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$Location;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    .line 3098
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    .line 3099
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getLocation()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 3032
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method public getReceiver()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3070
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3132
    const/4 v0, 0x0

    .line 3133
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    .line 3134
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3135
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    .line 3136
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3137
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    if-eqz v1, :cond_0

    .line 3138
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 3139
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3141
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 3142
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    .line 3143
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3145
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 3146
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    .line 3147
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3149
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3150
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->cachedSize:I

    .line 3151
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 3051
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    return v0
.end method

.method public hasLocation()Z
    .locals 1

    .prologue
    .line 3042
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReceiver()Z
    .locals 1

    .prologue
    .line 3081
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 3059
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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

    .line 3103
    const/16 v0, 0x11

    .line 3104
    .local v0, "result":I
    iget v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    add-int/lit16 v0, v1, 0x20f

    .line 3105
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 3106
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 3107
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    add-int v0, v1, v3

    .line 3108
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 3109
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_3

    :goto_3
    add-int v0, v1, v2

    .line 3110
    return v0

    .line 3105
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 3106
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Location;->hashCode()I

    move-result v1

    goto :goto_1

    .line 3108
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 3109
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3159
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3160
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3164
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 3165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    .line 3168
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3170
    :sswitch_0
    return-object p0

    .line 3175
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 3176
    .local v1, "temp":I
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 3180
    :cond_2
    iput v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    goto :goto_0

    .line 3182
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    goto :goto_0

    .line 3187
    .end local v1    # "temp":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    goto :goto_0

    .line 3191
    :sswitch_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    if-nez v2, :cond_4

    .line 3192
    new-instance v2, Lcom/google/glass/companion/Proto$Location;

    invoke-direct {v2}, Lcom/google/glass/companion/Proto$Location;-><init>()V

    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 3194
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3198
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    .line 3199
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    goto :goto_0

    .line 3203
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    .line 3204
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    goto :goto_0

    .line 3160
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 3008
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$LocationMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public setLocation(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$Location;

    .prologue
    .line 3035
    if-nez p1, :cond_0

    .line 3036
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3038
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 3039
    return-object p0
.end method

.method public setReceiver(Ljava/lang/String;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3073
    if-nez p1, :cond_0

    .line 3074
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3076
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    .line 3077
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    .line 3078
    return-object p0
.end method

.method public setStatus(I)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3054
    iput p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    .line 3055
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    .line 3056
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
    .line 3115
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3116
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3117
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    if-eqz v0, :cond_0

    .line 3118
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3120
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 3121
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3123
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 3124
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3126
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3128
    return-void
.end method
