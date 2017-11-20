.class final Lcom/google/android/youtube/core/model/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/model/k;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/k;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/google/android/youtube/core/model/SubtitleWindowSettings;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;-><init>(Landroid/os/Parcel;Lcom/google/android/youtube/core/model/SubtitleWindowSettings;)V

    return-object v0
.end method

.method private static a(I)[Lcom/google/android/youtube/core/model/SubtitleWindowSettings;
    .locals 1

    .prologue
    .line 103
    new-array v0, p0, [Lcom/google/android/youtube/core/model/SubtitleWindowSettings;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-static {p1}, Lcom/google/android/youtube/core/model/k;->a(Landroid/os/Parcel;)Lcom/google/android/youtube/core/model/SubtitleWindowSettings;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-static {p1}, Lcom/google/android/youtube/core/model/k;->a(I)[Lcom/google/android/youtube/core/model/SubtitleWindowSettings;

    move-result-object v0

    return-object v0
.end method
