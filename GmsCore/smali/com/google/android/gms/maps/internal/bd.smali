.class final Lcom/google/android/gms/maps/internal/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/internal/bb;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/gms/maps/internal/bd;->a:Landroid/os/IBinder;

    .line 65
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 77
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 80
    :try_start_0
    const-string v4, "com.google.android.gms.maps.internal.IOnMyLocationButtonClickListener"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 81
    iget-object v4, p0, Lcom/google/android/gms/maps/internal/bd;->a:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 82
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 83
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 89
    return v0

    :cond_0
    move v0, v1

    .line 83
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/maps/internal/bd;->a:Landroid/os/IBinder;

    return-object v0
.end method
