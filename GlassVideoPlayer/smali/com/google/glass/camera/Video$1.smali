.class final Lcom/google/glass/camera/Video$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/camera/Video;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/glass/camera/Video;

    invoke-direct {v0, p1}, Lcom/google/glass/camera/Video;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/Video$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/camera/Video;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/google/glass/camera/Video;
    .locals 1

    .prologue
    .line 22
    new-array v0, p1, [Lcom/google/glass/camera/Video;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/Video$1;->newArray(I)[Lcom/google/glass/camera/Video;

    move-result-object v0

    return-object v0
.end method
