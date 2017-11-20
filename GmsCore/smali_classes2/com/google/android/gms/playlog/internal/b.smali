.class public abstract Lcom/google/android/gms/playlog/internal/b;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/playlog/internal/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.gms.playlog.internal.IPlayLogService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/playlog/internal/b;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/playlog/internal/a;
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
    const-string v0, "com.google.android.gms.playlog.internal.IPlayLogService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/playlog/internal/a;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/google/android/gms/playlog/internal/a;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/google/android/gms/playlog/internal/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/playlog/internal/c;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "com.google.android.gms.playlog.internal.IPlayLogService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.google.android.gms.playlog.internal.IPlayLogService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    sget-object v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->CREATOR:Lcom/google/android/gms/playlog/internal/h;

    invoke-static {p2}, Lcom/google/android/gms/playlog/internal/h;->a(Landroid/os/Parcel;)Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    move-result-object v0

    .line 63
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    sget-object v1, Lcom/google/android/gms/playlog/internal/LogEvent;->CREATOR:Lcom/google/android/gms/playlog/internal/f;

    invoke-static {p2}, Lcom/google/android/gms/playlog/internal/f;->a(Landroid/os/Parcel;)Lcom/google/android/gms/playlog/internal/LogEvent;

    move-result-object v1

    .line 69
    :cond_0
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/playlog/internal/b;->a(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V

    move v0, v2

    .line 70
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 60
    goto :goto_1

    .line 74
    :sswitch_2
    const-string v0, "com.google.android.gms.playlog.internal.IPlayLogService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    sget-object v1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->CREATOR:Lcom/google/android/gms/playlog/internal/h;

    invoke-static {p2}, Lcom/google/android/gms/playlog/internal/h;->a(Landroid/os/Parcel;)Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    move-result-object v1

    .line 85
    :cond_2
    sget-object v3, Lcom/google/android/gms/playlog/internal/LogEvent;->CREATOR:Lcom/google/android/gms/playlog/internal/f;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 86
    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/playlog/internal/b;->a(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Ljava/util/List;)V

    move v0, v2

    .line 87
    goto :goto_0

    .line 91
    :sswitch_3
    const-string v0, "com.google.android.gms.playlog.internal.IPlayLogService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 96
    sget-object v1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->CREATOR:Lcom/google/android/gms/playlog/internal/h;

    invoke-static {p2}, Lcom/google/android/gms/playlog/internal/h;->a(Landroid/os/Parcel;)Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    move-result-object v1

    .line 102
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 103
    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/playlog/internal/b;->a(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;[B)V

    move v0, v2

    .line 104
    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
