.class final Lcom/google/glass/voice/network/OpenEndedInputEvent$1;
.super Ljava/lang/Object;
.source "OpenEndedInputEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/OpenEndedInputEvent;
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
        "Lcom/google/glass/voice/network/OpenEndedInputEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/network/OpenEndedInputEvent;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 202
    const-class v1, Lcom/google/glass/voice/network/OpenEndedInputEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    .line 204
    .local v0, "extras":Landroid/os/Bundle;
    new-instance v1, Lcom/google/glass/voice/network/OpenEndedInputEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;-><init>(Landroid/os/Bundle;Lcom/google/glass/voice/network/OpenEndedInputEvent$1;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/glass/voice/network/OpenEndedInputEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 209
    new-array v0, p1, [Lcom/google/glass/voice/network/OpenEndedInputEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$1;->newArray(I)[Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    return-object v0
.end method
