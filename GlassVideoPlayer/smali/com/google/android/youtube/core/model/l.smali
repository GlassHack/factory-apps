.class final Lcom/google/android/youtube/core/model/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/model/l;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/l;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;-><init>(Landroid/os/Parcel;Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;)V

    return-object v0
.end method

.method private static a(I)[Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;
    .locals 1

    .prologue
    .line 65
    new-array v0, p0, [Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-static {p1}, Lcom/google/android/youtube/core/model/l;->a(Landroid/os/Parcel;)Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-static {p1}, Lcom/google/android/youtube/core/model/l;->a(I)[Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;

    move-result-object v0

    return-object v0
.end method
