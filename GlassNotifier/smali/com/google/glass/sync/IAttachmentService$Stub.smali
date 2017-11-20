.class public abstract Lcom/google/glass/sync/IAttachmentService$Stub;
.super Landroid/os/Binder;
.source "IAttachmentService.java"

# interfaces
.implements Lcom/google/glass/sync/IAttachmentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/IAttachmentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sync/IAttachmentService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.glass.sync.IAttachmentService"

.field static final TRANSACTION_decrementRefcount:I = 0x7

.field static final TRANSACTION_deleteMappingsOlderThan:I = 0xb

.field static final TRANSACTION_getIdMappingForPath:I = 0xa

.field static final TRANSACTION_getLastModifiedMillis:I = 0x8

.field static final TRANSACTION_getPath:I = 0x3

.field static final TRANSACTION_incrementRefcount:I = 0x2

.field static final TRANSACTION_isSynced:I = 0x6

.field static final TRANSACTION_markAsSynced:I = 0x5

.field static final TRANSACTION_openAttachment:I = 0x4

.field static final TRANSACTION_store:I = 0x1

.field static final TRANSACTION_storePathToIdMapping:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.glass.sync.IAttachmentService"

    invoke-virtual {p0, p0, v0}, Lcom/google/glass/sync/IAttachmentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/glass/sync/IAttachmentService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

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
    const-string v1, "com.google.glass.sync.IAttachmentService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/glass/sync/IAttachmentService;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/google/glass/sync/IAttachmentService;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/google/glass/sync/IAttachmentService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/glass/sync/IAttachmentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 47
    :sswitch_0
    const-string v3, "com.google.glass.sync.IAttachmentService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v3, "com.google.glass.sync.IAttachmentService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    sget-object v3, Lcom/google/glass/io/FileType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/io/FileType;

    .line 61
    .local v0, "_arg0":Lcom/google/glass/io/FileType;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/google/glass/sync/IAttachmentService$Stub;->store(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .end local v0    # "_arg0":Lcom/google/glass/io/FileType;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/google/glass/io/FileType;
    goto :goto_1

    .line 69
    .end local v0    # "_arg0":Lcom/google/glass/io/FileType;
    :sswitch_2
    const-string v7, "com.google.glass.sync.IAttachmentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/glass/sync/IAttachmentService$Stub;->incrementRefcount(Ljava/lang/String;)Z

    move-result v4

    .line 73
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v4, :cond_1

    move v3, v6

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_3
    const-string v3, "com.google.glass.sync.IAttachmentService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    sget-object v3, Lcom/google/glass/io/FileType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/io/FileType;

    .line 88
    .local v0, "_arg0":Lcom/google/glass/io/FileType;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/google/glass/sync/IAttachmentService$Stub;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    .end local v0    # "_arg0":Lcom/google/glass/io/FileType;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/google/glass/io/FileType;
    goto :goto_2

    .line 96
    .end local v0    # "_arg0":Lcom/google/glass/io/FileType;
    :sswitch_4
    const-string v7, "com.google.glass.sync.IAttachmentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    .line 99
    sget-object v7, Lcom/google/glass/io/FileType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/io/FileType;

    .line 105
    .restart local v0    # "_arg0":Lcom/google/glass/io/FileType;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/google/glass/sync/IAttachmentService$Stub;->openAttachment(Lcom/google/glass/io/FileType;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 107
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v4, :cond_4

    .line 109
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    invoke-virtual {v4, p3, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 102
    .end local v0    # "_arg0":Lcom/google/glass/io/FileType;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/google/glass/io/FileType;
    goto :goto_3

    .line 113
    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 119
    .end local v0    # "_arg0":Lcom/google/glass/io/FileType;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_5
    const-string v7, "com.google.glass.sync.IAttachmentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/google/glass/sync/IAttachmentService$Stub;->markAsSynced(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 125
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v4, :cond_5

    move v3, v6

    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_6
    const-string v7, "com.google.glass.sync.IAttachmentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/glass/sync/IAttachmentService$Stub;->isSynced(Ljava/lang/String;)Z

    move-result v4

    .line 135
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v4, :cond_6

    move v3, v6

    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 141
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_7
    const-string v7, "com.google.glass.sync.IAttachmentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/glass/sync/IAttachmentService$Stub;->decrementRefcount(Ljava/lang/String;)Z

    move-result v4

    .line 145
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v4, :cond_7

    move v3, v6

    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 151
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_8
    const-string v3, "com.google.glass.sync.IAttachmentService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/glass/sync/IAttachmentService$Stub;->getLastModifiedMillis(Ljava/lang/String;)J

    move-result-wide v4

    .line 155
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 161
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":J
    :sswitch_9
    const-string v7, "com.google.glass.sync.IAttachmentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 166
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/google/glass/sync/IAttachmentService$Stub;->storePathToIdMapping(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 167
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v4, :cond_8

    move v3, v6

    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 173
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_a
    const-string v3, "com.google.glass.sync.IAttachmentService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/glass/sync/IAttachmentService$Stub;->getIdMappingForPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string v3, "com.google.glass.sync.IAttachmentService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 186
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/google/glass/sync/IAttachmentService$Stub;->deleteMappingsOlderThan(J)I

    move-result v4

    .line 187
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 43
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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
