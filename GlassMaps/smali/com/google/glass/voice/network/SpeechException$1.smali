.class final Lcom/google/glass/voice/network/SpeechException$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/network/SpeechException;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/google/glass/voice/network/SpeechException;

    invoke-direct {v0, p1}, Lcom/google/glass/voice/network/SpeechException;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/SpeechException$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/google/glass/voice/network/SpeechException;
    .locals 1

    .prologue
    .line 62
    new-array v0, p1, [Lcom/google/glass/voice/network/SpeechException;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/SpeechException$1;->newArray(I)[Lcom/google/glass/voice/network/SpeechException;

    move-result-object v0

    return-object v0
.end method
