.class final Lcom/google/android/youtube/core/model/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/google/android/youtube/core/model/UserAuth;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Lcom/google/android/youtube/core/model/UserAuth;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Landroid/os/Parcel;Lcom/google/android/youtube/core/model/UserAuth;)V

    return-object v0
.end method

.method private static a(I)[Lcom/google/android/youtube/core/model/UserAuth;
    .locals 1

    .prologue
    .line 187
    new-array v0, p0, [Lcom/google/android/youtube/core/model/UserAuth;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-static {p1}, Lcom/google/android/youtube/core/model/m;->a(Landroid/os/Parcel;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-static {p1}, Lcom/google/android/youtube/core/model/m;->a(I)[Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v0

    return-object v0
.end method
