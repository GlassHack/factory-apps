.class public Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
.super Ljava/lang/Object;
.source "Rmq2Manager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;,
        Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;,
        Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbacks;
    }
.end annotation


# static fields
.field private static sIncludeStreamId:Z


# instance fields
.field private final mAckedS2dMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAckingInterval:I

.field private final mD2sIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastStreamIdAcked:I

.field private mMessageQueue:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

.field private mMessageQueueCallback:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbacks;

.field private mOkToResendAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOkToResendPackets:Z

.field private mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

.field private mProtobufConfig:Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;

.field private mProtobufSerializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

.field private final mResendQueue:Ljava/util/LinkedList;

.field private mRmqAckLock:Ljava/lang/Object;

.field private mS2dIdStore:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;

.field private mStreamIdIn:I

.field private mStreamIdOut:I

.field private mUnackedS2dIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->sIncludeStreamId:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 171
    new-instance v0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;

    invoke-direct {v0, p1}, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;-><init>(Landroid/content/ContentResolver;)V

    new-instance v1, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;-><init>(Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;)V
    .locals 2
    .param p1, "clientRmq"    # Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;
    .param p2, "s2dRmq"    # Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mProtobufConfig:Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;

    .line 76
    new-instance v0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializerImpl;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mProtobufConfig:Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializerImpl;-><init>(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mProtobufSerializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mD2sIds:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckedS2dMap:Ljava/util/Map;

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mRmqAckLock:Ljava/lang/Object;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mOkToResendAccounts:Ljava/util/List;

    .line 175
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mMessageQueue:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    .line 176
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mS2dIdStore:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;

    .line 177
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mResendQueue:Ljava/util/LinkedList;

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->resendPackets()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private ackD2sMessagesInternal(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 694
    .local p1, "d2sIdsToAck":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 696
    .local v3, "size":I
    sget-boolean v4, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v4, :cond_0

    .line 697
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ackD2sMessagesInternal: size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 700
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 702
    .local v2, "rmq2Ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mD2sIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 703
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;

    .line 704
    .local v0, "d2sInfo":Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    iget-object v4, v0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;->d2sId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mD2sIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 707
    .end local v0    # "d2sInfo":Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mMessageQueue:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    invoke-interface {v4, v2}, Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;->removeMessagesByRmq2Ids(Ljava/util/List;)I

    .line 710
    return-void
.end method

.method public static getIncludeStreamIdFromGservices(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 197
    const-string v0, "gtalk_rmq2_include_stream_id"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIncludeStreamIdInProtobuf()Z
    .locals 1

    .prologue
    .line 236
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->sIncludeStreamId:Z

    return v0
.end method

.method public static getRmqAckIntervalFromGservices(Landroid/content/ContentResolver;)I
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 202
    const-string v0, "gtalk_rmq_ack_interval"

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private internalProcessS2dMessage(Ljava/lang/String;I)V
    .locals 15
    .param p1, "s2dId"    # Ljava/lang/String;
    .param p2, "lastStreamIdReceived"    # I

    .prologue
    .line 621
    const-string v12, "Rmq"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 622
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "process S2d: s2dId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", lastStreamId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mStreamIdIn="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdIn:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 626
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 627
    iget-object v13, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    monitor-enter v13

    .line 628
    :try_start_0
    iget-object v12, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    :cond_1
    const/4 v5, 0x0

    .line 633
    .local v5, "deviceStreamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .line 635
    .local v10, "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, -0x1

    move/from16 v0, p2

    if-eq v0, v12, :cond_5

    .line 637
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v2, "d2sIdsToAck":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;>;"
    iget-object v13, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mD2sIds:Ljava/util/ArrayList;

    monitor-enter v13

    .line 647
    :try_start_1
    iget-object v12, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mD2sIds:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;

    .line 648
    .local v3, "d2sInfo":Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    iget v12, v3, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;->streamId:I

    move/from16 v0, p2

    if-ge v0, v12, :cond_6

    .line 654
    .end local v3    # "d2sInfo":Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    :cond_2
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 656
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 657
    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->ackD2sMessagesInternal(Ljava/util/List;)V

    .line 667
    :cond_3
    iget-object v13, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckedS2dMap:Ljava/util/Map;

    monitor-enter v13

    .line 668
    :try_start_2
    iget-object v12, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckedS2dMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    move-object v11, v10

    .end local v10    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v6, v5

    .end local v5    # "deviceStreamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .local v6, "deviceStreamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_1
    :try_start_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 670
    .local v4, "deviceStreamId":I
    move/from16 v0, p2

    if-ge v0, v4, :cond_7

    .line 687
    .end local v4    # "deviceStreamId":I
    :cond_4
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v10, v11

    .end local v11    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v5, v6

    .line 690
    .end local v2    # "d2sIdsToAck":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;>;"
    .end local v6    # "deviceStreamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "deviceStreamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_5
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10, v5}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->updateS2dIds(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 691
    return-void

    .line 629
    .end local v5    # "deviceStreamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v12

    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v12

    .line 652
    .restart local v2    # "d2sIdsToAck":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;>;"
    .restart local v3    # "d2sInfo":Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    .restart local v5    # "deviceStreamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v10    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :try_start_5
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 654
    .end local v3    # "d2sInfo":Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v12

    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v12

    .line 674
    .end local v5    # "deviceStreamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "deviceStreamId":I
    .restart local v6    # "deviceStreamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    if-nez v6, :cond_9

    .line 675
    :try_start_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 676
    .end local v6    # "deviceStreamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "deviceStreamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_7
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 679
    .end local v11    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    :try_start_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object v12, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckedS2dMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 683
    .local v1, "ackedS2dIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 684
    .local v9, "id":Ljava/lang/String;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 687
    .end local v1    # "ackedS2dIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "deviceStreamId":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "id":Ljava/lang/String;
    :catchall_2
    move-exception v12

    :goto_4
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v12

    .restart local v1    # "ackedS2dIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "deviceStreamId":I
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_8
    move-object v11, v10

    .end local v10    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v6, v5

    .line 686
    .end local v5    # "deviceStreamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "deviceStreamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 687
    .end local v1    # "ackedS2dIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "deviceStreamId":I
    .end local v8    # "i$":Ljava/util/Iterator;
    :catchall_3
    move-exception v12

    move-object v10, v11

    .end local v11    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v5, v6

    .end local v6    # "deviceStreamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "deviceStreamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_4

    .end local v10    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "deviceStreamId":I
    .restart local v11    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_4
    move-exception v12

    move-object v10, v11

    .end local v11    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .end local v5    # "deviceStreamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "deviceStreamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    move-object v10, v11

    .end local v11    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v5, v6

    .end local v6    # "deviceStreamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "deviceStreamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_2
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 900
    const-string v0, "Rmq"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Rmq2Mgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    return-void
.end method

.method private makeRmqPacket(JLorg/jivesoftware/smack/packet/Packet;)Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    .locals 9
    .param p1, "rmqId"    # J
    .param p3, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 416
    const/4 v8, 0x0

    .line 419
    .local v8, "retVal":Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    :try_start_0
    invoke-virtual {p3}, Lorg/jivesoftware/smack/packet/Packet;->toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    .line 420
    .local v7, "protoBuf":Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mProtobufConfig:Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;

    invoke-virtual {v7}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->getTag(Lcom/google/common/io/protocol/ProtoBufType;)B

    move-result v4

    .line 421
    .local v4, "tag":B
    invoke-virtual {v7}, Lcom/google/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v5

    .line 422
    .local v5, "bytes":[B
    new-instance v0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;

    move-object v1, p3

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;-><init>(Lorg/jivesoftware/smack/packet/Packet;JB[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .end local v4    # "tag":B
    .end local v5    # "bytes":[B
    .end local v7    # "protoBuf":Lcom/google/common/io/protocol/ProtoBuf;
    .end local v8    # "retVal":Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    .local v0, "retVal":Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    :goto_0
    return-object v0

    .line 423
    .end local v0    # "retVal":Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    .restart local v8    # "retVal":Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    :catch_0
    move-exception v6

    .line 424
    .local v6, "ioe":Ljava/io/IOException;
    const-string v1, "Rmq"

    const-string v2, "makeRmqPacket: caught IOException"

    invoke-static {v1, v2, v6}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v8

    .end local v8    # "retVal":Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    .restart local v0    # "retVal":Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    goto :goto_0
.end method

.method private processSelectiveAck(Lcom/google/android/gsf/gtalkservice/extensions/SelectiveAck;)V
    .locals 3
    .param p1, "ack"    # Lcom/google/android/gsf/gtalkservice/extensions/SelectiveAck;

    .prologue
    .line 770
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/extensions/SelectiveAck;->getIdList()Ljava/util/List;

    move-result-object v0

    .line 772
    .local v0, "acks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "Rmq"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got SelectiveAck, size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 777
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mMessageQueue:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    invoke-interface {v1, v0}, Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;->removeMessagesByRmq2Ids(Ljava/util/List;)I

    .line 780
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->resendRmqPackets()V

    .line 781
    return-void
.end method

.method private resendPackets()V
    .locals 9

    .prologue
    .line 863
    const/4 v0, 0x0

    .line 865
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;>;"
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

    if-nez v5, :cond_5

    .line 866
    const-string v5, "Rmq"

    const-string v6, "[Rmq2Mgr] resendPackts: mPacketSender is null"

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mResendQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/Packet;

    .line 878
    .local v2, "packet":Lorg/jivesoftware/smack/packet/Packet;
    sget-boolean v5, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v5, :cond_2

    .line 879
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resend packet "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Packet;->getRmq2Id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 882
    :cond_2
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

    invoke-interface {v5, v2}, Lcom/google/android/gsf/gtalkservice/PacketSender;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v4

    .line 883
    .local v4, "sent":Z
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mMessageQueueCallback:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbacks;

    if-eqz v5, :cond_4

    .line 884
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Packet;->getPacketID()Ljava/lang/String;

    move-result-object v3

    .line 885
    .local v3, "packetId":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 886
    if-nez v0, :cond_3

    .line 887
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .end local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;>;"
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;>;"
    move-object v0, v1

    .line 889
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;>;"
    .restart local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;>;"
    :cond_3
    new-instance v5, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Packet;->getAccountId()J

    move-result-wide v7

    invoke-direct {v5, p0, v3, v7, v8}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;-><init>(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;Ljava/lang/String;J)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    .end local v3    # "packetId":Ljava/lang/String;
    :cond_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    .end local v2    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    .end local v4    # "sent":Z
    :cond_5
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mResendQueue:Ljava/util/LinkedList;

    monitor-enter v6

    .line 872
    :try_start_1
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mResendQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 873
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 894
    if-eqz v0, :cond_0

    .line 895
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mMessageQueueCallback:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbacks;

    invoke-interface {v5, v0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbacks;->onMessagesSent(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 892
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method private resendRmqPackets()V
    .locals 3

    .prologue
    .line 784
    const/4 v0, 0x0

    .line 786
    .local v0, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    monitor-enter p0

    .line 787
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mOkToResendPackets:Z

    .line 788
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mOkToResendAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 789
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mOkToResendAccounts:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    .end local v0    # "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v1, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mOkToResendAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 792
    .end local v1    # "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v0    # "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 794
    if-eqz v0, :cond_1

    .line 795
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->resendRmqPacketsForReadyAccount(Ljava/util/List;)V

    .line 797
    :cond_1
    return-void

    .line 792
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .end local v0    # "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v1    # "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v0    # "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    goto :goto_0
.end method

.method private resendRmqPacketsForReadyAccount(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v8, 0x3

    .line 819
    const-string v7, "GTalkService"

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "resendRmqPacketsForReadyAccount for accounts: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 821
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 822
    .local v0, "account":Ljava/lang/Long;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 824
    .end local v0    # "account":Ljava/lang/Long;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 827
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mMessageQueue:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    invoke-interface {v7, p1}, Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;->getRmq2Packets(Ljava/util/List;)Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;

    move-result-object v5

    .line 828
    .local v5, "list":Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;->size()I

    move-result v2

    .line 831
    .local v2, "count":I
    if-nez v2, :cond_3

    .line 832
    :try_start_0
    const-string v7, "GTalkService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 833
    const-string v7, "no rmq packets to resend"

    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 858
    :cond_2
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;->close()V

    .line 860
    :goto_1
    return-void

    .line 838
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mResendQueue:Ljava/util/LinkedList;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 839
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_5

    .line 840
    :try_start_2
    invoke-virtual {v5, v3}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;->getPacketAt(I)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v6

    .line 842
    .local v6, "packet":Lorg/jivesoftware/smack/packet/Packet;
    sget-boolean v7, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v7, :cond_4

    .line 843
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resendRmqPackets: add packet "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/Packet;->getRmqId()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " to queue"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 845
    :cond_4
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mResendQueue:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 839
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 847
    .end local v6    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    :cond_5
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 849
    :try_start_3
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$1;

    invoke-direct {v8, p0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$1;-><init>(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 858
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;->close()V

    goto :goto_1

    .line 847
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 858
    .end local v3    # "i":I
    :catchall_1
    move-exception v7

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;->close()V

    throw v7
.end method

.method private sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 6
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 399
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

    invoke-interface {v2, p1}, Lcom/google/android/gsf/gtalkservice/PacketSender;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v1

    .line 400
    .local v1, "sent":Z
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mMessageQueueCallback:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbacks;

    if-eqz v2, :cond_0

    .line 401
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getPacketID()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "packetId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 404
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mMessageQueueCallback:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbacks;

    new-instance v3, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getAccountId()J

    move-result-wide v4

    invoke-direct {v3, p0, v0, v4, v5}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;-><init>(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;Ljava/lang/String;J)V

    invoke-interface {v2, v3}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbacks;->onMessageSent(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;)V

    .line 408
    .end local v0    # "packetId":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private sendStreamAck()V
    .locals 6

    .prologue
    .line 742
    const/4 v2, 0x0

    .line 744
    .local v2, "needToSendAck":Z
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mRmqAckLock:Ljava/lang/Object;

    monitor-enter v4

    .line 745
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getAckingInterval()I

    move-result v1

    .line 747
    .local v1, "ackingInterval":I
    const-string v3, "Rmq"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 748
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendStreamAck(?): mStreamIdIn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdIn:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mLastStreamIdAcked="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mLastStreamIdAcked:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", ackInterval="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 752
    :cond_0
    iget v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdIn:I

    iget v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mLastStreamIdAcked:I

    sub-int/2addr v3, v5

    if-lt v3, v1, :cond_1

    .line 753
    const/4 v2, 0x1

    .line 755
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    if-eqz v2, :cond_2

    .line 758
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/StreamAck;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/extensions/StreamAck;-><init>()V

    .line 760
    .local v0, "ack":Lcom/google/android/gsf/gtalkservice/extensions/StreamAck;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

    if-nez v3, :cond_3

    .line 761
    const-string v3, "Rmq"

    const-string v4, "[Rmq2Mgr] sendStreamAck: mPacketSender is null"

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    .end local v0    # "ack":Lcom/google/android/gsf/gtalkservice/extensions/StreamAck;
    :cond_2
    :goto_0
    return-void

    .line 755
    .end local v1    # "ackingInterval":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 765
    .restart local v0    # "ack":Lcom/google/android/gsf/gtalkservice/extensions/StreamAck;
    .restart local v1    # "ackingInterval":I
    :cond_3
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

    invoke-interface {v3, v0}, Lcom/google/android/gsf/gtalkservice/PacketSender;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    goto :goto_0
.end method

.method public static setIncludeStreamId(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 240
    sput-boolean p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->sIncludeStreamId:Z

    .line 241
    return-void
.end method

.method private setLastStreamIdAcked(I)Z
    .locals 3
    .param p1, "lastStreamIdReceived"    # I

    .prologue
    .line 262
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mRmqAckLock:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_0
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mLastStreamIdAcked:I

    if-le p1, v0, :cond_0

    .line 264
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mLastStreamIdAcked:I

    .line 265
    const/4 v0, 0x1

    monitor-exit v1

    .line 275
    :goto_0
    return v0

    .line 267
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mLastStreamIdAcked:I

    if-le v0, p1, :cond_1

    .line 271
    const-string v0, "Rmq"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! mLastStreamIdAcked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mLastStreamIdAcked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is greater than lastStreamIdReceived="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateS2dIds(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .param p1, "s2dIdToAdd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 716
    .local p2, "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "deviceStreamIdsAcked":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 717
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateS2dIds: add s2did="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 718
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mS2dIdStore:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;

    invoke-interface {v3, p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;->addS2dId(Ljava/lang/String;)V

    .line 722
    :cond_1
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 723
    .local v1, "size":I
    :goto_0
    if-lez v1, :cond_3

    .line 724
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateS2dIds: delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2d ids"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 725
    :cond_2
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mS2dIdStore:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;

    invoke-interface {v3, p2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;->deleteS2dIds(Ljava/util/List;)V

    .line 729
    :cond_3
    if-eqz p3, :cond_6

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 730
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 731
    .local v2, "streamId":Ljava/lang/Integer;
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v3, :cond_4

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateS2dIds: remove streamId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 734
    :cond_4
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckedS2dMap:Ljava/util/Map;

    monitor-enter v4

    .line 735
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckedS2dMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 722
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "size":I
    .end local v2    # "streamId":Ljava/lang/Integer;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 739
    .restart local v1    # "size":I
    :cond_6
    return-void
.end method


# virtual methods
.method public getAckingInterval()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckingInterval:I

    return v0
.end method

.method public getLastStreamIdReceived()I
    .locals 2

    .prologue
    .line 244
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mRmqAckLock:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :try_start_0
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdIn:I

    monitor-exit v1

    return v0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStreamId()I
    .locals 2

    .prologue
    .line 250
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mRmqAckLock:Ljava/lang/Object;

    monitor-enter v1

    .line 251
    :try_start_0
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdOut:I

    monitor-exit v1

    return v0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 4
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->resetStreamIds()V

    .line 184
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mOkToResendAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mOkToResendAccounts:Ljava/util/List;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, -0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    return-void
.end method

.method public processAndRetrieveInitialS2dIds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mS2dIdStore:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;

    invoke-interface {v3}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;->getS2dIds()Ljava/util/List;

    move-result-object v2

    .line 315
    .local v2, "s2dIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    monitor-enter v4

    .line 316
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 317
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 319
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    return-object v2
.end method

.method public processD2sMessage(Ljava/lang/String;)I
    .locals 5
    .param p1, "rmq2Id"    # Ljava/lang/String;

    .prologue
    .line 439
    iget v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdOut:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdOut:I

    .line 441
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 442
    new-instance v1, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdOut:I

    invoke-direct {v1, v2, p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;-><init>(ILjava/lang/String;)V

    .line 443
    .local v1, "d2sInfo":Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mD2sIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 444
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mD2sIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    .end local v1    # "d2sInfo":Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    :cond_0
    const-string v2, "Rmq"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processD2sMessage: mStreamIdOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdOut:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 455
    :cond_1
    const/4 v0, 0x0

    .line 457
    .local v0, "ackedS2dIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    monitor-enter v3

    .line 458
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 459
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    .line 460
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    .line 462
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 464
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckedS2dMap:Ljava/util/Map;

    monitor-enter v3

    .line 465
    if-eqz v0, :cond_3

    .line 466
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckedS2dMap:Ljava/util/Map;

    iget v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdOut:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 470
    iget v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdOut:I

    return v2

    .line 445
    .end local v0    # "ackedS2dIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "d2sInfo":Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 462
    .end local v1    # "d2sInfo":Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$D2sInfo;
    .restart local v0    # "ackedS2dIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 468
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2
.end method

.method public processNackForStoppedUser(Ljava/lang/String;)V
    .locals 3
    .param p1, "rmq2Id"    # Ljava/lang/String;

    .prologue
    .line 386
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v1, :cond_0

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNackForStoppedUser: deleting msg_rmq2Id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 389
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v0, "s2dIdsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mS2dIdStore:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;

    invoke-interface {v1, v0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;->deleteS2dIds(Ljava/util/List;)V

    .line 393
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    monitor-enter v2

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 395
    monitor-exit v2

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public processS2dMessage(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 605
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mRmqAckLock:Ljava/lang/Object;

    monitor-enter v1

    .line 606
    :try_start_0
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdIn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdIn:I

    .line 607
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getRmq2Id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getLastStreamId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->internalProcessS2dMessage(Ljava/lang/String;I)V

    .line 613
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->sendStreamAck()V

    .line 615
    instance-of v0, p1, Lcom/google/android/gsf/gtalkservice/extensions/SelectiveAck;

    if-eqz v0, :cond_0

    .line 616
    check-cast p1, Lcom/google/android/gsf/gtalkservice/extensions/SelectiveAck;

    .end local p1    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processSelectiveAck(Lcom/google/android/gsf/gtalkservice/extensions/SelectiveAck;)V

    .line 618
    :cond_0
    return-void

    .line 607
    .restart local p1    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resendPacketsForAccount(J)V
    .locals 4
    .param p1, "accountId"    # J

    .prologue
    .line 800
    const/4 v0, 0x0

    .line 802
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    monitor-enter p0

    .line 803
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### resendPacketsForAccount: acct="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOkToResendPackets="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mOkToResendPackets:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 805
    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mOkToResendPackets:Z

    if-eqz v2, :cond_1

    .line 806
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    .end local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 811
    .end local v1    # "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 813
    if-eqz v0, :cond_0

    .line 814
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->resendRmqPacketsForReadyAccount(Ljava/util/List;)V

    .line 816
    :cond_0
    return-void

    .line 809
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mOkToResendAccounts:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 811
    :catchall_0
    move-exception v2

    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .end local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v1    # "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_1
.end method

.method public resetStreamIds()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 207
    iput v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdIn:I

    .line 208
    iput v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdOut:I

    .line 209
    iput v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mLastStreamIdAcked:I

    .line 211
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "### resetStreamIds: mStreamIdIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mStreamIdIn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastStreamIdAcked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mLastStreamIdAcked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mD2sIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mD2sIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 219
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    monitor-enter v1

    .line 223
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mUnackedS2dIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 224
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 226
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckedS2dMap:Ljava/util/Map;

    monitor-enter v1

    .line 227
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckedS2dMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 228
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 229
    return-void

    .line 219
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 224
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 228
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public send(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 11
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    const/4 v7, 0x0

    .line 338
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mMessageQueue:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    invoke-interface {v8}, Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;->getNextRmqId()J

    move-result-wide v4

    .line 339
    .local v4, "rmqId":J
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "rmq2Id":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getPacketID()Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "packetId":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getAccountId()J

    move-result-wide v0

    .line 346
    .local v0, "accountId":J
    sget-boolean v8, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send: rmq2Id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 348
    :cond_0
    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/packet/Packet;->setRmq2Id(Ljava/lang/String;)V

    .line 350
    invoke-direct {p0, v4, v5, p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->makeRmqPacket(JLorg/jivesoftware/smack/packet/Packet;)Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;

    move-result-object v6

    .line 351
    .local v6, "rmqPacket":Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    if-nez v6, :cond_1

    .line 352
    const-string v8, "Rmq"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "send: cannot make RmqPacket from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :goto_0
    return v7

    .line 357
    :cond_1
    invoke-virtual {v6, v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->setPacketID(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v6, v0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->setAccountId(J)V

    .line 360
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mMessageQueue:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    invoke-interface {v8, v4, v5, v6}, Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;->enqueueMessage(JLcom/google/android/gsf/gtalkservice/rmq/RmqPacket;)V

    .line 362
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

    if-nez v8, :cond_2

    .line 363
    const-string v8, "Rmq"

    const-string v9, "[Rmq2Mgr] send: mPacketSender is null"

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_2
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mResendQueue:Ljava/util/LinkedList;

    monitor-enter v8

    .line 368
    :try_start_0
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mResendQueue:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 369
    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v7

    monitor-exit v8

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 371
    :cond_3
    :try_start_1
    sget-boolean v7, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v7, :cond_4

    .line 372
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send: add packet "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " to resend queue"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 374
    :cond_4
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mResendQueue:Ljava/util/LinkedList;

    invoke-virtual {v7, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 375
    const/4 v7, 0x1

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public serializePacketAsProtoBuf(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;Lorg/jivesoftware/smack/packet/Packet;)[B
    .locals 11
    .param p1, "serializer"    # Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;
    .param p2, "packet"    # Lorg/jivesoftware/smack/packet/Packet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 477
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Packet;->toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 482
    .local v3, "protobuf":Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v3, :cond_2

    .line 483
    const-string v7, "Rmq"

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 484
    const-string v7, "serializePacketAsProtoBuf: protobuf==null"

    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V

    .line 486
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processD2sMessage(Ljava/lang/String;)I

    .line 601
    :cond_1
    :goto_0
    return-object v4

    .line 490
    :cond_2
    invoke-virtual {v3}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v6

    .line 491
    .local v6, "type":Lcom/google/common/io/protocol/ProtoBufType;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getLastStreamIdReceived()I

    move-result v1

    .line 493
    .local v1, "lastStreamIdReceived":I
    const/4 v2, 0x0

    .line 496
    .local v2, "persistentId":Ljava/lang/String;
    :try_start_0
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_PING:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_5

    .line 497
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processD2sMessage(Ljava/lang/String;)I

    move-result v5

    .line 498
    .local v5, "streamId":I
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getIncludeStreamIdInProtobuf()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 499
    const/4 v7, 0x1

    invoke-virtual {v3, v7, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 500
    invoke-virtual {p2, v5}, Lorg/jivesoftware/smack/packet/Packet;->setStreamId(I)V

    .line 502
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setLastStreamIdAcked(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 503
    const/4 v7, 0x2

    invoke-virtual {v3, v7, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 504
    invoke-virtual {p2, v1}, Lorg/jivesoftware/smack/packet/Packet;->setLastStreamId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v5    # "streamId":I
    :cond_4
    :goto_1
    invoke-interface {p1, v3}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;->serialize(Lcom/google/common/io/protocol/ProtoBuf;)[B

    move-result-object v4

    .line 596
    .local v4, "result":[B
    if-eqz v4, :cond_1

    .line 597
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Packet;->getRmq2Id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getStreamId()I

    move-result v8

    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Packet;->getLastStreamId()I

    move-result v9

    invoke-static {v6, v7, v8, v9, v10}, Lcom/google/android/gsf/gtalkservice/LogTag;->logRmq2(Lcom/google/common/io/protocol/ProtoBufType;Ljava/lang/String;IIZ)V

    goto :goto_0

    .line 506
    .end local v4    # "result":[B
    :cond_5
    :try_start_1
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_7

    .line 507
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processD2sMessage(Ljava/lang/String;)I

    move-result v5

    .line 508
    .restart local v5    # "streamId":I
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getIncludeStreamIdInProtobuf()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 509
    const/4 v7, 0x1

    invoke-virtual {v3, v7, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 510
    invoke-virtual {p2, v5}, Lorg/jivesoftware/smack/packet/Packet;->setStreamId(I)V

    .line 512
    :cond_6
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setLastStreamIdAcked(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 513
    const/4 v7, 0x2

    invoke-virtual {v3, v7, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 514
    invoke-virtual {p2, v1}, Lorg/jivesoftware/smack/packet/Packet;->setLastStreamId(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 589
    .end local v5    # "streamId":I
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "GTalkService"

    const-string v8, "serializePacketAsProtoBuf: caught "

    invoke-static {v7, v8, v0}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 516
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_2
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->IQ_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_a

    .line 517
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 518
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 520
    :cond_8
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processD2sMessage(Ljava/lang/String;)I

    move-result v5

    .line 521
    .restart local v5    # "streamId":I
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getIncludeStreamIdInProtobuf()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 522
    const/16 v7, 0x9

    invoke-virtual {v3, v7, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 523
    invoke-virtual {p2, v5}, Lorg/jivesoftware/smack/packet/Packet;->setStreamId(I)V

    .line 525
    :cond_9
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setLastStreamIdAcked(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 526
    const/16 v7, 0xa

    invoke-virtual {v3, v7, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 527
    invoke-virtual {p2, v1}, Lorg/jivesoftware/smack/packet/Packet;->setLastStreamId(I)V

    goto :goto_1

    .line 529
    .end local v5    # "streamId":I
    :cond_a
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->MESSAGE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_d

    .line 530
    const/16 v7, 0xd

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 531
    const/16 v7, 0xd

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 533
    :cond_b
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processD2sMessage(Ljava/lang/String;)I

    move-result v5

    .line 534
    .restart local v5    # "streamId":I
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getIncludeStreamIdInProtobuf()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 535
    const/16 v7, 0xe

    invoke-virtual {v3, v7, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 536
    invoke-virtual {p2, v5}, Lorg/jivesoftware/smack/packet/Packet;->setStreamId(I)V

    .line 538
    :cond_c
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setLastStreamIdAcked(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 539
    const/16 v7, 0xf

    invoke-virtual {v3, v7, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 540
    invoke-virtual {p2, v1}, Lorg/jivesoftware/smack/packet/Packet;->setLastStreamId(I)V

    goto/16 :goto_1

    .line 542
    .end local v5    # "streamId":I
    :cond_d
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HTTP_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_10

    .line 543
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 544
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 546
    :cond_e
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processD2sMessage(Ljava/lang/String;)I

    move-result v5

    .line 547
    .restart local v5    # "streamId":I
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getIncludeStreamIdInProtobuf()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 548
    const/4 v7, 0x5

    invoke-virtual {v3, v7, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 549
    invoke-virtual {p2, v5}, Lorg/jivesoftware/smack/packet/Packet;->setStreamId(I)V

    .line 551
    :cond_f
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setLastStreamIdAcked(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 552
    const/4 v7, 0x6

    invoke-virtual {v3, v7, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 553
    invoke-virtual {p2, v1}, Lorg/jivesoftware/smack/packet/Packet;->setLastStreamId(I)V

    goto/16 :goto_1

    .line 555
    .end local v5    # "streamId":I
    :cond_10
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->PRESENCE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_13

    .line 556
    const/16 v7, 0xd

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 557
    const/16 v7, 0xd

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 559
    :cond_11
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processD2sMessage(Ljava/lang/String;)I

    move-result v5

    .line 560
    .restart local v5    # "streamId":I
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getIncludeStreamIdInProtobuf()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 561
    const/16 v7, 0xe

    invoke-virtual {v3, v7, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 562
    invoke-virtual {p2, v5}, Lorg/jivesoftware/smack/packet/Packet;->setStreamId(I)V

    .line 564
    :cond_12
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setLastStreamIdAcked(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 565
    const/16 v7, 0xf

    invoke-virtual {v3, v7, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 566
    invoke-virtual {p2, v1}, Lorg/jivesoftware/smack/packet/Packet;->setLastStreamId(I)V

    goto/16 :goto_1

    .line 568
    .end local v5    # "streamId":I
    :cond_13
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->DATA_MESSAGE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_16

    .line 569
    const/16 v7, 0x9

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 570
    const/16 v7, 0x9

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 572
    :cond_14
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processD2sMessage(Ljava/lang/String;)I

    move-result v5

    .line 573
    .restart local v5    # "streamId":I
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getIncludeStreamIdInProtobuf()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 574
    const/16 v7, 0xa

    invoke-virtual {v3, v7, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 575
    invoke-virtual {p2, v5}, Lorg/jivesoftware/smack/packet/Packet;->setStreamId(I)V

    .line 577
    :cond_15
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setLastStreamIdAcked(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 578
    const/16 v7, 0xb

    invoke-virtual {v3, v7, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 580
    invoke-virtual {p2, v1}, Lorg/jivesoftware/smack/packet/Packet;->setLastStreamId(I)V

    goto/16 :goto_1

    .line 582
    .end local v5    # "streamId":I
    :cond_16
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->LOGIN_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_17

    .line 583
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processD2sMessage(Ljava/lang/String;)I

    move-result v5

    .restart local v5    # "streamId":I
    goto/16 :goto_1

    .line 585
    .end local v5    # "streamId":I
    :cond_17
    const-string v7, "Rmq"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 586
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "serializePacketAsProtoBuf: unhandled type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public setAckingInterval(I)V
    .locals 1
    .param p1, "interval"    # I

    .prologue
    .line 283
    if-gtz p1, :cond_0

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 286
    :cond_0
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mAckingInterval:I

    .line 287
    return-void
.end method

.method public setMessageQueueCallbacks(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbacks;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mMessageQueueCallback:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbacks;

    .line 413
    return-void
.end method

.method public setPacketSender(Lcom/google/android/gsf/gtalkservice/PacketSender;)V
    .locals 0
    .param p1, "packetSender"    # Lcom/google/android/gsf/gtalkservice/PacketSender;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

    .line 194
    return-void
.end method
