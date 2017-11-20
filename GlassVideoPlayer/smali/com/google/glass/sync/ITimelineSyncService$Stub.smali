.class public abstract Lcom/google/glass/sync/ITimelineSyncService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/sync/ITimelineSyncService;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.glass.sync.ITimelineSyncService"

.field static final TRANSACTION_addListener:I = 0x1

.field static final TRANSACTION_deleteSyncedItemsWithMedia:I = 0x4

.field static final TRANSACTION_getOverridePolicy:I = 0x6

.field static final TRANSACTION_notifySyncComplete:I = 0x7

.field static final TRANSACTION_notifySyncItemComplete:I = 0x9

.field static final TRANSACTION_notifySyncItemStart:I = 0x8

.field static final TRANSACTION_removeListener:I = 0x2

.field static final TRANSACTION_setOverridePolicy:I = 0x5

.field static final TRANSACTION_updatePendingSyncSummaryAndNotify:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p0, p0, v0}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/glass/sync/ITimelineSyncService;
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
    const-string v0, "com.google.glass.sync.ITimelineSyncService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/glass/sync/ITimelineSyncService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/google/glass/sync/ITimelineSyncService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/google/glass/sync/ITimelineSyncService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/glass/sync/ITimelineSyncService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v0, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/sync/ITimelineSyncListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/sync/ITimelineSyncListener;

    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->addListener(Lcom/google/glass/sync/ITimelineSyncListener;)V

    move v0, v1

    .line 52
    goto :goto_0

    .line 56
    :sswitch_2
    const-string v0, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/sync/ITimelineSyncListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/sync/ITimelineSyncListener;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->removeListener(Lcom/google/glass/sync/ITimelineSyncListener;)V

    move v0, v1

    .line 60
    goto :goto_0

    .line 64
    :sswitch_3
    const-string v0, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->updatePendingSyncSummaryAndNotify()V

    move v0, v1

    .line 66
    goto :goto_0

    .line 70
    :sswitch_4
    const-string v0, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->deleteSyncedItemsWithMedia()V

    move v0, v1

    .line 72
    goto :goto_0

    .line 76
    :sswitch_5
    const-string v0, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/google/glass/sync/OverridePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sync/OverridePolicy;

    .line 84
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->setOverridePolicy(Lcom/google/glass/sync/OverridePolicy;)V

    move v0, v1

    .line 85
    goto :goto_0

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 89
    :sswitch_6
    const-string v0, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->getOverridePolicy()Lcom/google/glass/sync/OverridePolicy;

    move-result-object v0

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {v0, p3, v1}, Lcom/google/glass/sync/OverridePolicy;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v0, v1

    .line 99
    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 103
    :sswitch_7
    const-string v0, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->notifySyncComplete()V

    move v0, v1

    .line 105
    goto :goto_0

    .line 109
    :sswitch_8
    const-string v0, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p0, v0}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->notifySyncItemStart(Ljava/lang/String;)V

    move v0, v1

    .line 113
    goto/16 :goto_0

    .line 117
    :sswitch_9
    const-string v0, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {p0, v0}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->notifySyncItemComplete(Ljava/lang/String;)V

    move v0, v1

    .line 121
    goto/16 :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
