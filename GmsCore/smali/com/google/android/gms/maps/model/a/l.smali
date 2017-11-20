.class final Lcom/google/android/gms/maps/model/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/model/a/j;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/google/android/gms/maps/model/a/l;->a:Landroid/os/IBinder;

    .line 107
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    .prologue
    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 122
    :try_start_0
    const-string v0, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/maps/model/a/l;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 124
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 125
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 128
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    return v0

    .line 128
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/maps/model/a/j;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 190
    :try_start_0
    const-string v1, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 191
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/maps/model/a/j;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 192
    iget-object v1, p0, Lcom/google/android/gms/maps/model/a/l;->a:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 193
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 194
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 197
    :cond_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 198
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 200
    return v0

    .line 191
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 198
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gms/maps/model/a/l;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final b()I
    .locals 5

    .prologue
    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 139
    :try_start_0
    const-string v0, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/maps/model/a/l;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 141
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 142
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 145
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    return v0

    .line 145
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final c()Ljava/util/List;
    .locals 5

    .prologue
    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 156
    :try_start_0
    const-string v0, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/gms/maps/model/a/l;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 158
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 159
    invoke-virtual {v2}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 162
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final d()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 173
    :try_start_0
    const-string v3, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcom/google/android/gms/maps/model/a/l;->a:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 175
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 176
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 179
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    return v0

    .line 179
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final e()I
    .locals 5

    .prologue
    .line 204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 208
    :try_start_0
    const-string v0, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/gms/maps/model/a/l;->a:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 210
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 211
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 214
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 217
    return v0

    .line 214
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
