.class final Lcom/google/glass/voice/VoiceCommand$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/VoiceCommand;
    .locals 5

    .prologue
    .line 91
    new-instance v0, Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;JLcom/google/glass/voice/VoiceCommand$1;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceCommand$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/google/glass/voice/VoiceCommand;
    .locals 1

    .prologue
    .line 96
    new-array v0, p1, [Lcom/google/glass/voice/VoiceCommand;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceCommand$1;->newArray(I)[Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    return-object v0
.end method
