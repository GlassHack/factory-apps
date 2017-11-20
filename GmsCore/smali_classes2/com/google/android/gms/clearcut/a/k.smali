.class final Lcom/google/android/gms/clearcut/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/clearcut/a/i;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/android/gms/clearcut/a/k;->a:Landroid/os/IBinder;

    .line 69
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/clearcut/a/f;Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 82
    :try_start_0
    const-string v2, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 83
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/clearcut/a/f;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 84
    if-eqz p2, :cond_1

    .line 85
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/clearcut/LogEventParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/clearcut/a/k;->a:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 95
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gms/clearcut/a/k;->a:Landroid/os/IBinder;

    return-object v0
.end method
