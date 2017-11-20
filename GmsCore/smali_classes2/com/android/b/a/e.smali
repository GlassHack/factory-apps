.class public abstract Lcom/android/b/a/e;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/android/b/a/d;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/android/b/a/d;
    .locals 2

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v0, "com.android.internal.policy.IFaceLockInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/b/a/d;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/android/b/a/d;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/android/b/a/f;

    invoke-direct {v0, p0}, Lcom/android/b/a/f;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 43
    :sswitch_0
    const-string v0, "com.android.internal.policy.IFaceLockInterface"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "com.android.internal.policy.IFaceLockInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v6, v7

    :goto_1
    move-object v0, p0

    .line 61
    invoke-virtual/range {v0 .. v6}, Lcom/android/b/a/e;->a(Landroid/os/IBinder;IIIIZ)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 67
    :sswitch_2
    const-string v0, "com.android.internal.policy.IFaceLockInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/b/a/e;->a()V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    :sswitch_3
    const-string v0, "com.android.internal.policy.IFaceLockInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/b/a/e;->b()V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    :sswitch_4
    const-string v0, "com.android.internal.policy.IFaceLockInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/a/b;->a(Landroid/os/IBinder;)Lcom/android/b/a/a;

    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/b/a/e;->a(Lcom/android/b/a/a;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    :sswitch_5
    const-string v0, "com.android.internal.policy.IFaceLockInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/a/b;->a(Landroid/os/IBinder;)Lcom/android/b/a/a;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/b/a/e;->b(Lcom/android/b/a/a;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
