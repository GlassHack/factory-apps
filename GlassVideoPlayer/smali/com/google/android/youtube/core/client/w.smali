.class final Lcom/google/android/youtube/core/client/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/google/android/youtube/core/client/VideoStats2Client$VideoStats2ClientState;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/google/android/youtube/core/client/VideoStats2Client$VideoStats2ClientState;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/client/VideoStats2Client$VideoStats2ClientState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/google/android/youtube/core/client/VideoStats2Client$VideoStats2ClientState;
    .locals 1

    .prologue
    .line 97
    new-array v0, p0, [Lcom/google/android/youtube/core/client/VideoStats2Client$VideoStats2ClientState;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-static {p1}, Lcom/google/android/youtube/core/client/w;->a(Landroid/os/Parcel;)Lcom/google/android/youtube/core/client/VideoStats2Client$VideoStats2ClientState;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-static {p1}, Lcom/google/android/youtube/core/client/w;->a(I)[Lcom/google/android/youtube/core/client/VideoStats2Client$VideoStats2ClientState;

    move-result-object v0

    return-object v0
.end method
