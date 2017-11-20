.class public final Lcom/google/glass/phone/PhoneCall;
.super Ljava/lang/Object;
.source "PhoneCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/phone/PhoneCall$CallDirection;
    }
.end annotation


# static fields
.field public static final CALL_ERROR_NONE:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/phone/PhoneCall;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_ENTITY:Ljava/lang/String; = "entity"

.field public static final EXTRA_PHONE_CALL:Ljava/lang/String; = "phone_call"

.field private static final NO_CALL_END_TIME:I = -0x1

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private accepted:Z

.field private callerId:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field private direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

.field private endTime:J

.field private errorCode:I

.field private localRingtone:Z

.field private missed:Z

.field private phoneNumber:Ljava/lang/String;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/phone/PhoneCall;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 36
    new-instance v0, Lcom/google/glass/phone/PhoneCall$1;

    invoke-direct {v0}, Lcom/google/glass/phone/PhoneCall$1;-><init>()V

    sput-object v0, Lcom/google/glass/phone/PhoneCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->localRingtone:Z

    .line 97
    sget-object v0, Lcom/google/glass/phone/PhoneCall$CallDirection;->UNKNOWN:Lcom/google/glass/phone/PhoneCall$CallDirection;

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    .line 98
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCall;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    .line 117
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readBooleanFromParcel(Landroid/os/Parcel;)Z

    move-result v1

    .line 118
    .local v1, "hasCallerId":Z
    if-eqz v1, :cond_0

    .line 120
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    .line 128
    invoke-static {}, Lcom/google/glass/phone/PhoneCall$CallDirection;->values()[Lcom/google/glass/phone/PhoneCall$CallDirection;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    .line 129
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readBooleanFromParcel(Landroid/os/Parcel;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/glass/phone/PhoneCall;->accepted:Z

    .line 130
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readBooleanFromParcel(Landroid/os/Parcel;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/glass/phone/PhoneCall;->missed:Z

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    .line 132
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readBooleanFromParcel(Landroid/os/Parcel;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/glass/phone/PhoneCall;->localRingtone:Z

    .line 133
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v2, Lcom/google/glass/phone/PhoneCall;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to read entity from parcel"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/glass/phone/PhoneCall$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/glass/phone/PhoneCall$1;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/glass/phone/PhoneCall;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/phone/PhoneCall;)V
    .locals 2
    .param p1, "state"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCall;-><init>()V

    .line 103
    iget-object v0, p1, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 105
    iget-wide v0, p1, Lcom/google/glass/phone/PhoneCall;->startTime:J

    iput-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    .line 106
    iget-wide v0, p1, Lcom/google/glass/phone/PhoneCall;->endTime:J

    iput-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    .line 107
    iget-object v0, p1, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    .line 108
    iget-boolean v0, p1, Lcom/google/glass/phone/PhoneCall;->accepted:Z

    iput-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->accepted:Z

    .line 109
    iget-boolean v0, p1, Lcom/google/glass/phone/PhoneCall;->missed:Z

    iput-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->missed:Z

    .line 110
    iget v0, p1, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    iput v0, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    .line 111
    iget-boolean v0, p1, Lcom/google/glass/phone/PhoneCall;->localRingtone:Z

    iput-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->localRingtone:Z

    .line 112
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/google/glass/phone/PhoneCall;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 361
    const-class v0, Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 362
    const-string v0, "phone_call"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/phone/PhoneCall;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public getCallDirection()Lcom/google/glass/phone/PhoneCall$CallDirection;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    return-object v0
.end method

.method public getCallRunTime()J
    .locals 4

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCall;->wasAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    const-wide/16 v0, 0x0

    .line 333
    :goto_0
    return-wide v0

    .line 330
    :cond_0
    iget-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 331
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 333
    :cond_1
    iget-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    iget-wide v2, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getCallStartTime()J
    .locals 2

    .prologue
    .line 287
    iget-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    return-wide v0
.end method

.method public getCallerId()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 4

    .prologue
    .line 196
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    sget-object v1, Lcom/google/glass/phone/PhoneCall;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Caller id is null, returning an entity with just a phone number."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    .line 199
    .local v0, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 202
    .end local v0    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    goto :goto_0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    return v0
.end method

.method public getLocalRingtone()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->localRingtone:Z

    return v0
.end method

.method public getLoggablePhoneNumber()Ljava/lang/String;
    .locals 6

    .prologue
    .line 244
    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    const-string v4, "[phone number redacted]"

    .line 263
    :goto_0
    return-object v4

    .line 249
    :cond_0
    iget-object v4, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v2, "printablePhoneNumber":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "oldId":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v3, v4, 0x3

    .line 254
    .local v3, "sublength":I
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    move v0, v3

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    .line 257
    const-string v4, "*"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 260
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 263
    .end local v0    # "i":I
    .end local v1    # "oldId":Ljava/lang/String;
    .end local v2    # "printablePhoneNumber":Ljava/lang/StringBuilder;
    .end local v3    # "sublength":I
    :cond_2
    iget-object v4, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 2

    .prologue
    .line 316
    iget v0, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncomingCall()Z
    .locals 2

    .prologue
    .line 292
    sget-object v0, Lcom/google/glass/phone/PhoneCall$CallDirection;->INCOMING:Lcom/google/glass/phone/PhoneCall$CallDirection;

    iget-object v1, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    invoke-virtual {v0, v1}, Lcom/google/glass/phone/PhoneCall$CallDirection;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMissedCall()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->missed:Z

    return v0
.end method

.method public setCallAccepted(Z)V
    .locals 0
    .param p1, "accepted"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/google/glass/phone/PhoneCall;->accepted:Z

    .line 300
    return-void
.end method

.method public setCallDirection(Lcom/google/glass/phone/PhoneCall$CallDirection;)Z
    .locals 6
    .param p1, "direction"    # Lcom/google/glass/phone/PhoneCall$CallDirection;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 176
    iget-object v2, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    invoke-virtual {v2, p1}, Lcom/google/glass/phone/PhoneCall$CallDirection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    sget-object v2, Lcom/google/glass/phone/PhoneCall;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Direction did not change from: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-interface {v2, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :goto_0
    return v0

    .line 181
    :cond_0
    sget-object v2, Lcom/google/glass/phone/PhoneCall;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Direction was %s and is now %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    aput-object v5, v4, v0

    aput-object p1, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    move v0, v1

    .line 183
    goto :goto_0
.end method

.method public setCallerId(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 0
    .param p1, "callerId"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 217
    return-void
.end method

.method public setCallerId([B)V
    .locals 4
    .param p1, "callerId"    # [B

    .prologue
    .line 208
    :try_start_0
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/phone/PhoneCall;->setCallerId(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v1, Lcom/google/glass/phone/PhoneCall;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to parse caller id from byte array."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setEndTime(J)V
    .locals 5
    .param p1, "endTime"    # J

    .prologue
    const/4 v4, 0x0

    .line 160
    iget-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Call already ended, not setting a new time."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    iput-wide p1, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    .line 166
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Call ended at %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setError(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 308
    iput p1, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    .line 309
    return-void
.end method

.method public setLocalRingtone(Z)V
    .locals 0
    .param p1, "localRingtone"    # Z

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/google/glass/phone/PhoneCall;->localRingtone:Z

    .line 339
    return-void
.end method

.method public setMissed(Z)V
    .locals 2
    .param p1, "missed"    # Z

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCall;->isIncomingCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A missed call cannot be an outgoing call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    iput-boolean p1, p0, Lcom/google/glass/phone/PhoneCall;->missed:Z

    .line 278
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    .line 233
    const/4 v0, 0x1

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStartTime(J)V
    .locals 5
    .param p1, "startTime"    # J

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    .line 155
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Call started at %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .prologue
    .line 347
    iget-wide v0, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    iget-wide v2, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    iget-object v4, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/glass/phone/PhoneCall;->accepted:Z

    iget-boolean v6, p0, Lcom/google/glass/phone/PhoneCall;->missed:Z

    iget v7, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    .line 349
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCall;->getLoggablePhoneNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 350
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCall;->getCallRunTime()J

    move-result-wide v9

    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCall;->getLocalRingtone()Z

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit16 v13, v13, 0xe2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "PhoneCall [startTime="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accepted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", missed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getPrintablePhoneNumber()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getCallRunTime()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getLocalRingtone()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasAccepted()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/google/glass/phone/PhoneCall;->accepted:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 137
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 139
    .local v0, "hasCallerId":Z
    :goto_0
    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeBooleanToParcel(Landroid/os/Parcel;Z)V

    .line 140
    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCall;->callerId:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 143
    :cond_0
    iget-wide v1, p0, Lcom/google/glass/phone/PhoneCall;->startTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    iget-wide v1, p0, Lcom/google/glass/phone/PhoneCall;->endTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 145
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCall;->direction:Lcom/google/glass/phone/PhoneCall$CallDirection;

    invoke-virtual {v1}, Lcom/google/glass/phone/PhoneCall$CallDirection;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-boolean v1, p0, Lcom/google/glass/phone/PhoneCall;->accepted:Z

    invoke-static {p1, v1}, Lcom/google/glass/util/ParcelUtils;->writeBooleanToParcel(Landroid/os/Parcel;Z)V

    .line 147
    iget-boolean v1, p0, Lcom/google/glass/phone/PhoneCall;->missed:Z

    invoke-static {p1, v1}, Lcom/google/glass/util/ParcelUtils;->writeBooleanToParcel(Landroid/os/Parcel;Z)V

    .line 148
    iget v1, p0, Lcom/google/glass/phone/PhoneCall;->errorCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-boolean v1, p0, Lcom/google/glass/phone/PhoneCall;->localRingtone:Z

    invoke-static {p1, v1}, Lcom/google/glass/util/ParcelUtils;->writeBooleanToParcel(Landroid/os/Parcel;Z)V

    .line 150
    return-void

    .line 138
    .end local v0    # "hasCallerId":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
