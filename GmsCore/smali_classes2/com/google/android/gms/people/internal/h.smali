.class final Lcom/google/android/gms/people/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/people/internal/f;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1063
    iput-object p1, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    .line 1064
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 1228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1232
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1233
    if-eqz p1, :cond_0

    .line 1234
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1235
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1240
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1241
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1242
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1243
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1250
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1253
    return-object v0

    .line 1238
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1250
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 1246
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;ZLjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1397
    :try_start_0
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1398
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1399
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1400
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1401
    invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1402
    invoke-virtual {v3, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    iget-object v1, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1404
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 1405
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1406
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1413
    :cond_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1414
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1416
    return-object v0

    :cond_2
    move-object v2, v0

    .line 1398
    goto :goto_0

    .line 1413
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1414
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 1420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1424
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1425
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1426
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1427
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1428
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1429
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1430
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1437
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1440
    return-object v0

    .line 1433
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1437
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 1592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1596
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1597
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1598
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1599
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1600
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1601
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1602
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1603
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1610
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1611
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1613
    return-object v0

    .line 1606
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1610
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1611
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JZ)Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1791
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1794
    :try_start_0
    const-string v3, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1795
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1796
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1797
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1798
    if-eqz p5, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1799
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1800
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1801
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1802
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1809
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1812
    return-object v0

    .line 1805
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1809
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JZZ)Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1816
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1817
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1820
    :try_start_0
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1821
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1822
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1823
    invoke-virtual {v3, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1824
    if-eqz p5, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1825
    if-eqz p6, :cond_1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1826
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v1, 0xcd

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1827
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 1828
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1829
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1836
    :goto_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1837
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1839
    return-object v0

    :cond_0
    move v2, v1

    .line 1824
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1825
    goto :goto_1

    .line 1832
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 1836
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1837
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;)Lcom/google/android/gms/common/internal/u;
    .locals 5

    .prologue
    .line 2195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2199
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2200
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2201
    if-eqz p2, :cond_1

    .line 2202
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2203
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/people/model/AvatarReference;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2208
    :goto_1
    if-eqz p3, :cond_2

    .line 2209
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2210
    const/4 v0, 0x0

    invoke-virtual {p3, v1, v0}, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2215
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x1fc

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2216
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2217
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/v;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2220
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2223
    return-object v0

    .line 2200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2206
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2220
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 2213
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;I)Lcom/google/android/gms/common/internal/u;
    .locals 5

    .prologue
    .line 2227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2231
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2232
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2233
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2234
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2235
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x1fd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2236
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2237
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/v;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2240
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2241
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2243
    return-object v0

    .line 2232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2240
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2241
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/internal/u;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 2169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2172
    :try_start_0
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2173
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2174
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2175
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2176
    if-eqz p4, :cond_1

    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2177
    invoke-virtual {v3, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2178
    invoke-virtual {v3, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2179
    invoke-virtual {v3, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2180
    invoke-virtual {v3, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2181
    invoke-virtual {v3, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2182
    if-eqz p10, :cond_2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2183
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v1, 0x1fb

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2184
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 2185
    invoke-virtual {v4}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/v;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2188
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2189
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 2191
    return-object v0

    .line 2173
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 2176
    goto :goto_1

    :cond_2
    move v0, v1

    .line 2182
    goto :goto_2

    .line 2188
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2189
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;JZ)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1194
    :try_start_0
    const-string v1, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1195
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1196
    invoke-virtual {v2, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1197
    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/4 v1, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1199
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1203
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1204
    return-void

    .line 1195
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1202
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1203
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 1970
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1973
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1974
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1975
    if-eqz p2, :cond_1

    .line 1976
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1977
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1982
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x12e

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1983
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1986
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1987
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    return-void

    .line 1974
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1980
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1986
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1987
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Lcom/google/android/gms/people/identity/internal/AccountToken;Ljava/util/List;Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;)V
    .locals 5

    .prologue
    .line 2035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2036
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2038
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2039
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2040
    if-eqz p2, :cond_1

    .line 2041
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2042
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/people/identity/internal/AccountToken;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2047
    :goto_1
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2048
    if-eqz p4, :cond_2

    .line 2049
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2050
    const/4 v0, 0x0

    invoke-virtual {p4, v1, v0}, Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2055
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x1f5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2056
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2059
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2060
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2061
    return-void

    .line 2039
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2045
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2059
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2060
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 2053
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1742
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1743
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1744
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1745
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1746
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1749
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1751
    return-void

    .line 1743
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1749
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;II)V
    .locals 5

    .prologue
    .line 1173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1176
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1177
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1178
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1179
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1180
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1182
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1187
    return-void

    .line 1177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1185
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1758
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1759
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1760
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1761
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1762
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1763
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1766
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1767
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1768
    return-void

    .line 1759
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1766
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1767
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 1772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1775
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1776
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1777
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1778
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1779
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1780
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x193

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1781
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1784
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1786
    return-void

    .line 1776
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1784
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5

    .prologue
    .line 1915
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1918
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1919
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1920
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1921
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1922
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1923
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1924
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1925
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1928
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1929
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1930
    return-void

    .line 1919
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1928
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1929
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5

    .prologue
    .line 1446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1449
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1450
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1451
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1452
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1453
    if-eqz p4, :cond_1

    .line 1454
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1455
    const/4 v0, 0x0

    invoke-virtual {p4, v1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1460
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1461
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1464
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1466
    return-void

    .line 1450
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1458
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1464
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1549
    :try_start_0
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1550
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1551
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1552
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1553
    if-eqz p4, :cond_1

    .line 1554
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1555
    const/4 v2, 0x0

    invoke-virtual {p4, v3, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1560
    :goto_1
    if-eqz p5, :cond_2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1561
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1562
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1565
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1566
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1567
    return-void

    .line 1550
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1558
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1565
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1566
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_2
    move v0, v1

    .line 1560
    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1935
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1937
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1938
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1939
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1940
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1941
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1942
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0xcc

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1943
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1946
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1948
    return-void

    .line 1938
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1946
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 1131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1134
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1135
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1136
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1140
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1142
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1147
    return-void

    .line 1135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1145
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1572
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1574
    :try_start_0
    const-string v1, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1575
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1576
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1577
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1578
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1579
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1580
    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1581
    if-eqz p7, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1582
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v1, 0x13

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1583
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1586
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1587
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1588
    return-void

    .line 1575
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1586
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1587
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1304
    :try_start_0
    const-string v1, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1305
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1306
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    if-eqz p6, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1311
    invoke-virtual {v2, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1312
    invoke-virtual {v2, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1313
    invoke-virtual {v2, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1314
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v1, 0xca

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1315
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1318
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1319
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1320
    return-void

    .line 1305
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1318
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1319
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1328
    :try_start_0
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1329
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1330
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1333
    invoke-virtual {v3, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1334
    if-eqz p6, :cond_1

    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1335
    invoke-virtual {v3, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1336
    invoke-virtual {v3, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1337
    invoke-virtual {v3, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1338
    if-eqz p10, :cond_2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1339
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v1, 0xcb

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1340
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1343
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1344
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1345
    return-void

    .line 1329
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1334
    goto :goto_1

    :cond_2
    move v0, v1

    .line 1338
    goto :goto_2

    .line 1343
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1344
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/String;ZII)V
    .locals 6

    .prologue
    .line 1349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1352
    :try_start_0
    const-string v1, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1353
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1354
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1358
    if-eqz p6, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1359
    invoke-virtual {v2, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1360
    invoke-virtual {v2, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1361
    invoke-virtual {v2, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1362
    if-eqz p10, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1363
    move/from16 v0, p11

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1364
    move/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1365
    iget-object v1, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v4, 0x192

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1366
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1369
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1370
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1371
    return-void

    .line 1353
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1358
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1362
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 1369
    :catchall_0
    move-exception v1

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1370
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1877
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1878
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1880
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1881
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1882
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1883
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1884
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1885
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1886
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1887
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1890
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1892
    return-void

    .line 1881
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1890
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 1992
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1993
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1995
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1996
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1997
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1998
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1999
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2000
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2001
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2002
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2003
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x12f

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2004
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2007
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2009
    return-void

    .line 1996
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2007
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    .prologue
    .line 1896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1899
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1900
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1901
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1902
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1903
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1905
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1906
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1909
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1910
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1911
    return-void

    .line 1900
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1909
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1910
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IZJ)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1154
    :try_start_0
    const-string v1, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1155
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1156
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1160
    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1161
    if-eqz p7, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1162
    invoke-virtual {v2, p8, p9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1163
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/4 v1, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1164
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1168
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1169
    return-void

    .line 1155
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1167
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1168
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IZJLjava/lang/String;I)V
    .locals 6

    .prologue
    .line 1617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1620
    :try_start_0
    const-string v1, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1621
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1622
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1623
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1624
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1625
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1626
    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1627
    if-eqz p7, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1628
    invoke-virtual {v2, p8, p9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1629
    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1630
    move/from16 v0, p11

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1631
    iget-object v1, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1632
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1635
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1636
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1637
    return-void

    .line 1621
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1627
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1635
    :catchall_0
    move-exception v1

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1636
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IZJLjava/lang/String;II)V
    .locals 6

    .prologue
    .line 1641
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1644
    :try_start_0
    const-string v1, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1645
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1646
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1647
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1648
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1649
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1650
    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1651
    if-eqz p7, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1652
    invoke-virtual {v2, p8, p9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1653
    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1654
    move/from16 v0, p11

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1655
    move/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1656
    iget-object v1, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v4, 0x191

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1657
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1660
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1661
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1662
    return-void

    .line 1645
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1651
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1660
    :catchall_0
    move-exception v1

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1661
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IZJLjava/lang/String;III)V
    .locals 6

    .prologue
    .line 1666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1669
    :try_start_0
    const-string v1, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1670
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1671
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1672
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1673
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1674
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1675
    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1676
    if-eqz p7, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1677
    invoke-virtual {v2, p8, p9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1678
    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1679
    move/from16 v0, p11

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1680
    move/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1681
    move/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1682
    iget-object v1, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v4, 0x194

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1683
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1686
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1687
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1688
    return-void

    .line 1670
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1676
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1686
    :catchall_0
    move-exception v1

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1687
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 5

    .prologue
    .line 1470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1473
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1474
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1475
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1476
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1477
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1478
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1479
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1480
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1481
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1484
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1486
    return-void

    .line 1474
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1484
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V
    .locals 5

    .prologue
    .line 1712
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1715
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1716
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1717
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1718
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1719
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1720
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1721
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1722
    if-eqz p7, :cond_1

    .line 1723
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1724
    const/4 v0, 0x0

    invoke-virtual {p7, v1, v0}, Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1729
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1730
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1733
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1735
    return-void

    .line 1716
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1727
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1733
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1212
    :try_start_0
    const-string v1, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1213
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1214
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1217
    if-eqz p5, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/4 v1, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1219
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1223
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1224
    return-void

    .line 1213
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1222
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1223
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1261
    :try_start_0
    const-string v1, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1262
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1263
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1266
    if-eqz p5, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1267
    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1268
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v1, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1269
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1272
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1273
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1274
    return-void

    .line 1262
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1272
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1273
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1282
    :try_start_0
    const-string v1, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1283
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1284
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1287
    if-eqz p5, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1288
    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1289
    invoke-virtual {v2, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1290
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v1, 0xc9

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1291
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1294
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1295
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1296
    return-void

    .line 1283
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1294
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1295
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1378
    :try_start_0
    const-string v1, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1379
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1380
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1381
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1382
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1383
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v1, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1384
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1387
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1388
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1389
    return-void

    .line 1379
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1387
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1388
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1092
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1093
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1095
    :try_start_0
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1096
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1097
    if-eqz p2, :cond_1

    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1098
    if-eqz p3, :cond_2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1099
    invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {v3, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1102
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1106
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1107
    return-void

    .line 1096
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1097
    goto :goto_1

    :cond_2
    move v0, v1

    .line 1098
    goto :goto_2

    .line 1105
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1106
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/people/internal/c;ZZLjava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1114
    :try_start_0
    const-string v2, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1115
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1116
    if-eqz p2, :cond_1

    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    if-eqz p3, :cond_2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v3, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {v3, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1121
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v1, 0x131

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1122
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1125
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1126
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1127
    return-void

    .line 1115
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1116
    goto :goto_1

    :cond_2
    move v0, v1

    .line 1117
    goto :goto_2

    .line 1125
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1126
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1493
    :try_start_0
    const-string v3, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1494
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1495
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1496
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1499
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1501
    return-void

    .line 1499
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1509
    :try_start_0
    const-string v3, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1510
    iget-object v3, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1511
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1512
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 1515
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1518
    return v0

    .line 1515
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 1522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1526
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1528
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1529
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1530
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1531
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1532
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1539
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1540
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1542
    return-object v0

    .line 1535
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1539
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1540
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/people/internal/c;JZ)Lcom/google/android/gms/common/internal/u;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2087
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 2090
    :try_start_0
    const-string v1, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2091
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2092
    invoke-virtual {v2, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2093
    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2094
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v1, 0x1f7

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2095
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 2096
    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/v;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2099
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 2100
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2102
    return-object v0

    .line 2091
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2099
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 2100
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;)Lcom/google/android/gms/common/internal/u;
    .locals 5

    .prologue
    .line 2106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2110
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2111
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2112
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2113
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x1f8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2114
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2115
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/v;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2118
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2121
    return-object v0

    .line 2111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2118
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/u;
    .locals 5

    .prologue
    .line 2065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2066
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2069
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2070
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2071
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2072
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2073
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2074
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x1f6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2075
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2076
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/v;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2079
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2082
    return-object v0

    .line 2070
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2079
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/u;
    .locals 5

    .prologue
    .line 2125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2129
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2130
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2131
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2132
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2133
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2134
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2135
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x1f9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2136
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2137
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/v;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2140
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2143
    return-object v0

    .line 2130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2140
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/people/internal/c;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 2013
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2014
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2016
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2017
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2018
    if-eqz p2, :cond_1

    .line 2019
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2020
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2025
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x130

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2026
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2029
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2030
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2031
    return-void

    .line 2017
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2023
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2029
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2030
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1844
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1846
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1847
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1848
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1849
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1850
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1851
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1854
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1856
    return-void

    .line 1847
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1854
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 1952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1955
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1956
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1957
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1958
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1959
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1960
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x12d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1961
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1964
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1965
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1966
    return-void

    .line 1956
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1964
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1965
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 1692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1693
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1695
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1696
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1697
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1698
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1699
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1700
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1701
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1702
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1703
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1706
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1708
    return-void

    .line 1696
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1706
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final c(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/internal/u;
    .locals 5

    .prologue
    .line 2147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2151
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2152
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2153
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2154
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2155
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2156
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x1fa

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2157
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2158
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/v;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2161
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2164
    return-object v0

    .line 2152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2161
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final c(Lcom/google/android/gms/people/internal/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1860
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1863
    :try_start_0
    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1864
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/internal/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1865
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1866
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1867
    iget-object v0, p0, Lcom/google/android/gms/people/internal/h;->a:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1868
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1871
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1872
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1873
    return-void

    .line 1864
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1871
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1872
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
