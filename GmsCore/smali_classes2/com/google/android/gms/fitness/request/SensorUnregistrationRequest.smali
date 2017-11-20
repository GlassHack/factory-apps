.class public Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/fitness/data/o;

.field private final c:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/google/android/gms/fitness/request/m;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;->a:I

    .line 41
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;->b:Lcom/google/android/gms/fitness/data/o;

    .line 44
    iput-object p3, p0, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;->c:Landroid/app/PendingIntent;

    .line 45
    return-void

    .line 41
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/fitness/data/p;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/data/o;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/o;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;->b:Lcom/google/android/gms/fitness/data/o;

    return-object v0
.end method

.method public final b()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;->c:Landroid/app/PendingIntent;

    return-object v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;->a:I

    return v0
.end method

.method final d()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;->b:Lcom/google/android/gms/fitness/data/o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;->b:Lcom/google/android/gms/fitness/data/o;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/data/o;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    const-string v0, "SensorUnregistrationRequest{%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;->b:Lcom/google/android/gms/fitness/data/o;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 96
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/m;->a(Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;Landroid/os/Parcel;I)V

    .line 97
    return-void
.end method
