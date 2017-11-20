.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayMetadata"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;


# instance fields
.field private bitField0_:I

.field private profileEmail_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3081
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3082
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3087
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    .line 3082
    return-void
.end method


# virtual methods
.method public clearProfileEmail()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;
    .locals 1

    .prologue
    .line 3103
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    .line 3104
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->bitField0_:I

    .line 3105
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3110
    if-ne p1, p0, :cond_1

    .line 3114
    :cond_0
    :goto_0
    return v1

    .line 3111
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 3112
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    .line 3113
    .local v0, "other":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 3114
    goto :goto_0

    .line 3113
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->unknownFieldData:Ljava/util/List;

    .line 3114
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getProfileEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3089
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3135
    const/4 v0, 0x0

    .line 3136
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3137
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    .line 3138
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3140
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3141
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->cachedSize:I

    .line 3142
    return v0
.end method

.method public hasProfileEmail()Z
    .locals 1

    .prologue
    .line 3100
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->bitField0_:I

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

    .line 3118
    const/16 v0, 0x11

    .line 3119
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 3120
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 3121
    return v0

    .line 3119
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 3120
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3150
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3151
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3155
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 3156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->unknownFieldData:Ljava/util/List;

    .line 3159
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3161
    :sswitch_0
    return-object p0

    .line 3166
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    .line 3167
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->bitField0_:I

    goto :goto_0

    .line 3151
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 3078
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3182
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3176
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    return-object v0
.end method

.method public setProfileEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3092
    if-nez p1, :cond_0

    .line 3093
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3095
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    .line 3096
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->bitField0_:I

    .line 3097
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
    .line 3126
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3127
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->profileEmail_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3129
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3131
    return-void
.end method
