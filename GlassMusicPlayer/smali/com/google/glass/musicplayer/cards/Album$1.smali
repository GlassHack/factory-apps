.class final Lcom/google/glass/musicplayer/cards/Album$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/musicplayer/cards/Album;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/glass/musicplayer/cards/Album;

    invoke-direct {v0, p1}, Lcom/google/glass/musicplayer/cards/Album;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/google/glass/musicplayer/cards/Album$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/musicplayer/cards/Album;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/google/glass/musicplayer/cards/Album;
    .locals 1

    .prologue
    .line 25
    new-array v0, p1, [Lcom/google/glass/musicplayer/cards/Album;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/google/glass/musicplayer/cards/Album$1;->newArray(I)[Lcom/google/glass/musicplayer/cards/Album;

    move-result-object v0

    return-object v0
.end method
