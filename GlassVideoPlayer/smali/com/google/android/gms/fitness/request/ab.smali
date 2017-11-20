.class public Lcom/google/android/gms/fitness/request/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/fitness/request/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/c;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/ab;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/ab;->a:I

    invoke-static {p2}, Lcom/google/android/gms/fitness/request/r;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/request/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/ab;->b:Lcom/google/android/gms/fitness/request/q;

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/ab;->a:I

    return v0
.end method

.method public final b()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ab;->b:Lcom/google/android/gms/fitness/request/q;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/request/q;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/c;->a(Lcom/google/android/gms/fitness/request/ab;Landroid/os/Parcel;I)V

    return-void
.end method
