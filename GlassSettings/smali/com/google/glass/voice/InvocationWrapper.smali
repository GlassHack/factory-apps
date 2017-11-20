.class public Lcom/google/glass/voice/InvocationWrapper;
.super Ljava/lang/Object;
.source "InvocationWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/voice/InvocationWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final commandType:I

.field private final entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field private final trigger:Lcom/google/android/glass/app/VoiceTrigger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/google/glass/voice/InvocationWrapper$1;

    invoke-direct {v0}, Lcom/google/glass/voice/InvocationWrapper$1;-><init>()V

    sput-object v0, Lcom/google/glass/voice/InvocationWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/glass/app/VoiceTrigger;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;I)V
    .locals 0
    .param p1, "trigger"    # Lcom/google/android/glass/app/VoiceTrigger;
    .param p2, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p3, "commandType"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/glass/voice/InvocationWrapper;->trigger:Lcom/google/android/glass/app/VoiceTrigger;

    .line 23
    iput p3, p0, Lcom/google/glass/voice/InvocationWrapper;->commandType:I

    .line 24
    iput-object p2, p0, Lcom/google/glass/voice/InvocationWrapper;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/glass/app/VoiceTrigger;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILcom/google/glass/voice/InvocationWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/glass/app/VoiceTrigger;
    .param p2, "x1"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/google/glass/voice/InvocationWrapper$1;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/InvocationWrapper;-><init>(Lcom/google/android/glass/app/VoiceTrigger;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;I)V

    return-void
.end method

.method public static forMirror(ILcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/glass/voice/InvocationWrapper;
    .locals 2
    .param p0, "commandType"    # I
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 32
    new-instance v0, Lcom/google/glass/voice/InvocationWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0}, Lcom/google/glass/voice/InvocationWrapper;-><init>(Lcom/google/android/glass/app/VoiceTrigger;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;I)V

    return-object v0
.end method

.method public static forTrigger(Lcom/google/android/glass/app/VoiceTrigger;)Lcom/google/glass/voice/InvocationWrapper;
    .locals 3
    .param p0, "trigger"    # Lcom/google/android/glass/app/VoiceTrigger;

    .prologue
    .line 28
    new-instance v0, Lcom/google/glass/voice/InvocationWrapper;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/voice/InvocationWrapper;-><init>(Lcom/google/android/glass/app/VoiceTrigger;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;I)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getCommandType()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/glass/voice/InvocationWrapper;->commandType:I

    return v0
.end method

.method public getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/voice/InvocationWrapper;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/voice/InvocationWrapper;->trigger:Lcom/google/android/glass/app/VoiceTrigger;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/glass/voice/InvocationWrapper;->trigger:Lcom/google/android/glass/app/VoiceTrigger;

    invoke-static {p1, v0}, Lcom/google/glass/voice/VoiceTriggerUtils;->getLabel(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/InvocationWrapper;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {p1, v0}, Lcom/google/glass/voice/QualificationUtils;->getQualifiedNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTrigger()Lcom/google/android/glass/app/VoiceTrigger;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/voice/InvocationWrapper;->trigger:Lcom/google/android/glass/app/VoiceTrigger;

    return-object v0
.end method

.method public isMirror()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/voice/InvocationWrapper;->trigger:Lcom/google/android/glass/app/VoiceTrigger;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lcom/google/glass/voice/InvocationWrapper;->trigger:Lcom/google/android/glass/app/VoiceTrigger;

    invoke-static {p1, v1, v0}, Lcom/google/glass/util/ParcelUtils;->writeParcelableToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 66
    iget-object v1, p0, Lcom/google/glass/voice/InvocationWrapper;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v1, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object v0, p0, Lcom/google/glass/voice/InvocationWrapper;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/glass/voice/InvocationWrapper;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 70
    :cond_0
    iget v0, p0, Lcom/google/glass/voice/InvocationWrapper;->commandType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return-void

    .line 66
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
