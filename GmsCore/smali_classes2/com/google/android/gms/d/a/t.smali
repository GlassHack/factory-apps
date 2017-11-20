.class public abstract Lcom/google/android/gms/d/a/t;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/d/a/s;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/d/a/s;
    .locals 2

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v0, "com.google.android.gms.droidguard.internal.IDroidGuardService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/d/a/s;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/google/android/gms/d/a/s;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/google/android/gms/d/a/u;

    invoke-direct {v0, p0}, Lcom/google/android/gms/d/a/u;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "com.google.android.gms.droidguard.internal.IDroidGuardService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "com.google.android.gms.droidguard.internal.IDroidGuardService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 56
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 59
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 60
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/d/a/t;->a(Lcom/google/android/gms/d/a/m;Ljava/lang/String;Ljava/util/Map;)V

    move v0, v1

    .line 61
    goto :goto_0

    .line 54
    :cond_0
    const-string v0, "com.google.android.gms.droidguard.internal.IDroidGuardCallbacks"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/google/android/gms/d/a/m;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/google/android/gms/d/a/m;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/d/a/o;

    invoke-direct {v0, v2}, Lcom/google/android/gms/d/a/o;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    .line 65
    :sswitch_2
    const-string v2, "com.google.android.gms.droidguard.internal.IDroidGuardService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/d/a/t;->a()Lcom/google/android/gms/d/a/p;

    move-result-object v2

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/google/android/gms/d/a/p;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 69
    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
