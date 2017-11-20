.class public abstract Lcom/google/android/gms/wearable/internal/ag;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/internal/af;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.google.android.gms.wearable.internal.IWearableListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/wearable/internal/ag;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/af;
    .locals 2

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.google.android.gms.wearable.internal.IWearableListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/wearable/internal/af;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/google/android/gms/wearable/internal/af;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/wearable/internal/ah;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/ah;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "com.google.android.gms.wearable.internal.IWearableListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "com.google.android.gms.wearable.internal.IWearableListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/h;

    invoke-static {p2}, Lcom/google/android/gms/common/data/h;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    .line 58
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ag;->a(Lcom/google/android/gms/common/data/DataHolder;)V

    move v0, v1

    .line 59
    goto :goto_0

    .line 63
    :sswitch_2
    const-string v2, "com.google.android.gms.wearable.internal.IWearableListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    sget-object v0, Lcom/google/android/gms/wearable/internal/MessageEventParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/MessageEventParcelable;

    .line 71
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ag;->a(Lcom/google/android/gms/wearable/internal/MessageEventParcelable;)V

    move v0, v1

    .line 72
    goto :goto_0

    .line 76
    :sswitch_3
    const-string v2, "com.google.android.gms.wearable.internal.IWearableListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    sget-object v0, Lcom/google/android/gms/wearable/internal/NodeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/NodeParcelable;

    .line 84
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ag;->a(Lcom/google/android/gms/wearable/internal/NodeParcelable;)V

    move v0, v1

    .line 85
    goto :goto_0

    .line 89
    :sswitch_4
    const-string v2, "com.google.android.gms.wearable.internal.IWearableListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    sget-object v0, Lcom/google/android/gms/wearable/internal/NodeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/NodeParcelable;

    .line 97
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ag;->b(Lcom/google/android/gms/wearable/internal/NodeParcelable;)V

    move v0, v1

    .line 98
    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
