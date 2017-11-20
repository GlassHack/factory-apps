.class final Lcom/google/android/youtube/core/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;
    .locals 2

    .prologue
    .line 828
    new-instance v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;-><init>(Landroid/os/Parcel;Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;)V

    return-object v0
.end method

.method private static a(I)[Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;
    .locals 1

    .prologue
    .line 833
    new-array v0, p0, [Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-static {p1}, Lcom/google/android/youtube/core/ui/c;->a(Landroid/os/Parcel;)Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-static {p1}, Lcom/google/android/youtube/core/ui/c;->a(I)[Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;

    move-result-object v0

    return-object v0
.end method
