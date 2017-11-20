.class final Lcom/google/android/gms/internal/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/y;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/y;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/y;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/google/android/gms/internal/y;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-array v0, p0, [Lcom/google/android/gms/internal/y;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/bp;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/bp;->a(I)[Lcom/google/android/gms/internal/y;

    move-result-object v0

    return-object v0
.end method
