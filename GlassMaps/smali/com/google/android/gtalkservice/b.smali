.class final Lcom/google/android/gtalkservice/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/google/android/gtalkservice/ConnectionState;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/google/android/gtalkservice/ConnectionState;

    invoke-direct {v0, p0}, Lcom/google/android/gtalkservice/ConnectionState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/google/android/gtalkservice/ConnectionState;
    .locals 1

    .prologue
    .line 136
    new-array v0, p0, [Lcom/google/android/gtalkservice/ConnectionState;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-static {p1}, Lcom/google/android/gtalkservice/b;->a(Landroid/os/Parcel;)Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-static {p1}, Lcom/google/android/gtalkservice/b;->a(I)[Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v0

    return-object v0
.end method
