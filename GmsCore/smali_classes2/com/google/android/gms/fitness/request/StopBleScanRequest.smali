.class public Lcom/google/android/gms/fitness/request/StopBleScanRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/fitness/request/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/android/gms/fitness/request/u;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/u;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->a:I

    .line 34
    invoke-static {p2}, Lcom/google/android/gms/fitness/request/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/request/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->b:Lcom/google/android/gms/fitness/request/h;

    .line 35
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->a:I

    return v0
.end method

.method public final b()Lcom/google/android/gms/fitness/request/h;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->b:Lcom/google/android/gms/fitness/request/h;

    return-object v0
.end method

.method public final c()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->b:Lcom/google/android/gms/fitness/request/h;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/request/h;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 73
    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/request/u;->a(Lcom/google/android/gms/fitness/request/StopBleScanRequest;Landroid/os/Parcel;)V

    .line 74
    return-void
.end method
