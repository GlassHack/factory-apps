.class public Lorg/jivesoftware/smack/packet/LoginRequest;
.super Lorg/jivesoftware/smack/packet/Packet;
.source "LoginRequest.java"


# instance fields
.field private final accountId:J

.field private final adaptiveHeartbeat:Z

.field private final compress:I

.field private final deviceId:Ljava/lang/String;

.field private final domain:Ljava/lang/String;

.field private final heartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

.field private final lastRmqId:J

.field private final networkType:I

.field private final persistentIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final resource:Ljava/lang/String;

.field private final settings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final token:Ljava/lang/String;

.field private final useAndroidId:Z

.field private final useRmq:Z

.field private final useRmq2:Z

.field private final user:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZLjava/util/List;JIZLorg/jivesoftware/smack/packet/HeartbeatStat;Ljava/util/Map;I)V
    .locals 1
    .param p1, "useAndroidId"    # Z
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "resource"    # Ljava/lang/String;
    .param p5, "authToken"    # Ljava/lang/String;
    .param p6, "deviceId"    # Ljava/lang/String;
    .param p7, "useRmq"    # Z
    .param p8, "lastRmqId"    # J
    .param p10, "useRmq2"    # Z
    .param p12, "accountId"    # J
    .param p14, "compress"    # I
    .param p15, "adaptiveHeartbeat"    # Z
    .param p16, "heartbeatStat"    # Lorg/jivesoftware/smack/packet/HeartbeatStat;
    .param p18, "networkType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JIZ",
            "Lorg/jivesoftware/smack/packet/HeartbeatStat;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p11, "persistentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p17, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 53
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->useAndroidId:Z

    .line 54
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->user:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->domain:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->resource:Ljava/lang/String;

    .line 57
    iput-wide p12, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->accountId:J

    .line 58
    iput-object p5, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->token:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->deviceId:Ljava/lang/String;

    .line 60
    iput-boolean p7, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->useRmq:Z

    .line 61
    iput-boolean p10, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->useRmq2:Z

    .line 62
    iput-wide p8, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->lastRmqId:J

    .line 63
    iput-object p11, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->persistentIds:Ljava/util/List;

    .line 64
    move-object/from16 v0, p17

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->settings:Ljava/util/Map;

    .line 65
    iput p14, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->compress:I

    .line 66
    move/from16 v0, p15

    iput-boolean v0, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->adaptiveHeartbeat:Z

    .line 67
    move-object/from16 v0, p16

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->heartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    .line 68
    move/from16 v0, p18

    iput v0, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->networkType:I

    .line 69
    return-void
.end method


