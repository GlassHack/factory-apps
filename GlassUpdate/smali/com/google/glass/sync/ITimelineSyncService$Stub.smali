.class public abstract Lcom/google/glass/sync/ITimelineSyncService$Stub;
.super Landroid/os/Binder;
.source "ITimelineSyncService.java"

# interfaces
.implements Lcom/google/glass/sync/ITimelineSyncService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/ITimelineSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sync/ITimelineSyncService$Stub$Proxy;
    }
.end annotation


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
    .param p0, "obj"    # Landroid/os/IBinder;

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
    const-string v1, "com.google.glass.sync.ITimelineSyncService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/glass/sync/ITimelineSyncService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/google/glass/sync/ITimelineSyncService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/google/glass/sync/ITimelineSyncService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
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
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 43
    :sswitch_0
    const-string v3, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v3, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/sync/ITimelineSyncListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/sync/ITimelineSyncListener;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Lcom/google/glass/sync/ITimelineSyncListener;
    invoke-virtual {p0, v0}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->addListener(Lcom/google/glass/sync/ITimelineSyncListener;)V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":Lcom/google/glass/sync/ITimelineSyncListener;
    :sswitch_2
    const-string v3, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/sync/ITimelineSyncListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/sync/ITimelineSyncListener;

    move-result-object v0

    .line 59
    .restart local v0    # "_arg0":Lcom/google/glass/sync/ITimelineSyncListener;
    invoke-virtual {p0, v0}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->removeListener(Lcom/google/glass/sync/ITimelineSyncListener;)V

    goto :goto_0

    .line 64
    .end local v0    # "_arg0":Lcom/google/glass/sync/ITimelineSyncListener;
    :sswitch_3
    const-string v3, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->updatePendingSyncSummaryAndNotify()V

    goto :goto_0

    .line 70
    :sswitch_4
    const-string v3, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->deleteSyncedItemsWithMedia()V

    goto :goto_0

    .line 76
    :sswitch_5
    const-string v3, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    sget-object v3, Lcom/google/glass/sync/OverridePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sync/OverridePolicy;

    .line 84
    .local v0, "_arg0":Lcom/google/glass/sync/OverridePolicy;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->setOverridePolicy(Lcom/google/glass/sync/OverridePolicy;)V

    goto :goto_0

    .line 82
    .end local v0    # "_arg0":Lcom/google/glass/sync/OverridePolicy;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/google/glass/sync/OverridePolicy;
    goto :goto_1

    .line 89
    .end local v0    # "_arg0":Lcom/google/glass/sync/OverridePolicy;
    :sswitch_6
    const-string v3, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->getOverridePolicy()Lcom/google/glass/sync/OverridePolicy;

    move-result-object v1

    .line 91
    .local v1, "_result":Lcom/google/glass/sync/OverridePolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {v1, p3, v2}, Lcom/google/glass/sync/OverridePolicy;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 97
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    .end local v1    # "_result":Lcom/google/glass/sync/OverridePolicy;
    :sswitch_7
    const-string v3, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->notifySyncComplete()V

    goto :goto_0

    .line 109
    :sswitch_8
    const-string v3, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->notifySyncItemStart(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string v3, "com.google.glass.sync.ITimelineSyncService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->notifySyncItemComplete(Ljava/lang/String;)V

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
