.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessagingPersona"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;


# instance fields
.field public acceptType:[Ljava/lang/String;

.field private bitField0_:I

.field private displayId_:Ljava/lang/String;

.field private displayMetadata_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

.field private isDefault_:Z

.field private personaId_:Ljava/lang/String;

.field private phoneNumberPersona_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

.field private phoneNumber_:Ljava/lang/String;

.field public sharingFeature:[I

.field private source_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2925
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2926
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3190
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    .line 3212
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    .line 3234
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayId_:Ljava/lang/String;

    .line 3256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    .line 3275
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    .line 3278
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    .line 3281
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumber_:Ljava/lang/String;

    .line 2926
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3572
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3566
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    return-object v0
.end method


# virtual methods
.method public clearDisplayId()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1

    .prologue
    .line 3250
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayId_:Ljava/lang/String;

    .line 3251
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    .line 3252
    return-object p0
.end method

.method public clearDisplayMetadata()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1

    .prologue
    .line 3337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayMetadata_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    .line 3338
    return-object p0
.end method

.method public clearIsDefault()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1

    .prologue
    .line 3269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    .line 3270
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    .line 3271
    return-object p0
.end method

.method public clearPersonaId()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1

    .prologue
    .line 3228
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    .line 3229
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    .line 3230
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1

    .prologue
    .line 3297
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumber_:Ljava/lang/String;

    .line 3298
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    .line 3299
    return-object p0
.end method

.method public clearPhoneNumberPersona()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1

    .prologue
    .line 3318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumberPersona_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    .line 3319
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1

    .prologue
    .line 3206
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    .line 3207
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    .line 3208
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3342
    if-ne p1, p0, :cond_1

    .line 3354
    :cond_0
    :goto_0
    return v1

    .line 3343
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 3344
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 3345
    .local v0, "other":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 3346
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayId_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayId_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 3347
    :goto_3
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    .line 3349
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    .line 3350
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumber_:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumber_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 3351
    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumberPersona_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumberPersona_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    if-nez v3, :cond_3

    .line 3352
    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayMetadata_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayMetadata_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    if-nez v3, :cond_3

    .line 3353
    :goto_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 3354
    goto :goto_0

    .line 3345
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    .line 3346
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayId_:Ljava/lang/String;

    .line 3347
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 3350
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumber_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumber_:Ljava/lang/String;

    .line 3351
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumberPersona_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumberPersona_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    .line 3352
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayMetadata_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayMetadata_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    .line 3353
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->unknownFieldData:Ljava/util/List;

    .line 3354
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getDisplayId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3236
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayId_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayMetadata()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;
    .locals 1

    .prologue
    .line 3324
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayMetadata_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    return-object v0
.end method

.method public getIsDefault()Z
    .locals 1

    .prologue
    .line 3258
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    return v0
.end method

.method public getPersonaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3214
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3283
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumberPersona()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;
    .locals 1

    .prologue
    .line 3305
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumberPersona_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 3421
    const/4 v2, 0x0

    .line 3422
    .local v2, "size":I
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 3423
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    .line 3424
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3426
    :cond_0
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 3427
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    .line 3428
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3430
    :cond_1
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2

    .line 3431
    const/4 v4, 0x3

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    .line 3432
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 3434
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_4

    .line 3435
    const/4 v0, 0x0

    .line 3436
    .local v0, "dataSize":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v1, v5, v4

    .line 3438
    .local v1, "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v0, v7

    .line 3436
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3440
    .end local v1    # "element":Ljava/lang/String;
    :cond_3
    add-int/2addr v2, v0

    .line 3441
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 3443
    .end local v0    # "dataSize":I
    :cond_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    array-length v4, v4

    if-lez v4, :cond_6

    .line 3444
    const/4 v0, 0x0

    .line 3445
    .restart local v0    # "dataSize":I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_5

    aget v1, v4, v3

    .line 3447
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v0, v6

    .line 3445
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3449
    .end local v1    # "element":I
    :cond_5
    add-int/2addr v2, v0

    .line 3450
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 3452
    .end local v0    # "dataSize":I
    :cond_6
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_7

    .line 3453
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayId_:Ljava/lang/String;

    .line 3454
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3456
    :cond_7
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_8

    .line 3457
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumber_:Ljava/lang/String;

    .line 3458
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3460
    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumberPersona_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    if-eqz v3, :cond_9

    .line 3461
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumberPersona_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    .line 3462
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3464
    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayMetadata_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    if-eqz v3, :cond_a

    .line 3465
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayMetadata_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    .line 3466
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3468
    :cond_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->unknownFieldData:Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3469
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->cachedSize:I

    .line 3470
    return v2
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3192
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDisplayId()Z
    .locals 1

    .prologue
    .line 3247
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisplayMetadata()Z
    .locals 1

    .prologue
    .line 3334
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayMetadata_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsDefault()Z
    .locals 1

    .prologue
    .line 3266
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPersonaId()Z
    .locals 1

    .prologue
    .line 3225
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhoneNumber()Z
    .locals 1

    .prologue
    .line 3294
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhoneNumberPersona()Z
    .locals 1

    .prologue
    .line 3315
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumberPersona_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 3203
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

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
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3358
    const/16 v1, 0x11

    .line 3359
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 3360
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 3361
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayId_:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 3362
    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_3
    add-int v1, v4, v2

    .line 3363
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    if-nez v2, :cond_6

    mul-int/lit8 v1, v1, 0x1f

    .line 3369
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    if-nez v2, :cond_8

    mul-int/lit8 v1, v1, 0x1f

    .line 3375
    :cond_1
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumber_:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 3376
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumberPersona_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    if-nez v2, :cond_a

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 3377
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayMetadata_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    if-nez v2, :cond_b

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 3378
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_c

    :goto_7
    add-int v1, v2, v3

    .line 3379
    return v1

    .line 3359
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 3360
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 3361
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 3362
    :cond_5
    const/4 v2, 0x2

    goto :goto_3

    .line 3365
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 3366
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_7

    move v2, v3

    :goto_9
    add-int v1, v4, v2

    .line 3365
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3366
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    .line 3371
    .end local v0    # "i":I
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 3372
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    aget v4, v4, v0

    add-int v1, v2, v4

    .line 3371
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 3375
    .end local v0    # "i":I
    :cond_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumber_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 3376
    :cond_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumberPersona_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;->hashCode()I

    move-result v2

    goto :goto_5

    .line 3377
    :cond_b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayMetadata_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;->hashCode()I

    move-result v2

    goto :goto_6

    .line 3378
    :cond_c
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3478
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 3479
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3483
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_1

    .line 3484
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->unknownFieldData:Ljava/util/List;

    .line 3487
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3489
    :sswitch_0
    return-object p0

    .line 3494
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    .line 3495
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    goto :goto_0

    .line 3499
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    .line 3500
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    goto :goto_0

    .line 3504
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    .line 3505
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    goto :goto_0

    .line 3509
    :sswitch_4
    const/16 v4, 0x22

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3510
    .local v0, "arrayLength":I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v1, v4

    .line 3511
    .local v1, "i":I
    add-int v4, v1, v0

    new-array v2, v4, [Ljava/lang/String;

    .line 3512
    .local v2, "newArray":[Ljava/lang/String;
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3513
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    .line 3514
    :goto_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 3515
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 3516
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3514
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3519
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    goto :goto_0

    .line 3523
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_5
    const/16 v4, 0x28

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3524
    .restart local v0    # "arrayLength":I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    array-length v1, v4

    .line 3525
    .restart local v1    # "i":I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 3526
    .local v2, "newArray":[I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3527
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    .line 3528
    :goto_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_3

    .line 3529
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    .line 3530
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3528
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3533
    :cond_3
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    goto/16 :goto_0

    .line 3537
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayId_:Ljava/lang/String;

    .line 3538
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    goto/16 :goto_0

    .line 3542
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumber_:Ljava/lang/String;

    .line 3543
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    goto/16 :goto_0

    .line 3547
    :sswitch_8
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumberPersona_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    if-nez v4, :cond_4

    .line 3548
    new-instance v4, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    invoke-direct {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;-><init>()V

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumberPersona_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    .line 3550
    :cond_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumberPersona_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 3554
    :sswitch_9
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayMetadata_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    if-nez v4, :cond_5

    .line 3555
    new-instance v4, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    invoke-direct {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;-><init>()V

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayMetadata_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    .line 3557
    :cond_5
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayMetadata_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 3479
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
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
    .line 2922
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3239
    if-nez p1, :cond_0

    .line 3240
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3242
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayId_:Ljava/lang/String;

    .line 3243
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    .line 3244
    return-object p0
.end method

.method public setDisplayMetadata(Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    .prologue
    .line 3327
    if-nez p1, :cond_0

    .line 3328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3330
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayMetadata_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    .line 3331
    return-object p0
.end method

.method public setIsDefault(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 3261
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    .line 3262
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    .line 3263
    return-object p0
.end method

.method public setPersonaId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3217
    if-nez p1, :cond_0

    .line 3218
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3220
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    .line 3221
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    .line 3222
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3286
    if-nez p1, :cond_0

    .line 3287
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3289
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumber_:Ljava/lang/String;

    .line 3290
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    .line 3291
    return-object p0
.end method

.method public setPhoneNumberPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    .prologue
    .line 3308
    if-nez p1, :cond_0

    .line 3309
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3311
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumberPersona_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    .line 3312
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3195
    if-nez p1, :cond_0

    .line 3196
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3198
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    .line 3199
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    .line 3200
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3384
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 3385
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3387
    :cond_0
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 3388
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3390
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 3391
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3393
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 3394
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v0, v3, v2

    .line 3395
    .local v0, "element":Ljava/lang/String;
    const/4 v5, 0x4

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3394
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3398
    .end local v0    # "element":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    array-length v2, v2

    if-lez v2, :cond_4

    .line 3399
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_4

    aget v0, v2, v1

    .line 3400
    .local v0, "element":I
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3399
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3403
    .end local v0    # "element":I
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 3404
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayId_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3406
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    .line 3407
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumber_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3409
    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumberPersona_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    if-eqz v1, :cond_7

    .line 3410
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->phoneNumberPersona_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3412
    :cond_7
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayMetadata_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    if-eqz v1, :cond_8

    .line 3413
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->displayMetadata_:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$DisplayMetadata;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3415
    :cond_8
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3417
    return-void
.end method
