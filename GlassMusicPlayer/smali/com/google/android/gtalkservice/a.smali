.class final Lcom/google/android/gtalkservice/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/google/android/gtalkservice/ConnectionError;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/google/android/gtalkservice/ConnectionError;

    invoke-direct {v0, p0}, Lcom/google/android/gtalkservice/ConnectionError;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/google/android/gtalkservice/ConnectionError;
    .locals 1

    .prologue
    .line 168
    new-array v0, p0, [Lcom/google/android/gtalkservice/ConnectionError;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    invoke-static {p1}, Lcom/google/android/gtalkservice/a;->a(Landroid/os/Parcel;)Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    invoke-static {p1}, Lcom/google/android/gtalkservice/a;->a(I)[Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v0

    return-object v0
.end method
