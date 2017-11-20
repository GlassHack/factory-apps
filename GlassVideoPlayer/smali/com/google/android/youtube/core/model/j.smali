.class public final Lcom/google/android/youtube/core/model/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/google/android/youtube/core/model/SubtitleTrack;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Lcom/google/android/youtube/core/model/SubtitleTrack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/model/SubtitleTrack;-><init>(Landroid/os/Parcel;Lcom/google/android/youtube/core/model/SubtitleTrack;)V

    return-object v0
.end method

.method private static a(I)[Lcom/google/android/youtube/core/model/SubtitleTrack;
    .locals 1

    .prologue
    .line 165
    new-array v0, p0, [Lcom/google/android/youtube/core/model/SubtitleTrack;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-static {p1}, Lcom/google/android/youtube/core/model/j;->a(Landroid/os/Parcel;)Lcom/google/android/youtube/core/model/SubtitleTrack;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-static {p1}, Lcom/google/android/youtube/core/model/j;->a(I)[Lcom/google/android/youtube/core/model/SubtitleTrack;

    move-result-object v0

    return-object v0
.end method
