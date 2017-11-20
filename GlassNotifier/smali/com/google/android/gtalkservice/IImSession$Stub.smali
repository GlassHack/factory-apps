.class public abstract Lcom/google/android/gtalkservice/IImSession$Stub;
.super Landroid/os/Binder;
.source "IImSession.java"

# interfaces
.implements Lcom/google/android/gtalkservice/IImSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/IImSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/IImSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.gtalkservice.IImSession"

.field static final TRANSACTION_addConnectionStateListener:I = 0x7

.field static final TRANSACTION_addContact:I = 0xd

.field static final TRANSACTION_addGroupChatInvitationListener:I = 0x1b

.field static final TRANSACTION_addRemoteChatListener:I = 0x1d

.field static final TRANSACTION_addRemoteJingleInfoStanzaListener:I = 0x2a

.field static final TRANSACTION_addRemoteRosterListener:I = 0x1f

.field static final TRANSACTION_addRemoteSessionStanzaListener:I = 0x27

.field static final TRANSACTION_approveSubscriptionRequest:I = 0x14

.field static final TRANSACTION_blockContact:I = 0x10

.field static final TRANSACTION_clearContactFlags:I = 0x13

.field static final TRANSACTION_closeAllChatSessions:I = 0x24

.field static final TRANSACTION_createChatSession:I = 0x16

.field static final TRANSACTION_createGroupChatSession:I = 0x18

.field static final TRANSACTION_declineGroupChatInvitation:I = 0x1a

.field static final TRANSACTION_declineSubscriptionRequest:I = 0x15

.field static final TRANSACTION_editContact:I = 0xe

.field static final TRANSACTION_getAccountId:I = 0x1

.field static final TRANSACTION_getChatSession:I = 0x17

.field static final TRANSACTION_getConnectionState:I = 0x6

.field static final TRANSACTION_getJid:I = 0x3

.field static final TRANSACTION_getPresence:I = 0xa

.field static final TRANSACTION_getUsername:I = 0x2

.field static final TRANSACTION_goOffRecordInRoom:I = 0x22

.field static final TRANSACTION_goOffRecordWithContacts:I = 0x21

.field static final TRANSACTION_hideContact:I = 0x12

.field static final TRANSACTION_inviteContactsToGroupchat:I = 0x2e

.field static final TRANSACTION_isOffRecordWithContact:I = 0x23

.field static final TRANSACTION_joinGroupChatSession:I = 0x19

.field static final TRANSACTION_login:I = 0x4

.field static final TRANSACTION_logout:I = 0x5

.field static final TRANSACTION_pinContact:I = 0x11

.field static final TRANSACTION_pruneOldChatSessions:I = 0x25

.field static final TRANSACTION_queryJingleInfo:I = 0x29

.field static final TRANSACTION_removeConnectionStateListener:I = 0x8

.field static final TRANSACTION_removeContact:I = 0xf

.field static final TRANSACTION_removeGroupChatInvitationListener:I = 0x1c

.field static final TRANSACTION_removeRemoteChatListener:I = 0x1e

.field static final TRANSACTION_removeRemoteJingleInfoStanzaListener:I = 0x2b

.field static final TRANSACTION_removeRemoteRosterListener:I = 0x20

.field static final TRANSACTION_removeRemoteSessionStanzaListener:I = 0x28

.field static final TRANSACTION_requestBatchedBuddyPresence:I = 0x2c

.field static final TRANSACTION_sendCallPerfStatsStanza:I = 0x2d

.field static final TRANSACTION_sendSessionStanza:I = 0x26

.field static final TRANSACTION_setPresence:I = 0x9

.field static final TRANSACTION_uploadAvatar:I = 0xb

