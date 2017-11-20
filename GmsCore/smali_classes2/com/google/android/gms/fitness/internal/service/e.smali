.class final Lcom/google/android/gms/fitness/internal/service/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/internal/service/c;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/google/android/gms/fitness/internal/service/e;->a:Landroid/os/IBinder;

    .line 106
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;Lcom/google/android/gms/fitness/internal/e;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 122
    :try_start_0
    const-string v2, "com.google.android.gms.fitness.internal.service.IFitnessSensorService"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 123
    if-eqz p1, :cond_1

    .line 124
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 130
    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/android/gms/fitness/internal/e;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/gms/fitness/internal/service/e;->a:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 135
    return-void

    .line 128
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/fitness/internal/service/FitnessUnregistrationRequest;Lcom/google/android/gms/fitness/internal/v;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 166
    :try_start_0
    const-string v2, "com.google.android.gms.fitness.internal.service.IFitnessSensorService"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 167
    if-eqz p1, :cond_1

    .line 168
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/fitness/internal/service/FitnessUnregistrationRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 174
    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/android/gms/fitness/internal/v;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/fitness/internal/service/e;->a:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 179
    return-void

    .line 172
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;Lcom/google/android/gms/fitness/internal/v;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 144
    :try_start_0
    const-string v2, "com.google.android.gms.fitness.internal.service.IFitnessSensorService"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 145
    if-eqz p1, :cond_1

    .line 146
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 152
    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/android/gms/fitness/internal/v;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/fitness/internal/service/e;->a:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    return-void

    .line 150
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/gms/fitness/internal/service/e;->a:Landroid/os/IBinder;

    return-object v0
.end method
