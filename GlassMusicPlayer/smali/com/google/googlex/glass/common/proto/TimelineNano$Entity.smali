.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;


# instance fields
.field public acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

.field public acceptType:[Ljava/lang/String;

.field private bitField0_:I

.field public contactGroup:[I

.field private creationTime_:J

.field private displayName_:Ljava/lang/String;

.field private email_:Ljava/lang/String;

.field public focusContactId:[J

.field private fullName_:Ljava/lang/String;

.field private id_:Ljava/lang/String;

.field public imageUrl:[Ljava/lang/String;

.field private isCommunicationTarget_:Z

.field private messagingOption_:I

.field public messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

.field private nickname_:Ljava/lang/String;

.field private obfuscatedGaiaId_:Ljava/lang/String;

.field private phoneNumber_:Ljava/lang/String;

.field private priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

.field public secondaryEmail:[Ljava/lang/String;

.field public secondaryPhoneNumber:[Ljava/lang/String;

.field public sharingFeature:[I

.field private shouldSync_:Z

.field private source_:Ljava/lang/String;

.field private speakableName_:Ljava/lang/String;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3580
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3581
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4134
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    .line 4156
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    .line 4178
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    .line 4200
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 4203
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    .line 4222
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    .line 4225
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    .line 4247
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    .line 4269
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    .line 4291
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    .line 4294
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    .line 4313
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    .line 4332
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    .line 4354
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    .line 4357
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    .line 4379
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    .line 4382
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    .line 4385
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    .line 4423
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .line 4426
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    .line 4448
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    .line 4451
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    .line 4470
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->focusContactId:[J

    .line 3581
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 5082
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 5076
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method


# virtual methods
.method public final clearCreationTime()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 2

    .prologue
    .line 4464
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    .line 4465
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4466
    return-object p0
.end method

.method public final clearDisplayName()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4241
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    .line 4242
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4243
    return-object p0
.end method

.method public final clearEmail()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4373
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    .line 4374
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4375
    return-object p0
.end method

.method public final clearFullName()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4285
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    .line 4286
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4287
    return-object p0
.end method

.method public final clearId()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4172
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    .line 4173
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4174
    return-object p0
.end method

.method public final clearIsCommunicationTarget()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    .line 4399
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4400
    return-object p0
.end method

.method public final clearMessagingOption()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4216
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    .line 4217
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4218
    return-object p0
.end method

.method public final clearNickname()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4263
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    .line 4264
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4265
    return-object p0
.end method

.method public final clearObfuscatedGaiaId()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4194
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    .line 4195
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4196
    return-object p0
.end method

.method public final clearPhoneNumber()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4348
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    .line 4349
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4350
    return-object p0
.end method

.method public final clearPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 4420
    return-object p0
.end method

.method public final clearShouldSync()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    .line 4308
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4309
    return-object p0
.end method

.method public final clearSource()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4150
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    .line 4151
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4152
    return-object p0
.end method

.method public final clearSpeakableName()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4442
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    .line 4443
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4444
    return-object p0
.end method

.method public final clearType()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4326
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    .line 4327
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4328
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4474
    if-ne p1, p0, :cond_1

    .line 4501
    :cond_0
    :goto_0
    return v0

    .line 4475
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 4476
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 4477
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 4478
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 4479
    :goto_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 4480
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    .line 4482
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 4483
    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 4484
    :goto_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 4485
    :goto_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    .line 4486
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    iget-boolean v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 4489
    :goto_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    .line 4490
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 4491
    :goto_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    .line 4492
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    .line 4493
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    iget-boolean v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-nez v2, :cond_3

    .line 4495
    :goto_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .line 4496
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 4497
    :goto_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    .line 4498
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    iget-wide v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->focusContactId:[J

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->focusContactId:[J

    .line 4500
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_e

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 4501
    goto/16 :goto_0

    .line 4477
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    .line 4478
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    .line 4479
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_3

    .line 4482
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    .line 4483
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_4

    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    .line 4484
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_5

    :cond_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    .line 4485
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_6

    .line 4486
    :cond_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    .line 4489
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_7

    .line 4490
    :cond_b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    .line 4491
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_8

    .line 4493
    :cond_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 4495
    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_9

    .line 4496
    :cond_d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    .line 4497
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_a

    .line 4500
    :cond_e
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->unknownFieldData:Ljava/util/List;

    .line 4501
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0
.end method

.method public final getCreationTime()J
    .locals 2

    .prologue
    .line 4453
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    return-wide v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4227
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4359
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    return-object v0
.end method

.method public final getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4271
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4158
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsCommunicationTarget()Z
    .locals 1

    .prologue
    .line 4387
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    return v0
.end method

.method public final getMessagingOption()I
    .locals 1

    .prologue
    .line 4205
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    return v0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4249
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    return-object v0
.end method

.method public final getObfuscatedGaiaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4180
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4334
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 1

    .prologue
    .line 4406
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 4681
    .line 4682
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_20

    .line 4683
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    .line 4684
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    .line 4686
    :goto_0
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 4687
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    .line 4688
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4690
    :cond_0
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 4691
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    .line 4692
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4694
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    .line 4695
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    .line 4696
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4698
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_3

    .line 4699
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    .line 4700
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4702
    :cond_3
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_4

    .line 4703
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    .line 4704
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4706
    :cond_4
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_5

    .line 4707
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    .line 4708
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4710
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 4712
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_1
    if-ge v2, v5, :cond_6

    aget-object v6, v4, v2

    .line 4714
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    .line 4712
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4716
    :cond_6
    add-int/2addr v0, v3

    .line 4717
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 4719
    :cond_7
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_8

    .line 4720
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    .line 4721
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4723
    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_a

    .line 4725
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_2
    if-ge v2, v5, :cond_9

    aget-object v6, v4, v2

    .line 4727
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    .line 4725
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4729
    :cond_9
    add-int/2addr v0, v3

    .line 4730
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 4732
    :cond_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_c

    .line 4734
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_3
    if-ge v2, v5, :cond_b

    aget-object v6, v4, v2

    .line 4736
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    .line 4734
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4738
    :cond_b
    add-int/2addr v0, v3

    .line 4739
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 4741
    :cond_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-eqz v2, :cond_d

    .line 4742
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 4743
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4745
    :cond_d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_f

    .line 4747
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_4
    if-ge v2, v5, :cond_e

    aget-object v6, v4, v2

    .line 4749
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    .line 4747
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 4751
    :cond_e
    add-int/2addr v0, v3

    .line 4752
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 4754
    :cond_f
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    if-eqz v2, :cond_11

    .line 4755
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    array-length v4, v3

    move v2, v1

    :goto_5
    if-ge v2, v4, :cond_11

    aget-object v5, v3, v2

    .line 4756
    if-eqz v5, :cond_10

    .line 4757
    const/16 v6, 0x10

    .line 4758
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 4755
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4762
    :cond_11
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_12

    .line 4763
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    .line 4764
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4766
    :cond_12
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    array-length v2, v2

    if-lez v2, :cond_14

    .line 4768
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_6
    if-ge v2, v5, :cond_13

    aget v6, v4, v2

    .line 4770
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v3, v6

    .line 4768
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 4772
    :cond_13
    add-int/2addr v0, v3

    .line 4773
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 4775
    :cond_14
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_15

    .line 4776
    const/16 v2, 0x15

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    .line 4777
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4779
    :cond_15
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-eqz v2, :cond_17

    .line 4780
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v4, v3

    move v2, v1

    :goto_7
    if-ge v2, v4, :cond_17

    aget-object v5, v3, v2

    .line 4781
    if-eqz v5, :cond_16

    .line 4782
    const/16 v6, 0x16

    .line 4783
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 4780
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 4787
    :cond_17
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_18

    .line 4788
    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    .line 4789
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4791
    :cond_18
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_19

    .line 4792
    const/16 v2, 0x19

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    .line 4793
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4795
    :cond_19
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1a

    .line 4796
    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    .line 4797
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4799
    :cond_1a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    array-length v2, v2

    if-lez v2, :cond_1c

    .line 4801
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_8
    if-ge v2, v5, :cond_1b

    aget v6, v4, v2

    .line 4803
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v3, v6

    .line 4801
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4805
    :cond_1b
    add-int/2addr v0, v3

    .line 4806
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 4808
    :cond_1c
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1d

    .line 4809
    const/16 v2, 0x1c

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    .line 4810
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4812
    :cond_1d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->focusContactId:[J

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->focusContactId:[J

    array-length v2, v2

    if-lez v2, :cond_1f

    .line 4814
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->focusContactId:[J

    array-length v4, v3

    move v2, v1

    :goto_9
    if-ge v1, v4, :cond_1e

    aget-wide v5, v3, v1

    .line 4816
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64SizeNoTag(J)I

    move-result v5

    add-int/2addr v2, v5

    .line 4814
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 4818
    :cond_1e
    add-int/2addr v0, v2

    .line 4819
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->focusContactId:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 4821
    :cond_1f
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4822
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->cachedSize:I

    .line 4823
    return v0

    :cond_20
    move v0, v1

    goto/16 :goto_0
.end method

.method public final getShouldSync()Z
    .locals 1

    .prologue
    .line 4296
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    return v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4136
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpeakableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4428
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 4315
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    return v0
.end method

.method public final hasCreationTime()Z
    .locals 1

    .prologue
    .line 4461
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasDisplayName()Z
    .locals 1

    .prologue
    .line 4238
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasEmail()Z
    .locals 1

    .prologue
    .line 4370
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasFullName()Z
    .locals 1

    .prologue
    .line 4282
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasId()Z
    .locals 1

    .prologue
    .line 4169
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasIsCommunicationTarget()Z
    .locals 1

    .prologue
    .line 4395
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasMessagingOption()Z
    .locals 1

    .prologue
    .line 4213
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasNickname()Z
    .locals 1

    .prologue
    .line 4260
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasObfuscatedGaiaId()Z
    .locals 1

    .prologue
    .line 4191
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPhoneNumber()Z
    .locals 1

    .prologue
    .line 4345
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPriority()Z
    .locals 1

    .prologue
    .line 4416
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasShouldSync()Z
    .locals 1

    .prologue
    .line 4304
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSource()Z
    .locals 1

    .prologue
    .line 4147
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSpeakableName()Z
    .locals 1

    .prologue
    .line 4439
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

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
    .line 4323
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 4505
    .line 4506
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 4507
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    if-nez v0, :cond_a

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 4508
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    if-nez v0, :cond_b

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 4509
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-nez v2, :cond_c

    mul-int/lit8 v2, v0, 0x1f

    .line 4515
    :cond_0
    mul-int/lit8 v0, v2, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    add-int/2addr v0, v2

    .line 4516
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    if-nez v2, :cond_e

    mul-int/lit8 v2, v0, 0x1f

    .line 4522
    :cond_1
    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    if-nez v0, :cond_f

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 4523
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    if-nez v0, :cond_10

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 4524
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    if-nez v0, :cond_11

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 4525
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    if-nez v2, :cond_12

    mul-int/lit8 v2, v0, 0x1f

    .line 4531
    :cond_2
    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    if-eqz v0, :cond_14

    move v0, v3

    :goto_6
    add-int/2addr v0, v2

    .line 4532
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    add-int/2addr v0, v2

    .line 4533
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    if-nez v0, :cond_15

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    .line 4534
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    if-nez v2, :cond_16

    mul-int/lit8 v2, v0, 0x1f

    .line 4540
    :cond_3
    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    if-nez v0, :cond_18

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    .line 4541
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    if-nez v2, :cond_19

    mul-int/lit8 v2, v0, 0x1f

    .line 4547
    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    if-nez v0, :cond_1b

    mul-int/lit8 v2, v2, 0x1f

    .line 4553
    :cond_5
    mul-int/lit8 v0, v2, 0x1f

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    if-eqz v2, :cond_1d

    :goto_9
    add-int/2addr v0, v3

    .line 4554
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-nez v0, :cond_1e

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    .line 4555
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    if-nez v2, :cond_1f

    mul-int/lit8 v2, v0, 0x1f

    .line 4561
    :cond_6
    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    if-nez v0, :cond_21

    move v0, v1

    :goto_b
    add-int/2addr v0, v2

    .line 4562
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    if-nez v2, :cond_22

    mul-int/lit8 v2, v0, 0x1f

    .line 4568
    :cond_7
    mul-int/lit8 v0, v2, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    ushr-long/2addr v4, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 4569
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->focusContactId:[J

    if-nez v2, :cond_23

    mul-int/lit8 v2, v0, 0x1f

    .line 4575
    :cond_8
    mul-int/lit8 v0, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_24

    :goto_c
    add-int/2addr v0, v1

    .line 4576
    return v0

    .line 4506
    :cond_9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    .line 4507
    :cond_a
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_1

    .line 4508
    :cond_b
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :cond_c
    move v2, v0

    move v0, v1

    .line 4511
    :goto_d
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 4512
    mul-int/lit8 v5, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    aget-object v2, v2, v0

    if-nez v2, :cond_d

    move v2, v1

    :goto_e
    add-int/2addr v2, v5

    .line 4511
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 4512
    :cond_d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_e
    move v2, v0

    move v0, v1

    .line 4518
    :goto_f
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 4519
    mul-int/lit8 v2, v2, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    aget v5, v5, v0

    add-int/2addr v2, v5

    .line 4518
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 4522
    :cond_f
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_3

    .line 4523
    :cond_10
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_4

    .line 4524
    :cond_11
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_5

    :cond_12
    move v2, v0

    move v0, v1

    .line 4527
    :goto_10
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 4528
    mul-int/lit8 v5, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_13

    move v2, v1

    :goto_11
    add-int/2addr v2, v5

    .line 4527
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 4528
    :cond_13
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_11

    :cond_14
    move v0, v4

    .line 4531
    goto/16 :goto_6

    .line 4533
    :cond_15
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_7

    :cond_16
    move v2, v0

    move v0, v1

    .line 4536
    :goto_12
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 4537
    mul-int/lit8 v5, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_17

    move v2, v1

    :goto_13
    add-int/2addr v2, v5

    .line 4536
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 4537
    :cond_17
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_13

    .line 4540
    :cond_18
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_8

    :cond_19
    move v2, v0

    move v0, v1

    .line 4543
    :goto_14
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 4544
    mul-int/lit8 v5, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_1a

    move v2, v1

    :goto_15
    add-int/2addr v2, v5

    .line 4543
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 4544
    :cond_1a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_1b
    move v0, v1

    .line 4549
    :goto_16
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_5

    .line 4550
    mul-int/lit8 v5, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_1c

    move v2, v1

    :goto_17
    add-int/2addr v2, v5

    .line 4549
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 4550
    :cond_1c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_1d
    move v3, v4

    .line 4553
    goto/16 :goto_9

    .line 4554
    :cond_1e
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->hashCode()I

    move-result v0

    goto/16 :goto_a

    :cond_1f
    move v2, v0

    move v0, v1

    .line 4557
    :goto_18
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 4558
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    aget-object v2, v2, v0

    if-nez v2, :cond_20

    move v2, v1

    :goto_19
    add-int/2addr v2, v3

    .line 4557
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 4558
    :cond_20
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->hashCode()I

    move-result v2

    goto :goto_19

    .line 4561
    :cond_21
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_b

    :cond_22
    move v2, v0

    move v0, v1

    .line 4564
    :goto_1a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 4565
    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    .line 4564
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_23
    move v2, v0

    move v0, v1

    .line 4571
    :goto_1b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->focusContactId:[J

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 4572
    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->focusContactId:[J

    aget-wide v3, v3, v0

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->focusContactId:[J

    aget-wide v5, v5, v0

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 4571
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 4575
    :cond_24
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto/16 :goto_c
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 4831
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4832
    sparse-switch v0, :sswitch_data_0

    .line 4836
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 4837
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->unknownFieldData:Ljava/util/List;

    .line 4840
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4842
    :sswitch_0
    return-object p0

    .line 4847
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    .line 4848
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto :goto_0

    .line 4852
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    .line 4853
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto :goto_0

    .line 4857
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    .line 4858
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto :goto_0

    .line 4862
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    .line 4863
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto :goto_0

    .line 4867
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 4868
    if-eqz v0, :cond_2

    if-ne v0, v5, :cond_3

    .line 4870
    :cond_2
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    .line 4871
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto :goto_0

    .line 4873
    :cond_3
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    goto :goto_0

    .line 4878
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    .line 4879
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto :goto_0

    .line 4883
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    .line 4884
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto :goto_0

    .line 4888
    :sswitch_8
    const/16 v0, 0x4a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4889
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    array-length v0, v0

    .line 4890
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 4891
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4892
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    .line 4893
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_4

    .line 4894
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 4895
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4893
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4898
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_0

    .line 4902
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    .line 4903
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto/16 :goto_0

    .line 4907
    :sswitch_a
    const/16 v0, 0x62

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4908
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v0, v0

    .line 4909
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 4910
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4911
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    .line 4912
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    .line 4913
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 4914
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4912
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4917
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_0

    .line 4921
    :sswitch_b
    const/16 v0, 0x6a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4922
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v0, v0

    .line 4923
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 4924
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4925
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    .line 4926
    :goto_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_6

    .line 4927
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 4928
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4926
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 4931
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_0

    .line 4935
    :sswitch_c
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-nez v0, :cond_7

    .line 4936
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;-><init>()V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 4938
    :cond_7
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 4942
    :sswitch_d
    const/16 v0, 0x7a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4943
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v0, v0

    .line 4944
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 4945
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4946
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    .line 4947
    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_8

    .line 4948
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 4949
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4947
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4952
    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_0

    .line 4956
    :sswitch_e
    const/16 v0, 0x82

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4957
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    if-nez v0, :cond_a

    move v0, v1

    .line 4958
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .line 4959
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    if-eqz v3, :cond_9

    .line 4960
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4962
    :cond_9
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .line 4963
    :goto_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_b

    .line 4964
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;-><init>()V

    aput-object v3, v2, v0

    .line 4965
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4966
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4963
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4957
    :cond_a
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    array-length v0, v0

    goto :goto_5

    .line 4969
    :cond_b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;-><init>()V

    aput-object v3, v2, v0

    .line 4970
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 4974
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    .line 4975
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto/16 :goto_0

    .line 4979
    :sswitch_10
    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4980
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    array-length v0, v0

    .line 4981
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 4982
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4983
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    .line 4984
    :goto_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_c

    .line 4985
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 4986
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4984
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 4989
    :cond_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    goto/16 :goto_0

    .line 4993
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    .line 4994
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto/16 :goto_0

    .line 4998
    :sswitch_12
    const/16 v0, 0xb2

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4999
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-nez v0, :cond_e

    move v0, v1

    .line 5000
    :goto_8
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 5001
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-eqz v3, :cond_d

    .line 5002
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5004
    :cond_d
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 5005
    :goto_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_f

    .line 5006
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;-><init>()V

    aput-object v3, v2, v0

    .line 5007
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5008
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5005
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 4999
    :cond_e
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v0, v0

    goto :goto_8

    .line 5011
    :cond_f
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;-><init>()V

    aput-object v3, v2, v0

    .line 5012
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5016
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    .line 5017
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto/16 :goto_0

    .line 5021
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 5022
    if-eqz v0, :cond_10

    if-eq v0, v5, :cond_10

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    .line 5025
    :cond_10
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    .line 5026
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto/16 :goto_0

    .line 5028
    :cond_11
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    goto/16 :goto_0

    .line 5033
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    .line 5034
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto/16 :goto_0

    .line 5038
    :sswitch_16
    const/16 v0, 0xd8

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5039
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    array-length v0, v0

    .line 5040
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 5041
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5042
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    .line 5043
    :goto_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_12

    .line 5044
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 5045
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5043
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 5048
    :cond_12
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    goto/16 :goto_0

    .line 5052
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    .line 5053
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto/16 :goto_0

    .line 5057
    :sswitch_18
    const/16 v0, 0xe8

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5058
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->focusContactId:[J

    array-length v0, v0

    .line 5059
    add-int/2addr v2, v0

    new-array v2, v2, [J

    .line 5060
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->focusContactId:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5061
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->focusContactId:[J

    .line 5062
    :goto_b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->focusContactId:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_13

    .line 5063
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->focusContactId:[J

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 5064
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5062
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 5067
    :cond_13
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->focusContactId:[J

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v3

    aput-wide v3, v2, v0

    goto/16 :goto_0

    .line 4832
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x50 -> :sswitch_9
        0x62 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x7a -> :sswitch_d
        0x82 -> :sswitch_e
        0x8a -> :sswitch_f
        0xa0 -> :sswitch_10
        0xa8 -> :sswitch_11
        0xb2 -> :sswitch_12
        0xba -> :sswitch_13
        0xc8 -> :sswitch_14
        0xd2 -> :sswitch_15
        0xd8 -> :sswitch_16
        0xe2 -> :sswitch_17
        0xe8 -> :sswitch_18
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 3577
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    return-object v0
.end method

.method public final setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4456
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    .line 4457
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4458
    return-object p0
.end method

.method public final setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4230
    if-nez p1, :cond_0

    .line 4231
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4233
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    .line 4234
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4235
    return-object p0
.end method

.method public final setEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4362
    if-nez p1, :cond_0

    .line 4363
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4365
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    .line 4366
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4367
    return-object p0
.end method

.method public final setFullName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4274
    if-nez p1, :cond_0

    .line 4275
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4277
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    .line 4278
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4279
    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4161
    if-nez p1, :cond_0

    .line 4162
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4164
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    .line 4165
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4166
    return-object p0
.end method

.method public final setIsCommunicationTarget(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4390
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    .line 4391
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4392
    return-object p0
.end method

.method public final setMessagingOption(I)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4208
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    .line 4209
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4210
    return-object p0
.end method

.method public final setNickname(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4252
    if-nez p1, :cond_0

    .line 4253
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4255
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    .line 4256
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4257
    return-object p0
.end method

.method public final setObfuscatedGaiaId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4183
    if-nez p1, :cond_0

    .line 4184
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4186
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    .line 4187
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4188
    return-object p0
.end method

.method public final setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4337
    if-nez p1, :cond_0

    .line 4338
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4340
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    .line 4341
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4342
    return-object p0
.end method

.method public final setPriority(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4409
    if-nez p1, :cond_0

    .line 4410
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4412
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 4413
    return-object p0
.end method

.method public final setShouldSync(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4299
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    .line 4300
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4301
    return-object p0
.end method

.method public final setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4139
    if-nez p1, :cond_0

    .line 4140
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4142
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    .line 4143
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4144
    return-object p0
.end method

.method public final setSpeakableName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4431
    if-nez p1, :cond_0

    .line 4432
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4434
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    .line 4435
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4436
    return-object p0
.end method

.method public final setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4318
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    .line 4319
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 4320
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 4581
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4582
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4584
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4585
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4587
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 4588
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4590
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    .line 4591
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4593
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4

    .line 4594
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4596
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_5

    .line 4597
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4599
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_6

    .line 4600
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4602
    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 4603
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    .line 4604
    const/16 v5, 0x9

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4603
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4607
    :cond_7
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_8

    .line 4608
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4610
    :cond_8
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 4611
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_9

    aget-object v4, v2, v1

    .line 4612
    const/16 v5, 0xc

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4611
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4615
    :cond_9
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 4616
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_a

    aget-object v4, v2, v1

    .line 4617
    const/16 v5, 0xd

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4616
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4620
    :cond_a
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-eqz v1, :cond_b

    .line 4621
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4623
    :cond_b
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 4624
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_c

    aget-object v4, v2, v1

    .line 4625
    const/16 v5, 0xf

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4624
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4628
    :cond_c
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    if-eqz v1, :cond_e

    .line 4629
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    array-length v3, v2

    move v1, v0

    :goto_4
    if-ge v1, v3, :cond_e

    aget-object v4, v2, v1

    .line 4630
    if-eqz v4, :cond_d

    .line 4631
    const/16 v5, 0x10

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4629
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4635
    :cond_e
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_f

    .line 4636
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4638
    :cond_f
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    array-length v1, v1

    if-lez v1, :cond_10

    .line 4639
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget v4, v2, v1

    .line 4640
    const/16 v5, 0x14

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4639
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4643
    :cond_10
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_11

    .line 4644
    const/16 v1, 0x15

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 4646
    :cond_11
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-eqz v1, :cond_13

    .line 4647
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v3, v2

    move v1, v0

    :goto_6
    if-ge v1, v3, :cond_13

    aget-object v4, v2, v1

    .line 4648
    if-eqz v4, :cond_12

    .line 4649
    const/16 v5, 0x16

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4647
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4653
    :cond_13
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_14

    .line 4654
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4656
    :cond_14
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_15

    .line 4657
    const/16 v1, 0x19

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4659
    :cond_15
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_16

    .line 4660
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4662
    :cond_16
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    array-length v1, v1

    if-lez v1, :cond_17

    .line 4663
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_17

    aget v4, v2, v1

    .line 4664
    const/16 v5, 0x1b

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4663
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4667
    :cond_17
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_18

    .line 4668
    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4670
    :cond_18
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->focusContactId:[J

    if-eqz v1, :cond_19

    .line 4671
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->focusContactId:[J

    array-length v2, v1

    :goto_8
    if-ge v0, v2, :cond_19

    aget-wide v3, v1, v0

    .line 4672
    const/16 v5, 0x1d

    invoke-virtual {p1, v5, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 4671
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 4675
    :cond_19
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4677
    return-void
.end method