.field static final TRANSACTION_uploadAvatarFromDb:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IImSession;
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
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gtalkservice/IImSession;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/google/android/gtalkservice/IImSession;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/google/android/gtalkservice/IImSession$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/gtalkservice/IImSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 490
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 47
    :sswitch_0
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->getAccountId()J

    move-result-wide v10

    .line 54
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 56
    const/4 v1, 0x1

    goto :goto_0

    .line 60
    .end local v10    # "_result":J
    :sswitch_2
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->getUsername()Ljava/lang/String;

    move-result-object v10

    .line 62
    .local v10, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    const/4 v1, 0x1

    goto :goto_0

    .line 68
    .end local v10    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->getJid()Ljava/lang/String;

    move-result-object v10

    .line 70
    .restart local v10    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    const/4 v1, 0x1

    goto :goto_0

    .line 76
    .end local v10    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    .line 81
    .local v4, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v2, v4}, Lcom/google/android/gtalkservice/IImSession$Stub;->login(Ljava/lang/String;Z)V

    .line 82
    const/4 v1, 0x1

    goto :goto_0

    .line 80
    .end local v4    # "_arg1":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 86
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->logout()V

    .line 88
    const/4 v1, 0x1

    goto :goto_0

    .line 92
    :sswitch_6
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v10

    .line 94
    .local v10, "_result":Lcom/google/android/gtalkservice/ConnectionState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v10, :cond_1

    .line 96
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    const/4 v1, 0x1

    invoke-virtual {v10, p3, v1}, Lcom/google/android/gtalkservice/ConnectionState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 100
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 106
    .end local v10    # "_result":Lcom/google/android/gtalkservice/ConnectionState;
    :sswitch_7
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IConnectionStateListener;

    move-result-object v2

    .line 109
    .local v2, "_arg0":Lcom/google/android/gtalkservice/IConnectionStateListener;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 115
    .end local v2    # "_arg0":Lcom/google/android/gtalkservice/IConnectionStateListener;
    :sswitch_8
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IConnectionStateListener;

    move-result-object v2

    .line 118
    .restart local v2    # "_arg0":Lcom/google/android/gtalkservice/IConnectionStateListener;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->removeConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 124
    .end local v2    # "_arg0":Lcom/google/android/gtalkservice/IConnectionStateListener;
    :sswitch_9
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    sget-object v1, Lcom/google/android/gtalkservice/Presence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gtalkservice/Presence;

    .line 132
    .local v2, "_arg0":Lcom/google/android/gtalkservice/Presence;
    :goto_3
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->setPresence(Lcom/google/android/gtalkservice/Presence;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 130
    .end local v2    # "_arg0":Lcom/google/android/gtalkservice/Presence;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/google/android/gtalkservice/Presence;
    goto :goto_3

    .line 138
    .end local v2    # "_arg0":Lcom/google/android/gtalkservice/Presence;
    :sswitch_a
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v10

    .line 140
    .local v10, "_result":Lcom/google/android/gtalkservice/Presence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v10, :cond_3

    .line 142
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v1, 0x1

    invoke-virtual {v10, p3, v1}, Lcom/google/android/gtalkservice/Presence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 148
    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 146
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 152
    .end local v10    # "_result":Lcom/google/android/gtalkservice/Presence;
    :sswitch_b
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 155
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 160
    .local v2, "_arg0":Landroid/graphics/Bitmap;
    :goto_5
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->uploadAvatar(Landroid/graphics/Bitmap;)V

    .line 161
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 158
    .end local v2    # "_arg0":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_5

    .line 165
    .end local v2    # "_arg0":Landroid/graphics/Bitmap;
    :sswitch_c
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->uploadAvatarFromDb()V

    .line 167
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 171
    :sswitch_d
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6}, Lcom/google/android/gtalkservice/IImSession$Stub;->addContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 179
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 183
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":[Ljava/lang/String;
    :sswitch_e
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 187
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 189
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 190
    .restart local v6    # "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6}, Lcom/google/android/gtalkservice/IImSession$Stub;->editContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 191
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 195
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":[Ljava/lang/String;
    :sswitch_f
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 198
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->removeContact(Ljava/lang/String;)V

    .line 199
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 203
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->blockContact(Ljava/lang/String;)V

    .line 207
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 211
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 214
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->pinContact(Ljava/lang/String;)V

    .line 215
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 219
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_12
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->hideContact(Ljava/lang/String;)V

    .line 223
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 227
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_13
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 230
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->clearContactFlags(Ljava/lang/String;)V

    .line 231
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 235
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_14
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 239
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 241
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 242
    .restart local v6    # "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6}, Lcom/google/android/gtalkservice/IImSession$Stub;->approveSubscriptionRequest(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 243
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 247
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":[Ljava/lang/String;
    :sswitch_15
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 250
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->declineSubscriptionRequest(Ljava/lang/String;)V

    .line 251
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 255
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_16
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 258
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->createChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v10

    .line 259
    .local v10, "_result":Lcom/google/android/gtalkservice/IChatSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    if-eqz v10, :cond_5

    invoke-interface {v10}, Lcom/google/android/gtalkservice/IChatSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 261
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 260
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 265
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Lcom/google/android/gtalkservice/IChatSession;
    :sswitch_17
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 268
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v10

    .line 269
    .restart local v10    # "_result":Lcom/google/android/gtalkservice/IChatSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v10, :cond_6

    invoke-interface {v10}, Lcom/google/android/gtalkservice/IChatSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 271
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 270
    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    .line 275
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Lcom/google/android/gtalkservice/IChatSession;
    :sswitch_18
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 279
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, "_arg1":[Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Lcom/google/android/gtalkservice/IImSession$Stub;->createGroupChatSession(Ljava/lang/String;[Ljava/lang/String;)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 286
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":[Ljava/lang/String;
    :sswitch_19
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 290
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 293
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6}, Lcom/google/android/gtalkservice/IImSession$Stub;->joinGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 299
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_1a
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 304
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Lcom/google/android/gtalkservice/IImSession$Stub;->declineGroupChatInvitation(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 310
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_1b
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gtalkservice/IGroupChatInvitationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGroupChatInvitationListener;

    move-result-object v2

    .line 313
    .local v2, "_arg0":Lcom/google/android/gtalkservice/IGroupChatInvitationListener;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->addGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 319
    .end local v2    # "_arg0":Lcom/google/android/gtalkservice/IGroupChatInvitationListener;
    :sswitch_1c
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gtalkservice/IGroupChatInvitationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGroupChatInvitationListener;

    move-result-object v2

    .line 322
    .restart local v2    # "_arg0":Lcom/google/android/gtalkservice/IGroupChatInvitationListener;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->removeGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 328
    .end local v2    # "_arg0":Lcom/google/android/gtalkservice/IGroupChatInvitationListener;
    :sswitch_1d
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gtalkservice/IChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IChatListener;

    move-result-object v2

    .line 331
    .local v2, "_arg0":Lcom/google/android/gtalkservice/IChatListener;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 337
    .end local v2    # "_arg0":Lcom/google/android/gtalkservice/IChatListener;
    :sswitch_1e
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gtalkservice/IChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IChatListener;

    move-result-object v2

    .line 340
    .restart local v2    # "_arg0":Lcom/google/android/gtalkservice/IChatListener;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 346
    .end local v2    # "_arg0":Lcom/google/android/gtalkservice/IChatListener;
    :sswitch_1f
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gtalkservice/IRosterListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IRosterListener;

    move-result-object v2

    .line 349
    .local v2, "_arg0":Lcom/google/android/gtalkservice/IRosterListener;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->addRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 355
    .end local v2    # "_arg0":Lcom/google/android/gtalkservice/IRosterListener;
    :sswitch_20
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gtalkservice/IRosterListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IRosterListener;

    move-result-object v2

    .line 358
    .restart local v2    # "_arg0":Lcom/google/android/gtalkservice/IRosterListener;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->removeRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 364
    .end local v2    # "_arg0":Lcom/google/android/gtalkservice/IRosterListener;
    :sswitch_21
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 367
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    .line 369
    .local v2, "_arg0":Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v4, 0x1

    .line 370
    .local v4, "_arg1":Z
    :goto_8
    invoke-virtual {p0, v2, v4}, Lcom/google/android/gtalkservice/IImSession$Stub;->goOffRecordWithContacts(Ljava/util/List;Z)V

    .line 371
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 369
    .end local v4    # "_arg1":Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_8

    .line 375
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "_arg0":Ljava/util/List;
    :sswitch_22
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v4, 0x1

    .line 380
    .restart local v4    # "_arg1":Z
    :goto_9
    invoke-virtual {p0, v2, v4}, Lcom/google/android/gtalkservice/IImSession$Stub;->goOffRecordInRoom(Ljava/lang/String;Z)V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 379
    .end local v4    # "_arg1":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_9

    .line 386
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_23
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 389
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->isOffRecordWithContact(Ljava/lang/String;)Z

    move-result v10

    .line 390
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    if-eqz v10, :cond_9

    const/4 v1, 0x1

    :goto_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 391
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 396
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_24
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->closeAllChatSessions()V

    .line 398
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 402
    :sswitch_25
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 406
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 408
    .local v4, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 410
    .local v6, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v8, 0x1

    .local v8, "_arg3":Z
    :goto_b
    move-object v1, p0

    .line 411
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gtalkservice/IImSession$Stub;->pruneOldChatSessions(JJJZ)V

    .line 412
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 410
    .end local v8    # "_arg3":Z
    :cond_a
    const/4 v8, 0x0

    goto :goto_b

    .line 416
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    :sswitch_26
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->sendSessionStanza(Ljava/lang/String;)V

    .line 420
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 424
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_27
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gtalkservice/ISessionStanzaListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/ISessionStanzaListener;

    move-result-object v2

    .line 427
    .local v2, "_arg0":Lcom/google/android/gtalkservice/ISessionStanzaListener;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->addRemoteSessionStanzaListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 433
    .end local v2    # "_arg0":Lcom/google/android/gtalkservice/ISessionStanzaListener;
    :sswitch_28
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gtalkservice/ISessionStanzaListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/ISessionStanzaListener;

    move-result-object v2

    .line 436
    .restart local v2    # "_arg0":Lcom/google/android/gtalkservice/ISessionStanzaListener;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->removeRemoteSessionStanzaListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 442
    .end local v2    # "_arg0":Lcom/google/android/gtalkservice/ISessionStanzaListener;
    :sswitch_29
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->queryJingleInfo()V

    .line 444
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 448
    :sswitch_2a
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gtalkservice/IJingleInfoStanzaListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;

    move-result-object v2

    .line 451
    .local v2, "_arg0":Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->addRemoteJingleInfoStanzaListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;)V

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 457
    .end local v2    # "_arg0":Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;
    :sswitch_2b
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gtalkservice/IJingleInfoStanzaListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;

    move-result-object v2

    .line 460
    .restart local v2    # "_arg0":Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->removeRemoteJingleInfoStanzaListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;)V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 466
    .end local v2    # "_arg0":Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;
    :sswitch_2c
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->requestBatchedBuddyPresence()V

    .line 468
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 472
    :sswitch_2d
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->sendCallPerfStatsStanza(Ljava/lang/String;)V

    .line 476
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 480
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_2e
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 484
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 485
    .local v4, "_arg1":[Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Lcom/google/android/gtalkservice/IImSession$Stub;->inviteContactsToGroupchat(Ljava/lang/String;[Ljava/lang/String;)V

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    const/4 v1, 0x1

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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