# virtual methods
.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 14

    .prologue
    const/16 v13, 0x11

    const/16 v12, 0x10

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 164
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v6, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->LOGIN_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v6}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 165
    .local v3, "protobuf":Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/LoginRequest;->getPacketID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v9, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 167
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->domain:Ljava/lang/String;

    invoke-virtual {v3, v10, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 168
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->user:Ljava/lang/String;

    invoke-virtual {v3, v11, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 169
    const/4 v6, 0x4

    iget-object v7, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->resource:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 171
    const/4 v6, 0x5

    iget-object v7, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->token:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 173
    const/4 v6, 0x6

    iget-object v7, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 175
    const/16 v6, 0xc

    iget-boolean v7, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->adaptiveHeartbeat:Z

    invoke-virtual {v3, v6, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 177
    const/16 v6, 0xf

    iget-wide v7, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->accountId:J

    invoke-virtual {v3, v6, v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 179
    iget v6, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->networkType:I

    invoke-virtual {v3, v13, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 182
    iget-boolean v6, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->useAndroidId:Z

    if-eqz v6, :cond_1

    .line 183
    const-wide/16 v6, 0x2

    invoke-virtual {v3, v12, v6, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 185
    iget v6, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->networkType:I

    invoke-virtual {v3, v13, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 193
    :goto_0
    iget-boolean v6, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->useRmq:Z

    if-eqz v6, :cond_0

    .line 194
    const/4 v6, 0x7

    iget-wide v7, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->lastRmqId:J

    invoke-virtual {v3, v6, v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 198
    :cond_0
    iget-boolean v6, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->useRmq2:Z

    if-eqz v6, :cond_3

    .line 199
    const/16 v6, 0xe

    invoke-virtual {v3, v6, v9}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 202
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->persistentIds:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 203
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->persistentIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 204
    .local v2, "persistentId":Ljava/lang/String;
    const/16 v6, 0xa

    invoke-virtual {v3, v6, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_1

    .line 188
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "persistentId":Ljava/lang/String;
    :cond_1
    const-wide/16 v6, 0x1

    invoke-virtual {v3, v12, v6, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getIncludeStreamIdInProtobuf()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 212
    const/16 v6, 0xb

    invoke-virtual {v3, v6, v9}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 218
    :cond_3
    iget v6, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->compress:I

    if-lez v6, :cond_4

    .line 219
    const/16 v6, 0x9

    iget v7, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->compress:I

    invoke-virtual {v3, v6, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 222
    :cond_4
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->heartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    if-eqz v6, :cond_5

    .line 223
    new-instance v5, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v6, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_STAT:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 224
    .local v5, "stat":Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->heartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    iget-boolean v6, v6, Lorg/jivesoftware/smack/packet/HeartbeatStat;->timeout:Z

    invoke-virtual {v5, v10, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 225
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->heartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    iget-wide v6, v6, Lorg/jivesoftware/smack/packet/HeartbeatStat;->interval:J

    invoke-virtual {v5, v11, v6, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 226
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->heartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    iget-object v6, v6, Lorg/jivesoftware/smack/packet/HeartbeatStat;->ip:Ljava/lang/String;

    invoke-virtual {v5, v9, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 227
    const/16 v6, 0xd

    invoke-virtual {v3, v6, v5}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 230
    .end local v5    # "stat":Lcom/google/common/io/protocol/ProtoBuf;
    :cond_5
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->settings:Ljava/util/Map;

    if-eqz v6, :cond_6

    .line 231
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->settings:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 232
    .local v1, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v6, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->SETTING:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v6}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 233
    .local v4, "setting":Lcom/google/common/io/protocol/ProtoBuf;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v9, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 234
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v10, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 235
    const/16 v6, 0x8

    invoke-virtual {v3, v6, v4}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_2

    .line 239
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "setting":Lcom/google/common/io/protocol/ProtoBuf;
    :cond_6
    return-object v3
.end method

.method public toXML()Ljava/lang/String;
    .locals 7

    .prologue
    .line 100
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 101
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string v4, "<login-request id=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/LoginRequest;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const-string v4, "\" user=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->user:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    const-string v4, "\" domain=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->domain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    const-string v4, "\" resource=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->resource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    const-string v4, "\" account-id=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    iget-wide v4, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->accountId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 111
    const-string v4, "\" token=\"...\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    const-string v4, "\" deviceId=\"...\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    iget-boolean v4, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->useAndroidId:Z

    if-eqz v4, :cond_0

    .line 115
    const-string v4, "\" useAndroidId=\"true\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    const-string v4, "\" networkType=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    iget v4, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->networkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 120
    :cond_0
    iget-boolean v4, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->useRmq:Z

    if-eqz v4, :cond_1

    .line 121
    const-string v4, "\" lastRmqId=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    iget-wide v4, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->lastRmqId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 125
    :cond_1
    iget-boolean v4, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->useRmq2:Z

    if-eqz v4, :cond_2

    .line 126
    const-string v4, "\" useRmq2=\"true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getIncludeStreamIdInProtobuf()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 128
    const-string v4, "\" includeStreamId=\"true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    :cond_2
    const-string v4, "\" adaptiveHeartbeat=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    iget-boolean v4, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->adaptiveHeartbeat:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 134
    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->heartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    if-eqz v4, :cond_3

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<stat timeout=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->heartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    iget-boolean v5, v5, Lorg/jivesoftware/smack/packet/HeartbeatStat;->timeout:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' interval-ms=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->heartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    iget-wide v5, v5, Lorg/jivesoftware/smack/packet/HeartbeatStat;->interval:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' ip=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->heartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    iget-object v5, v5, Lorg/jivesoftware/smack/packet/HeartbeatStat;->ip:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'/>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    :cond_3
    iget-boolean v4, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->useRmq2:Z

    if-eqz v4, :cond_5

    .line 144
    const-string v4, "<persistent_id>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->persistentIds:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 146
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->persistentIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 147
    .local v1, "id":Ljava/lang/String;
    const-string v4, "<id>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</id>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 150
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Ljava/lang/String;
    :cond_4
    const-string v4, "</persistent_id>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    :cond_5
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->settings:Ljava/util/Map;

    if-eqz v4, :cond_6

    .line 154
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/LoginRequest;->settings:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 155
    .local v2, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<setting name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' value=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'/>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 158
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    const-string v4, "</login-request>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
