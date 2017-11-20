.class final Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem$1;
.super Ljava/lang/Object;
.source "RemoteVoiceMenuItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "label":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v2, v3, [Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    .line 95
    .local v2, "subMenu":[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;
    sget-object v3, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    .local v0, "extras":Landroid/os/Bundle;
    new-instance v3, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;-><init>(Ljava/lang/String;[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;Landroid/os/Bundle;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 102
    new-array v0, p1, [Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem$1;->newArray(I)[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    move-result-object v0

    return-object v0
.end method
