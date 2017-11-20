.class final Lcom/google/glass/musicplayer/cards/Category$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/musicplayer/cards/Category;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/google/glass/musicplayer/cards/Category;

    invoke-direct {v0, p1}, Lcom/google/glass/musicplayer/cards/Category;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/glass/musicplayer/cards/Category$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/musicplayer/cards/Category;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/google/glass/musicplayer/cards/Category;
    .locals 1

    .prologue
    .line 36
    new-array v0, p1, [Lcom/google/glass/musicplayer/cards/Category;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/glass/musicplayer/cards/Category$1;->newArray(I)[Lcom/google/glass/musicplayer/cards/Category;

    move-result-object v0

    return-object v0
.end method
