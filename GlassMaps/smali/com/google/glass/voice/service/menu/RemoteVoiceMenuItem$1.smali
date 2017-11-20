.class final Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v1, v1, [Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    .line 95
    sget-object v2, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 97
    new-instance v3, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;-><init>(Ljava/lang/String;[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;Landroid/os/Bundle;)V

    return-object v3
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;
    .locals 1

    .prologue
    .line 102
    new-array v0, p1, [Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem$1;->newArray(I)[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    move-result-object v0

    return-object v0
.end method
