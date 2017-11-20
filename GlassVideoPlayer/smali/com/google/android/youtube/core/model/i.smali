.class final Lcom/google/android/youtube/core/model/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/google/android/youtube/core/model/Stream;
    .locals 1

    .prologue
    .line 385
    new-instance v0, Lcom/google/android/youtube/core/model/Stream;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/google/android/youtube/core/model/Stream;
    .locals 1

    .prologue
    .line 390
    new-array v0, p0, [Lcom/google/android/youtube/core/model/Stream;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-static {p1}, Lcom/google/android/youtube/core/model/i;->a(Landroid/os/Parcel;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-static {p1}, Lcom/google/android/youtube/core/model/i;->a(I)[Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    return-object v0
.end method
