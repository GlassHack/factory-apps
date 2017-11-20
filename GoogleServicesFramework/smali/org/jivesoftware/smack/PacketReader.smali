.class Lorg/jivesoftware/smack/PacketReader;
.super Ljava/lang/Object;
.source "PacketReader.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/proto/ProtoBufEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/PacketReader$6;,
        Lorg/jivesoftware/smack/PacketReader$DataMessageListenerWrapper;,
        Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    }
.end annotation


# instance fields
.field protected collectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/PacketCollector;",
            ">;"
        }
    .end annotation
.end field

.field private connection:Lorg/jivesoftware/smack/XMPPConnection;

.field private connectionID:Ljava/lang/String;

.field private connectionIDLock:Ljava/lang/Object;

.field protected connectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/ConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected dataMessageCollectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/DataMessageCollector;",
            ">;"
        }
    .end annotation
.end field

.field private dataMessageListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private done:Z

.field private lastActive:J

.field private listenerThread:Ljava/lang/Thread;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private notifiedConnectionError:Ljava/util/concurrent/atomic/AtomicBoolean;

.field packetProcessor:Lorg/jivesoftware/smack/PacketProcessor;

.field private parser:Lorg/xmlpull/v1/XmlPullParser;

.field private protoParser:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParser;

.field private readerThread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 3
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-boolean v1, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->notifiedConnectionError:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->listeners:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageCollectors:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageListeners:Ljava/util/List;

    .line 115
    new-instance v0, Lorg/jivesoftware/smack/PacketProcessor;

    invoke-direct {v0}, Lorg/jivesoftware/smack/PacketProcessor;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->packetProcessor:Lorg/jivesoftware/smack/PacketProcessor;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connectionIDLock:Ljava/lang/Object;

    .line 126
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 128
    iget-boolean v0, p1, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Lorg/jivesoftware/smack/PacketReader$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketReader$1;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->readerThread:Ljava/lang/Thread;

    .line 153
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->readerThread:Ljava/lang/Thread;

    const-string v1, "Smack Packet Reader"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->readerThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 156
    new-instance v0, Lorg/jivesoftware/smack/PacketReader$3;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketReader$3;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    .line 171
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    const-string v1, "Smack Packet Handler"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 174
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->resetParser()V

    .line 175
    return-void

    .line 141
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/PacketReader$2;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketReader$2;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->readerThread:Ljava/lang/Thread;

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/jivesoftware/smack/PacketReader;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/PacketReader;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->parsePacketsFromProtoBufs()V

    return-void
.end method

.method static synthetic access$100(Lorg/jivesoftware/smack/PacketReader;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/PacketReader;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->parsePackets()V

    return-void
.end method

.method static synthetic access$200(Lorg/jivesoftware/smack/PacketReader;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/PacketReader;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->processListeners()V

    return-void
.end method

.method private dumpListener(Ljava/util/List;Ljava/io/PrintWriter;)V
    .locals 6
    .param p2, "out"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;",
            ">;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2028
    .local p1, "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;>;"
    monitor-enter p1

    .line 2029
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 2030
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2031
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;

    .line 2032
    .local v3, "wrapper":Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2034
    iget-object v4, v3, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetCollector:Lorg/jivesoftware/smack/PacketCollector;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketCollector;->getPacketFilter()Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v0

    .line 2035
    .local v0, "filter":Lorg/jivesoftware/smack/filter/PacketFilter;
    if-eqz v0, :cond_0

    .line 2036
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2039
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queue_size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetCollector:Lorg/jivesoftware/smack/PacketCollector;

    iget-object v5, v5, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2040
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2030
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2042
    .end local v0    # "filter":Lorg/jivesoftware/smack/filter/PacketFilter;
    .end local v3    # "wrapper":Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    :cond_1
    monitor-exit p1

    .line 2043
    return-void

    .line 2042
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private handleUnsupportedIqPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;J)Lorg/jivesoftware/smack/packet/IQ;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .param p3, "from"    # Ljava/lang/String;
    .param p4, "type"    # Lorg/jivesoftware/smack/packet/IQ$Type;
    .param p5, "rmqId"    # J

    .prologue
    .line 1331
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v1, p4, :cond_0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v1, p4, :cond_2

    .line 1335
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/PacketReader$4;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketReader$4;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    .line 1341
    .local v0, "iqPacket":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {v0, p5, p6}, Lorg/jivesoftware/smack/packet/IQ;->setRmqId(J)V

    .line 1343
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 1345
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1346
    new-instance v1, Lorg/jivesoftware/smack/packet/XMPPError;

    const/16 v2, 0x1f5

    const-string v3, "feature-not-implemented"

    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 1348
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1350
    const-string v1, "Smack/Packet"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1351
    const-string v1, "handleUnsupportedIqPacket: respond with feature-not-implemented"

    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/PacketReader;->log(Ljava/lang/String;)V

    .line 1354
    :cond_1
    const/4 v1, 0x0

    .line 1366
    :goto_0
    return-object v1

    .line 1358
    .end local v0    # "iqPacket":Lorg/jivesoftware/smack/packet/IQ;
    :cond_2
    new-instance v0, Lorg/jivesoftware/smack/PacketReader$5;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketReader$5;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    .restart local v0    # "iqPacket":Lorg/jivesoftware/smack/packet/IQ;
    move-object v1, v0

    .line 1366
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2046
    const-string v0, "Smack/Packet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PacketReader] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    return-void
.end method

.method private logPacket(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2050
    const-string v0, "Smack/Packet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[READ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    return-void
.end method

.method private parseAuthentication(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Authentication;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1370
    new-instance v0, Lorg/jivesoftware/smack/packet/Authentication;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Authentication;-><init>()V

    .line 1371
    .local v0, "authentication":Lorg/jivesoftware/smack/packet/Authentication;
    const/4 v1, 0x0

    .line 1372
    .local v1, "done":Z
    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 1373
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1374
    .local v2, "eventType":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1375
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "username"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1376
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/packet/Authentication;->setUsername(Ljava/lang/String;)V

    goto :goto_0

    .line 1378
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "password"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1379
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/packet/Authentication;->setPassword(Ljava/lang/String;)V

    goto :goto_0

    .line 1381
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "digest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1382
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/packet/Authentication;->setDigest(Ljava/lang/String;)V

    goto :goto_0

    .line 1384
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "resource"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1385
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/packet/Authentication;->setResource(Ljava/lang/String;)V

    goto :goto_0

    .line 1388
    :cond_4
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1389
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "query"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1390
    const/4 v1, 0x1

    goto :goto_0

    .line 1394
    .end local v2    # "eventType":I
    :cond_5
    return-object v0
.end method

.method private parseBindAccountResponse(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 9
    .param p1, "protobuf"    # Lcom/google/common/io/protocol/ProtoBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 635
    new-instance v2, Lorg/jivesoftware/smack/packet/BindAccountResponse;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/BindAccountResponse;-><init>()V

    .line 636
    .local v2, "response":Lorg/jivesoftware/smack/packet/BindAccountResponse;
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, "id":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 640
    .local v3, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->setPacketID(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 642
    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->setJid(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p1, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 648
    invoke-virtual {p1, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->setLastStreamId(I)V

    .line 654
    :cond_0
    invoke-virtual {p1, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 656
    invoke-virtual {p1, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->setStreamId(I)V

    .line 664
    :cond_1
    :goto_0
    return-object v2

    .line 659
    :cond_2
    invoke-virtual {p1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 660
    invoke-virtual {p1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 662
    .local v0, "errorProtobuf":Lcom/google/common/io/protocol/ProtoBuf;
    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto :goto_0
.end method

.method private parseCompressionMethods(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Collection;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1211
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1212
    .local v4, "methods":Ljava/util/List;
    const/4 v0, 0x0

    .line 1213
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 1214
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1216
    .local v2, "eventType":I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 1217
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1218
    .local v1, "elementName":Ljava/lang/String;
    const-string v5, "method"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1219
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 1221
    .local v3, "method":Ljava/lang/String;
    const-string v5, "Smack/Packet"

    invoke-static {v5, v7}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse compression method - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1226
    :cond_1
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1229
    .end local v1    # "elementName":Ljava/lang/String;
    .end local v3    # "method":Ljava/lang/String;
    :cond_2
    if-ne v2, v7, :cond_0

    .line 1230
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "compression"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1231
    const/4 v0, 0x1

    goto :goto_0

    .line 1235
    .end local v2    # "eventType":I
    :cond_3
    return-object v4
.end method

.method private parseFeatures(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 1113
    const/4 v3, 0x0

    .line 1114
    .local v3, "startTLSReceived":Z
    const/4 v0, 0x0

    .line 1115
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_b

    .line 1116
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 1117
    .local v1, "eventType":I
    const-string v4, "Smack/Packet"

    invoke-static {v4, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    .line 1119
    .local v2, "printLog":Z
    const/4 v4, 0x2

    if-ne v1, v4, :cond_a

    .line 1120
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "starttls"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1121
    const/4 v3, 0x1

    .line 1122
    if-eqz v2, :cond_1

    .line 1123
    const-string v4, "parse feature - startTLS received"

    invoke-direct {p0, v4}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1126
    :cond_1
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->startTLSReceived()V

    goto :goto_0

    .line 1128
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mechanisms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1129
    if-eqz v2, :cond_3

    .line 1130
    const-string v4, "parse feature - mechanism"

    invoke-direct {p0, v4}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1136
    :cond_3
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v4

    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseMechanisms(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/SASLAuthentication;->setAvailableSASLMethods(Ljava/util/Collection;)V

    goto :goto_0

    .line 1139
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bind"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1140
    if-eqz v2, :cond_5

    .line 1141
    const-string v4, "parse feature - bind"

    invoke-direct {p0, v4}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1145
    :cond_5
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/SASLAuthentication;->bindingRequired()V

    goto :goto_0

    .line 1147
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "session"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1148
    if-eqz v2, :cond_7

    .line 1149
    const-string v4, "parse feature - session"

    invoke-direct {p0, v4}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1153
    :cond_7
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/SASLAuthentication;->sessionsSupported()V

    goto/16 :goto_0

    .line 1155
    :cond_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "compression"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1156
    if-eqz v2, :cond_9

    .line 1157
    const-string v4, "parse feature - compression"

    invoke-direct {p0, v4}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1161
    :cond_9
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseCompressionMethods(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/XMPPConnection;->setAvailableCompressionMethods(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 1164
    :cond_a
    if-ne v1, v6, :cond_0

    .line 1165
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "features"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1166
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1170
    .end local v1    # "eventType":I
    .end local v2    # "printLog":Z
    :cond_b
    if-nez v3, :cond_c

    .line 1171
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->releaseConnectionIDLock()V

    .line 1173
    :cond_c
    return-void
.end method

.method private parseHttpResponse(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/HttpResponse;
    .locals 8
    .param p1, "protobuf"    # Lcom/google/common/io/protocol/ProtoBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 1481
    new-instance v1, Lorg/jivesoftware/smack/packet/HttpResponse;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/HttpResponse;-><init>()V

    .line 1482
    .local v1, "response":Lorg/jivesoftware/smack/packet/HttpResponse;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1483
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/HttpResponse;->setPacketID(Ljava/lang/String;)V

    .line 1485
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1486
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/packet/HttpResponse;->setRmqId(J)V

    .line 1490
    :cond_0
    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1491
    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/HttpResponse;->setRmq2Id(Ljava/lang/String;)V

    .line 1495
    :cond_1
    invoke-virtual {p1, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1497
    invoke-virtual {p1, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/HttpResponse;->setLastStreamId(I)V

    .line 1502
    :cond_2
    invoke-virtual {p1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1503
    invoke-virtual {p1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/HttpResponse;->setStreamId(I)V

    .line 1507
    :cond_3
    invoke-virtual {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1508
    invoke-virtual {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/HttpResponse;->setData([B)V

    .line 1512
    :cond_4
    return-object v1
.end method

.method private parseIQ(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 37
    .param p1, "protobuf"    # Lcom/google/common/io/protocol/ProtoBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1791
    const/16 v22, 0x0

    .line 1793
    .local v22, "iqPacket":Lorg/jivesoftware/smack/packet/IQ;
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1795
    .local v4, "id":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v8

    .line 1799
    .local v8, "rmqId":J
    :goto_1
    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1801
    .local v28, "persistentId":Ljava/lang/String;
    :goto_2
    const/16 v3, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v25

    .line 1803
    .local v25, "lastStreamId":I
    :goto_3
    const/16 v3, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v33

    .line 1806
    .local v33, "streamId":I
    :goto_4
    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1807
    .local v6, "from":Ljava/lang/String;
    :goto_5
    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1810
    .local v5, "to":Ljava/lang/String;
    :goto_6
    const/16 v3, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v3, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v10

    .line 1813
    .local v10, "accountId":J
    :goto_7
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v24

    .line 1816
    .local v24, "iqType":I
    packed-switch v24, :pswitch_data_0

    .line 1828
    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 1832
    .local v7, "type":Lorg/jivesoftware/smack/packet/IQ$Type;
    :goto_8
    const/4 v3, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1833
    const/4 v3, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v20

    .line 1834
    .local v20, "extension":Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v18

    .line 1835
    .local v18, "extId":I
    const-string v3, "ProtoBuf"

    const/16 v35, 0x3

    move/from16 v0, v35

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1836
    const-string v3, "ProtoBuf"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Handling extension of type: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    :cond_0
    packed-switch v18, :pswitch_data_1

    .line 1891
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->getIQProvider(I)Ljava/lang/Object;

    move-result-object v27

    .line 1893
    .local v27, "o":Ljava/lang/Object;
    if-eqz v27, :cond_f

    .line 1896
    move-object/from16 v0, v27

    instance-of v3, v0, Lorg/jivesoftware/smack/provider/IQProvider;

    if-eqz v3, :cond_d

    move-object/from16 v29, v27

    .line 1897
    check-cast v29, Lorg/jivesoftware/smack/provider/IQProvider;

    .line 1906
    .local v29, "provider":Lorg/jivesoftware/smack/provider/IQProvider;
    :goto_9
    invoke-interface/range {v29 .. v29}, Lorg/jivesoftware/smack/provider/IQProvider;->getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v19

    .line 1907
    .local v19, "extType":Lcom/google/common/io/protocol/ProtoBufType;
    new-instance v21, Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 1908
    .local v21, "iqExt":Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/common/io/protocol/ProtoBuf;

    .line 1909
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/provider/IQProvider;->parseIQ(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v22

    .line 1916
    .end local v18    # "extId":I
    .end local v19    # "extType":Lcom/google/common/io/protocol/ProtoBufType;
    .end local v20    # "extension":Lcom/google/common/io/protocol/ProtoBuf;
    .end local v21    # "iqExt":Lcom/google/common/io/protocol/ProtoBuf;
    .end local v27    # "o":Ljava/lang/Object;
    .end local v29    # "provider":Lorg/jivesoftware/smack/provider/IQProvider;
    :cond_1
    :goto_a
    if-nez v22, :cond_10

    move-object/from16 v3, p0

    .line 1917
    invoke-direct/range {v3 .. v9}, Lorg/jivesoftware/smack/PacketReader;->handleUnsupportedIqPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;J)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v22

    .line 1918
    if-nez v22, :cond_10

    .line 1919
    const/4 v3, 0x0

    .line 1946
    :goto_b
    return-object v3

    .line 1793
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "to":Ljava/lang/String;
    .end local v6    # "from":Ljava/lang/String;
    .end local v7    # "type":Lorg/jivesoftware/smack/packet/IQ$Type;
    .end local v8    # "rmqId":J
    .end local v10    # "accountId":J
    .end local v24    # "iqType":I
    .end local v25    # "lastStreamId":I
    .end local v28    # "persistentId":Ljava/lang/String;
    .end local v33    # "streamId":I
    :cond_2
    const-string v4, "ID_NOT_AVAILABLE"

    goto/16 :goto_0

    .line 1795
    .restart local v4    # "id":Ljava/lang/String;
    :cond_3
    const-wide/16 v8, -0x1

    goto/16 :goto_1

    .line 1799
    .restart local v8    # "rmqId":J
    :cond_4
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 1801
    .restart local v28    # "persistentId":Ljava/lang/String;
    :cond_5
    const/16 v25, -0x1

    goto/16 :goto_3

    .line 1803
    .restart local v25    # "lastStreamId":I
    :cond_6
    const/16 v33, -0x1

    goto/16 :goto_4

    .line 1806
    .restart local v33    # "streamId":I
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1807
    .restart local v6    # "from":Ljava/lang/String;
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 1810
    .restart local v5    # "to":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getDefaultAccountId()J

    move-result-wide v10

    goto/16 :goto_7

    .line 1818
    .restart local v10    # "accountId":J
    .restart local v24    # "iqType":I
    :pswitch_0
    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 1819
    .restart local v7    # "type":Lorg/jivesoftware/smack/packet/IQ$Type;
    goto/16 :goto_8

    .line 1821
    .end local v7    # "type":Lorg/jivesoftware/smack/packet/IQ$Type;
    :pswitch_1
    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 1822
    .restart local v7    # "type":Lorg/jivesoftware/smack/packet/IQ$Type;
    goto/16 :goto_8

    .line 1824
    .end local v7    # "type":Lorg/jivesoftware/smack/packet/IQ$Type;
    :pswitch_2
    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 1825
    .restart local v7    # "type":Lorg/jivesoftware/smack/packet/IQ$Type;
    goto/16 :goto_8

    .line 1841
    .restart local v18    # "extId":I
    .restart local v20    # "extension":Lcom/google/common/io/protocol/ProtoBuf;
    :pswitch_3
    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v34

    .line 1844
    .local v34, "xmlBytes":[B
    new-instance v12, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v34

    invoke-direct {v12, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1845
    .local v12, "bais":Ljava/io/ByteArrayInputStream;
    invoke-static {}, Lorg/jivesoftware/smack/util/PacketParserUtils;->newXmlParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v23

    .line 1846
    .local v23, "iqParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v3, "UTF-8"

    move-object/from16 v0, v23

    invoke-interface {v0, v12, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1849
    :cond_a
    :goto_c
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    .local v17, "event":I
    const/4 v3, 0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_1

    .line 1850
    packed-switch v17, :pswitch_data_2

    goto :goto_c

    .line 1852
    :pswitch_4
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 1853
    .local v14, "elementName":Ljava/lang/String;
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v26

    .line 1857
    .local v26, "namespace":Ljava/lang/String;
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v30

    .line 1858
    .local v30, "providerMgr":Lorg/jivesoftware/smack/provider/ProviderManager;
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Lorg/jivesoftware/smack/provider/ProviderManager;->getIQProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    .line 1860
    .local v29, "provider":Ljava/lang/Object;
    if-eqz v29, :cond_c

    .line 1861
    move-object/from16 v0, v29

    instance-of v3, v0, Lorg/jivesoftware/smack/provider/IQProvider;

    if-eqz v3, :cond_b

    .line 1862
    check-cast v29, Lorg/jivesoftware/smack/provider/IQProvider;

    .end local v29    # "provider":Ljava/lang/Object;
    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/provider/IQProvider;->parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v22

    goto :goto_c

    .line 1863
    .restart local v29    # "provider":Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, v29

    instance-of v3, v0, Ljava/lang/Class;

    if-eqz v3, :cond_a

    .line 1864
    check-cast v29, Ljava/lang/Class;

    .end local v29    # "provider":Ljava/lang/Object;
    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseWithIntrospection(Ljava/lang/String;Ljava/lang/Class;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "iqPacket":Lorg/jivesoftware/smack/packet/IQ;
    check-cast v22, Lorg/jivesoftware/smack/packet/IQ;

    .restart local v22    # "iqPacket":Lorg/jivesoftware/smack/packet/IQ;
    goto :goto_c

    .line 1868
    .restart local v29    # "provider":Ljava/lang/Object;
    :cond_c
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Lorg/jivesoftware/smack/provider/ProviderManager;->getRawXmlIqProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    .line 1870
    move-object/from16 v0, v29

    instance-of v3, v0, Lorg/jivesoftware/smack/provider/RawXmlIQProvider;

    if-eqz v3, :cond_a

    .line 1871
    check-cast v29, Lorg/jivesoftware/smack/provider/RawXmlIQProvider;

    .end local v29    # "provider":Ljava/lang/Object;
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    move-object/from16 v2, v34

    invoke-virtual {v0, v14, v1, v2}, Lorg/jivesoftware/smack/provider/RawXmlIQProvider;->parseRawXml(Ljava/lang/String;Ljava/lang/String;[B)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v22

    goto :goto_c

    .line 1880
    .end local v12    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v14    # "elementName":Ljava/lang/String;
    .end local v17    # "event":I
    .end local v23    # "iqParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "namespace":Ljava/lang/String;
    .end local v30    # "providerMgr":Lorg/jivesoftware/smack/provider/ProviderManager;
    .end local v34    # "xmlBytes":[B
    :pswitch_5
    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v32

    .line 1881
    .local v32, "rosterBytes":[B
    new-instance v31, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->ROSTER_QUERY:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 1882
    .local v31, "roster":Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual/range {v31 .. v32}, Lcom/google/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/common/io/protocol/ProtoBuf;

    .line 1883
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/PacketReader;->parseRoster(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/RosterPacket;

    move-result-object v22

    .line 1884
    goto/16 :goto_a

    .line 1898
    .end local v31    # "roster":Lcom/google/common/io/protocol/ProtoBuf;
    .end local v32    # "rosterBytes":[B
    .restart local v27    # "o":Ljava/lang/Object;
    :cond_d
    move-object/from16 v0, v27

    instance-of v3, v0, Ljava/lang/Class;

    if-eqz v3, :cond_e

    move-object/from16 v13, v27

    .line 1900
    check-cast v13, Ljava/lang/Class;

    .line 1901
    .local v13, "clazz":Ljava/lang/Class;
    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/jivesoftware/smack/provider/IQProvider;

    .line 1902
    .local v29, "provider":Lorg/jivesoftware/smack/provider/IQProvider;
    goto/16 :goto_9

    .line 1903
    .end local v13    # "clazz":Ljava/lang/Class;
    .end local v29    # "provider":Lorg/jivesoftware/smack/provider/IQProvider;
    :cond_e
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Unexpected IQProvider class: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1910
    :cond_f
    const-string v3, "Smack/Packet"

    const/16 v35, 0x3

    move/from16 v0, v35

    invoke-static {v3, v0}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1911
    const-string v3, "Smack/Packet"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "parseIQ: cannot find IQProvider for extId="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1924
    .end local v18    # "extId":I
    .end local v20    # "extension":Lcom/google/common/io/protocol/ProtoBuf;
    .end local v27    # "o":Ljava/lang/Object;
    :cond_10
    const/4 v15, 0x0

    .line 1926
    .local v15, "error":Lorg/jivesoftware/smack/packet/XMPPError;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v7, v3, :cond_11

    .line 1927
    const/4 v3, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1928
    const/4 v3, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v16

    .line 1930
    .local v16, "errorProtobuf":Lcom/google/common/io/protocol/ProtoBuf;
    invoke-static/range {v16 .. v16}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v15

    .line 1935
    .end local v16    # "errorProtobuf":Lcom/google/common/io/protocol/ProtoBuf;
    :cond_11
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 1936
    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lorg/jivesoftware/smack/packet/IQ;->setRmqId(J)V

    .line 1937
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setRmq2Id(Ljava/lang/String;)V

    .line 1938
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setLastStreamId(I)V

    .line 1939
    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setStreamId(I)V

    .line 1940
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 1941
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 1942
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Lorg/jivesoftware/smack/packet/IQ;->setAccountId(J)V

    .line 1943
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1944
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    move-object/from16 v3, v22

    .line 1946
    goto/16 :goto_b

    .line 1816
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1838
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 1850
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
    .end packed-switch
.end method

.method private parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 18
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1246
    const/4 v13, 0x0

    .line 1248
    .local v13, "iqPacket":Lorg/jivesoftware/smack/packet/IQ;
    const-string v2, ""

    const-string v7, "stanza-id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseRmqIdFromString(Ljava/lang/String;)J

    move-result-wide v16

    .line 1250
    .local v16, "rmqId":J
    const-string v2, ""

    const-string v7, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1251
    .local v3, "id":Ljava/lang/String;
    const-string v2, ""

    const-string v7, "to"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1252
    .local v4, "to":Ljava/lang/String;
    const-string v2, ""

    const-string v7, "from"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1253
    .local v5, "from":Ljava/lang/String;
    const-string v2, ""

    const-string v7, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/packet/IQ$Type;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v6

    .line 1254
    .local v6, "type":Lorg/jivesoftware/smack/packet/IQ$Type;
    const/4 v11, 0x0

    .line 1256
    .local v11, "error":Lorg/jivesoftware/smack/packet/XMPPError;
    const/4 v9, 0x0

    .line 1257
    .local v9, "done":Z
    :cond_0
    :goto_0
    if-nez v9, :cond_8

    .line 1258
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .line 1260
    .local v12, "eventType":I
    const/4 v2, 0x2

    if-ne v12, v2, :cond_7

    .line 1261
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1262
    .local v10, "elementName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v14

    .line 1263
    .local v14, "namespace":Ljava/lang/String;
    const-string v2, "error"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1264
    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v11

    goto :goto_0

    .line 1266
    :cond_1
    const-string v2, "query"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "jabber:iq:auth"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1267
    invoke-direct/range {p0 .. p1}, Lorg/jivesoftware/smack/PacketReader;->parseAuthentication(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Authentication;

    move-result-object v13

    goto :goto_0

    .line 1269
    :cond_2
    const-string v2, "query"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "jabber:iq:roster"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1270
    invoke-direct/range {p0 .. p1}, Lorg/jivesoftware/smack/PacketReader;->parseRoster(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/RosterPacket;

    move-result-object v13

    goto :goto_0

    .line 1272
    :cond_3
    const-string v2, "query"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "jabber:iq:register"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1273
    invoke-direct/range {p0 .. p1}, Lorg/jivesoftware/smack/PacketReader;->parseRegistration(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Registration;

    move-result-object v13

    goto :goto_0

    .line 1275
    :cond_4
    const-string v2, "bind"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "urn:ietf:params:xml:ns:xmpp-bind"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1277
    invoke-direct/range {p0 .. p1}, Lorg/jivesoftware/smack/PacketReader;->parseResourceBinding(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Bind;

    move-result-object v13

    goto :goto_0

    .line 1288
    :cond_5
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v2

    invoke-virtual {v2, v10, v14}, Lorg/jivesoftware/smack/provider/ProviderManager;->getIQProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 1290
    .local v15, "provider":Ljava/lang/Object;
    if-eqz v15, :cond_0

    .line 1291
    instance-of v2, v15, Lorg/jivesoftware/smack/provider/IQProvider;

    if-eqz v2, :cond_6

    .line 1292
    check-cast v15, Lorg/jivesoftware/smack/provider/IQProvider;

    .end local v15    # "provider":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Lorg/jivesoftware/smack/provider/IQProvider;->parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v13

    goto/16 :goto_0

    .line 1294
    .restart local v15    # "provider":Ljava/lang/Object;
    :cond_6
    instance-of v2, v15, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1295
    check-cast v15, Ljava/lang/Class;

    .end local v15    # "provider":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-static {v10, v15, v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseWithIntrospection(Ljava/lang/String;Ljava/lang/Class;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "iqPacket":Lorg/jivesoftware/smack/packet/IQ;
    check-cast v13, Lorg/jivesoftware/smack/packet/IQ;

    .restart local v13    # "iqPacket":Lorg/jivesoftware/smack/packet/IQ;
    goto/16 :goto_0

    .line 1301
    .end local v10    # "elementName":Ljava/lang/String;
    .end local v14    # "namespace":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x3

    if-ne v12, v2, :cond_0

    .line 1302
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v7, "iq"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1303
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1308
    .end local v12    # "eventType":I
    :cond_8
    if-nez v13, :cond_9

    .line 1309
    const-wide/16 v7, -0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/jivesoftware/smack/PacketReader;->handleUnsupportedIqPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;J)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v13

    .line 1310
    if-nez v13, :cond_9

    .line 1311
    const/4 v2, 0x0

    .line 1323
    :goto_1
    return-object v2

    .line 1316
    :cond_9
    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setRmqId(J)V

    .line 1317
    invoke-virtual {v13, v3}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {v13, v4}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 1319
    invoke-virtual {v13, v5}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 1320
    invoke-virtual {v13, v6}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1321
    invoke-virtual {v13, v11}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    move-object v2, v13

    .line 1323
    goto :goto_1
.end method

.method private parseLoginResponse(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/LoginResponse;
    .locals 21
    .param p1, "protobuf"    # Lcom/google/common/io/protocol/ProtoBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1398
    new-instance v10, Lorg/jivesoftware/smack/packet/LoginResponse;

    invoke-direct {v10}, Lorg/jivesoftware/smack/packet/LoginResponse;-><init>()V

    .line 1399
    .local v10, "response":Lorg/jivesoftware/smack/packet/LoginResponse;
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1400
    .local v5, "id":Ljava/lang/String;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1402
    .local v14, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v10, v5}, Lorg/jivesoftware/smack/packet/LoginResponse;->setPacketID(Ljava/lang/String;)V

    .line 1403
    const/16 v18, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1404
    const/16 v18, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/jivesoftware/smack/packet/LoginResponse;->setJid(Ljava/lang/String;)V

    .line 1407
    const/16 v18, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1409
    const/16 v18, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 1411
    .local v2, "configProtoBuf":Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v16, 0x0

    .line 1412
    .local v16, "uploadStat":Ljava/lang/Boolean;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1413
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 1415
    :cond_0
    const/4 v8, 0x0

    .line 1416
    .local v8, "ip":Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1417
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1419
    :cond_1
    const-wide/16 v6, 0x0

    .line 1420
    .local v6, "interval":J
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1421
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v6

    .line 1423
    :cond_2
    new-instance v18, Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6, v7, v8}, Lorg/jivesoftware/smack/packet/HeartbeatConfig;-><init>(Ljava/lang/Boolean;JLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/jivesoftware/smack/packet/LoginResponse;->setHeartbeatConfig(Lorg/jivesoftware/smack/packet/HeartbeatConfig;)V

    .line 1428
    .end local v2    # "configProtoBuf":Lcom/google/common/io/protocol/ProtoBuf;
    .end local v6    # "interval":J
    .end local v8    # "ip":Ljava/lang/String;
    .end local v16    # "uploadStat":Ljava/lang/Boolean;
    :cond_3
    const/16 v18, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v15

    .line 1430
    .local v15, "settingsCount":I
    if-lez v15, :cond_5

    .line 1431
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v15, :cond_4

    .line 1432
    const/16 v18, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v13

    .line 1435
    .local v13, "settingProtoBuf":Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1436
    .local v9, "key":Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1437
    .local v17, "value":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v14, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1439
    .end local v9    # "key":Ljava/lang/String;
    .end local v13    # "settingProtoBuf":Lcom/google/common/io/protocol/ProtoBuf;
    .end local v17    # "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {v10, v14}, Lorg/jivesoftware/smack/packet/LoginResponse;->setSettings(Ljava/util/Map;)V

    .line 1443
    .end local v4    # "i":I
    :cond_5
    const/16 v18, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1445
    const/16 v18, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/jivesoftware/smack/packet/LoginResponse;->setLastStreamId(I)V

    .line 1451
    :cond_6
    const/16 v18, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1453
    const/16 v18, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/jivesoftware/smack/packet/LoginResponse;->setStreamId(I)V

    .line 1458
    :cond_7
    const/16 v18, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1460
    const/16 v18, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v11

    .line 1462
    .local v11, "serverClock":J
    const-string v18, "GTalkService"

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1463
    const-string v18, "Smack/Packet"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "parseLoginResponse: serverClock="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    :cond_8
    invoke-virtual {v10, v11, v12}, Lorg/jivesoftware/smack/packet/LoginResponse;->setServerTimestamp(J)V

    .line 1472
    .end local v11    # "serverClock":J
    .end local v15    # "settingsCount":I
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/XMPPConnection;->getConnectionConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isCompressionEnabled()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lorg/jivesoftware/smack/XMPPConnection;->startStreamCompression(Z)V

    .line 1477
    :cond_a
    return-object v10

    .line 1467
    :cond_b
    const/16 v18, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1468
    const/16 v18, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 1470
    .local v3, "errorProtobuf":Lcom/google/common/io/protocol/ProtoBuf;
    invoke-static {v3}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/jivesoftware/smack/packet/LoginResponse;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto :goto_1
.end method

.method private parseMechanisms(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Collection;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1183
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    .local v3, "mechanisms":Ljava/util/List;
    const/4 v0, 0x0

    .line 1185
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 1186
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1188
    .local v2, "eventType":I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 1189
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1190
    .local v1, "elementName":Ljava/lang/String;
    const-string v5, "mechanism"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1191
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 1193
    .local v4, "nextMechanism":Ljava/lang/String;
    const-string v5, "Smack/Packet"

    invoke-static {v5, v7}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse mechanisum - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1197
    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1200
    .end local v1    # "elementName":Ljava/lang/String;
    .end local v4    # "nextMechanism":Ljava/lang/String;
    :cond_2
    if-ne v2, v7, :cond_0

    .line 1201
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mechanisms"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1202
    const/4 v0, 0x1

    goto :goto_0

    .line 1206
    .end local v2    # "eventType":I
    :cond_3
    return-object v3
.end method

.method private parsePackets()V
    .locals 18

    .prologue
    .line 771
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 772
    .local v5, "eventType":I
    new-instance v13, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;

    const-string v14, "parsePackets"

    invoke-direct {v13, v14}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;-><init>(Ljava/lang/String;)V

    .line 775
    .local v13, "wakeLockDiag":Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v15, "parsePackets"

    invoke-virtual {v14, v15}, Lorg/jivesoftware/smack/XMPPConnection;->acquireWakeLock(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :try_start_1
    invoke-virtual {v13}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->wakeLockAcquired()V

    .line 781
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/jivesoftware/smack/PacketReader;->lastActive:J

    .line 782
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v14}, Lorg/jivesoftware/smack/XMPPConnection;->markPacketReception()V

    .line 785
    const-string v14, "Smack/Packet"

    const/4 v15, 0x3

    invoke-static {v14, v15}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    .line 787
    .local v11, "printLog":Z
    const/4 v14, 0x2

    if-ne v5, v14, :cond_1d

    .line 788
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "message"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 789
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v14}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseMessage(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v10

    .line 790
    .local v10, "packet":Lorg/jivesoftware/smack/packet/Packet;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/jivesoftware/smack/PacketReader;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 958
    .end local v10    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v13}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 959
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v15, "parsePackets"

    invoke-virtual {v14, v15}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    .line 962
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 964
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/jivesoftware/smack/PacketReader;->done:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v14, :cond_2

    const/4 v14, 0x1

    if-ne v5, v14, :cond_0

    .line 973
    .end local v5    # "eventType":I
    .end local v11    # "printLog":Z
    .end local v13    # "wakeLockDiag":Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    :cond_2
    :goto_1
    return-void

    .line 792
    .restart local v5    # "eventType":I
    .restart local v11    # "printLog":Z
    .restart local v13    # "wakeLockDiag":Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "iq"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 793
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/jivesoftware/smack/PacketReader;->parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v10

    .line 794
    .restart local v10    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/jivesoftware/smack/PacketReader;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 958
    .end local v10    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    .end local v11    # "printLog":Z
    :catchall_0
    move-exception v14

    :try_start_4
    invoke-virtual {v13}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 959
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v16, "parsePackets"

    invoke-virtual/range {v15 .. v16}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    .line 958
    throw v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 966
    .end local v5    # "eventType":I
    .end local v13    # "wakeLockDiag":Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    :catch_0
    move-exception v3

    .line 967
    .local v3, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v14, :cond_2

    .line 969
    const-string v14, "Smack/Packet"

    const-string v15, "PacketReader.parsePackets: caught "

    invoke-static {v14, v15, v3}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 970
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 796
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "eventType":I
    .restart local v11    # "printLog":Z
    .restart local v13    # "wakeLockDiag":Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "presence"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 797
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v14}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePresence(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v10

    .line 798
    .restart local v10    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/jivesoftware/smack/PacketReader;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 802
    .end local v10    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "stream"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 804
    if-eqz v11, :cond_6

    .line 805
    const-string v14, "got stream open"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 809
    :cond_6
    const-string v14, "jabber:client"

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 811
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 812
    .local v2, "count":I
    const/4 v6, 0x0

    .line 813
    .local v6, "gotConnectionId":Z
    const/4 v7, 0x0

    .line 815
    .local v7, "gotFrom":Z
    const/4 v8, 0x0

    .line 816
    .local v8, "i":I
    :goto_2
    if-ge v8, v2, :cond_1

    if-eqz v6, :cond_7

    if-nez v7, :cond_1

    .line 818
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, "attrName":Ljava/lang/String;
    const-string v14, "id"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 822
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    .line 823
    const-string v14, "1.0"

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v16, ""

    const-string v17, "version"

    invoke-interface/range {v15 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 828
    invoke-direct/range {p0 .. p0}, Lorg/jivesoftware/smack/PacketReader;->releaseConnectionIDLock()V

    .line 830
    :cond_8
    const/4 v6, 0x1

    .line 817
    :cond_9
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 832
    :cond_a
    const-string v14, "from"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 834
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v15, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    .line 836
    if-eqz v11, :cond_b

    .line 837
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "set servicename received from server: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v15, v15, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 841
    :cond_b
    const/4 v7, 0x1

    goto :goto_3

    .line 846
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v2    # "count":I
    .end local v6    # "gotConnectionId":Z
    .end local v7    # "gotFrom":Z
    .end local v8    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "error"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 847
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/jivesoftware/smack/PacketReader;->parseStreamError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v4

    .line 849
    .local v4, "error":Lorg/jivesoftware/smack/packet/StreamError;
    if-eqz v11, :cond_d

    .line 850
    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/StreamError;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 854
    :cond_d
    new-instance v14, Lorg/jivesoftware/smack/XMPPException;

    invoke-direct {v14, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/StreamError;)V

    throw v14

    .line 856
    .end local v4    # "error":Lorg/jivesoftware/smack/packet/StreamError;
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "features"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 857
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/jivesoftware/smack/PacketReader;->parseFeatures(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 859
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "proceed"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 860
    if-eqz v11, :cond_10

    .line 861
    const-string v14, "got proceed TLS, reset parser"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 865
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v14}, Lorg/jivesoftware/smack/XMPPConnection;->proceedTLSReceived()V

    .line 868
    invoke-direct/range {p0 .. p0}, Lorg/jivesoftware/smack/PacketReader;->resetParser()V

    goto/16 :goto_0

    .line 870
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "failure"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 871
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 872
    .local v9, "namespace":Ljava/lang/String;
    const-string v14, "urn:ietf:params:xml:ns:xmpp-tls"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 873
    if-eqz v11, :cond_12

    .line 874
    const-string v14, "TLS negotiation has failed"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 877
    :cond_12
    new-instance v14, Ljava/lang/Exception;

    const-string v15, "TLS negotiation has failed"

    invoke-direct {v14, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .line 879
    :cond_13
    const-string v14, "http://jabber.org/protocol/compress"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 880
    if-eqz v11, :cond_14

    .line 881
    const-string v14, "compression denied"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 887
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v14}, Lorg/jivesoftware/smack/XMPPConnection;->streamCompressionDenied()V

    goto/16 :goto_0

    .line 890
    :cond_15
    if-eqz v11, :cond_16

    .line 891
    const-string v14, "SASL auth failed"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 896
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v14}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v14

    invoke-virtual {v14}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticationFailed()V

    goto/16 :goto_0

    .line 899
    .end local v9    # "namespace":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "challenge"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 900
    if-eqz v11, :cond_18

    .line 901
    const-string v14, "SASL auth challenge received"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 905
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v14}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/jivesoftware/smack/SASLAuthentication;->challengeReceived(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 907
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "success"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 908
    if-eqz v11, :cond_1a

    .line 909
    const-string v14, "SASL authenticated, open stream, reset parser"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 914
    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v14, v14, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v14}, Lorg/jivesoftware/smack/PacketWriter;->openStream()V

    .line 918
    invoke-direct/range {p0 .. p0}, Lorg/jivesoftware/smack/PacketReader;->resetParser()V

    .line 922
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v14}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v14

    invoke-virtual {v14}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticated()V

    goto/16 :goto_0

    .line 924
    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "compressed"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 925
    if-eqz v11, :cond_1c

    .line 926
    const-string v14, "start stream compression, reset parser"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 931
    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v14}, Lorg/jivesoftware/smack/XMPPConnection;->startStreamCompression()V

    .line 934
    invoke-direct/range {p0 .. p0}, Lorg/jivesoftware/smack/PacketReader;->resetParser()V

    goto/16 :goto_0

    .line 936
    :cond_1d
    const/4 v14, 0x3

    if-ne v5, v14, :cond_1f

    .line 937
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "stream"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 938
    if-eqz v11, :cond_1e

    .line 939
    const-string v14, "got stream end tag, closing connection"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 942
    :cond_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v14}, Lorg/jivesoftware/smack/XMPPConnection;->close()V

    goto/16 :goto_0

    .line 944
    :cond_1f
    const/4 v14, 0x4

    if-ne v5, v14, :cond_1

    .line 945
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    .line 946
    .local v12, "text":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 950
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_1

    goto/16 :goto_0
.end method

.method private parsePacketsFromProtoBufs()V
    .locals 11

    .prologue
    .line 672
    const/16 v8, 0x2000

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 673
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, -0x1

    .line 674
    .local v3, "numBytesRead":I
    const/4 v5, 0x0

    .line 675
    .local v5, "readVersion":Z
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, v8, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;

    .line 677
    .local v1, "in":Ljava/io/InputStream;
    new-instance v7, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;

    const-string v8, "ParseProtoBuf"

    invoke-direct {v7, v8}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;-><init>(Ljava/lang/String;)V

    .line 681
    .local v7, "wakeLockDiag":Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    const/4 v8, 0x1

    :try_start_0
    invoke-static {v8}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 683
    :goto_0
    iget-boolean v8, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v8, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    invoke-virtual {v1, v8, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_0

    .line 686
    iget-boolean v8, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z
    :try_end_0
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v8, :cond_1

    .line 758
    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 761
    const-string v8, "Smack/Packet"

    const-string v9, "[parsePacketsFromProtoBufs] close connection\'s reader"

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    :goto_1
    invoke-virtual {v8}, Lorg/jivesoftware/smack/XMPPConnection;->closeReader()V

    .line 764
    return-void

    .line 690
    :cond_1
    :try_start_1
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v9, "parsePacketsFromProtoBufs"

    invoke-virtual {v8, v9}, Lorg/jivesoftware/smack/XMPPConnection;->acquireWakeLock(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 693
    :try_start_2
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->wakeLockAcquired()V

    .line 695
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/jivesoftware/smack/PacketReader;->lastActive:J

    .line 696
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v8}, Lorg/jivesoftware/smack/XMPPConnection;->markPacketReception()V

    .line 697
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 698
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 699
    if-nez v5, :cond_9

    .line 700
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-gtz v8, :cond_3

    .line 701
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 740
    :try_start_3
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 741
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v9, "parsePacketsFromProtoBufs"

    invoke-virtual {v8, v9}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 744
    :catch_0
    move-exception v4

    .line 745
    .local v4, "pbse":Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :try_start_4
    iget-boolean v8, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v8, :cond_2

    .line 746
    const-string v8, "Smack/Packet"

    const-string v9, "PacketReader.parsePacketsFromProtoBufs: caught "

    invoke-static {v8, v9, v4}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 747
    invoke-virtual {p0, v4}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 758
    :cond_2
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 761
    const-string v8, "Smack/Packet"

    const-string v9, "[parsePacketsFromProtoBufs] close connection\'s reader"

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    goto :goto_1

    .line 704
    .end local v4    # "pbse":Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :cond_3
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 708
    .local v6, "version":B
    sget-byte v8, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    if-ne v6, v8, :cond_8

    .line 709
    const/4 v5, 0x1

    .line 710
    const-string v8, "Smack/Packet"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 711
    const-string v8, "Smack/Packet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Server is using version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :cond_4
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    .line 714
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->releaseConnectionIDLock()V

    .line 725
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-gtz v8, :cond_9

    .line 726
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 740
    :try_start_6
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 741
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v9, "parsePacketsFromProtoBufs"

    invoke-virtual {v8, v9}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    .line 749
    .end local v6    # "version":B
    :catch_1
    move-exception v2

    .line 750
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_7
    iget-boolean v8, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v8, :cond_7

    .line 752
    const-string v8, "Smack/Packet"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 753
    const-string v8, "Smack/Packet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PacketReader.parsePacketsFromProtoBufs: caught "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :cond_6
    invoke-virtual {p0, v2}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 758
    :cond_7
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 761
    const-string v8, "Smack/Packet"

    const-string v9, "[parsePacketsFromProtoBufs] close connection\'s reader"

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    goto/16 :goto_1

    .line 716
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v6    # "version":B
    :cond_8
    :try_start_8
    const-string v8, "Smack/Packet"

    const-string v9, "Required version not supported by server."

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-boolean v8, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v8, :cond_5

    .line 720
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Required version not supported by server."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 740
    .end local v6    # "version":B
    :catchall_0
    move-exception v8

    :try_start_9
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 741
    iget-object v9, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v10, "parsePacketsFromProtoBufs"

    invoke-virtual {v9, v10}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    .line 740
    throw v8
    :try_end_9
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 758
    :catchall_1
    move-exception v8

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 761
    const-string v9, "Smack/Packet"

    const-string v10, "[parsePacketsFromProtoBufs] close connection\'s reader"

    invoke-static {v9, v10}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v9, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v9}, Lorg/jivesoftware/smack/XMPPConnection;->closeReader()V

    .line 758
    throw v8

    .line 730
    :cond_9
    :try_start_a
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->protoParser:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParser;

    invoke-interface {v8, v0}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParser;->parse(Ljava/nio/ByteBuffer;)V

    .line 731
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 735
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v8, v8, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;

    if-eq v1, v8, :cond_a

    const-string v8, "Smack/Packet"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 736
    const-string v8, "Smack/Packet"

    const-string v9, "Switching input stream"

    invoke-static {v8, v9}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :cond_a
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, v8, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 740
    :try_start_b
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 741
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v9, "parsePacketsFromProtoBufs"

    invoke-virtual {v8, v9}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V
    :try_end_b
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_0
.end method

.method private parseRegistration(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Registration;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1722
    new-instance v4, Lorg/jivesoftware/smack/packet/Registration;

    invoke-direct {v4}, Lorg/jivesoftware/smack/packet/Registration;-><init>()V

    .line 1723
    .local v4, "registration":Lorg/jivesoftware/smack/packet/Registration;
    const/4 v2, 0x0

    .line 1724
    .local v2, "fields":Ljava/util/Map;
    const/4 v0, 0x0

    .line 1725
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_6

    .line 1726
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 1727
    .local v1, "eventType":I
    const/4 v6, 0x2

    if-ne v1, v6, :cond_5

    .line 1730
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v6

    const-string v7, "jabber:iq:register"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1731
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1732
    .local v3, "name":Ljava/lang/String;
    const-string v5, ""

    .line 1733
    .local v5, "value":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1734
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "fields":Ljava/util/Map;
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1737
    .restart local v2    # "fields":Ljava/util/Map;
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 1738
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 1741
    :cond_2
    const-string v6, "instructions"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1742
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1745
    :cond_3
    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/packet/Registration;->setInstructions(Ljava/lang/String;)V

    goto :goto_0

    .line 1750
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/jivesoftware/smack/packet/Registration;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    goto :goto_0

    .line 1757
    :cond_5
    const/4 v6, 0x3

    if-ne v1, v6, :cond_0

    .line 1758
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "query"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1759
    const/4 v0, 0x1

    goto :goto_0

    .line 1763
    .end local v1    # "eventType":I
    :cond_6
    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/packet/Registration;->setAttributes(Ljava/util/Map;)V

    .line 1764
    return-object v4
.end method

.method private parseResourceBinding(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Bind;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1769
    new-instance v0, Lorg/jivesoftware/smack/packet/Bind;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Bind;-><init>()V

    .line 1770
    .local v0, "bind":Lorg/jivesoftware/smack/packet/Bind;
    const/4 v1, 0x0

    .line 1771
    .local v1, "done":Z
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 1772
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1773
    .local v2, "eventType":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1774
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "resource"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1775
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/packet/Bind;->setResource(Ljava/lang/String;)V

    goto :goto_0

    .line 1777
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1778
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/packet/Bind;->setJid(Ljava/lang/String;)V

    goto :goto_0

    .line 1780
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1781
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bind"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1782
    const/4 v1, 0x1

    goto :goto_0

    .line 1787
    .end local v2    # "eventType":I
    :cond_3
    return-object v0
.end method

.method private parseRoster(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/RosterPacket;
    .locals 10
    .param p1, "protobuf"    # Lcom/google/common/io/protocol/ProtoBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1625
    new-instance v7, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v7}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 1626
    .local v7, "roster":Lorg/jivesoftware/smack/packet/RosterPacket;
    const/4 v2, 0x0

    .line 1628
    .local v2, "item":Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1629
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smack/packet/RosterPacket;->setEtag(Ljava/lang/String;)V

    .line 1639
    :cond_0
    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v6

    .line 1641
    .local v6, "numItems":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_6

    .line 1642
    const/4 v9, 0x3

    invoke-virtual {p1, v9, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 1643
    .local v3, "itemPB":Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1644
    .local v4, "jid":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1647
    .local v5, "name":Ljava/lang/String;
    new-instance v2, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .end local v2    # "item":Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-direct {v2, v4, v5}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    .restart local v2    # "item":Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1650
    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v8

    .line 1652
    .local v8, "subscriptionType":I
    packed-switch v8, :pswitch_data_0

    .line 1674
    .end local v8    # "subscriptionType":I
    :cond_1
    :goto_1
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1675
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 1677
    .local v0, "askType":I
    packed-switch v0, :pswitch_data_1

    .line 1686
    .end local v0    # "askType":I
    :cond_2
    :goto_2
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1687
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v9

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetRejected(Z)V

    .line 1690
    :cond_3
    const/4 v9, 0x7

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1691
    const/4 v9, 0x7

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v9

    packed-switch v9, :pswitch_data_2

    .line 1702
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->DEFAULT:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    .line 1709
    :goto_3
    const/4 v9, 0x6

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1710
    const/4 v9, 0x6

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v9

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setQuickContact(Z)V

    .line 1715
    :cond_4
    invoke-virtual {v7, v2}, Lorg/jivesoftware/smack/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    .line 1641
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1630
    .end local v1    # "i":I
    .end local v3    # "itemPB":Lcom/google/common/io/protocol/ProtoBuf;
    .end local v4    # "jid":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "numItems":I
    :cond_5
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1632
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1633
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smack/packet/RosterPacket;->setNotModified(Ljava/lang/Boolean;)V

    .line 1718
    :cond_6
    return-object v7

    .line 1654
    .restart local v1    # "i":I
    .restart local v3    # "itemPB":Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v4    # "jid":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "numItems":I
    .restart local v8    # "subscriptionType":I
    :pswitch_0
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->BOTH:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    goto :goto_1

    .line 1657
    :pswitch_1
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->FROM:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    goto :goto_1

    .line 1660
    :pswitch_2
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->TO:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    goto :goto_1

    .line 1663
    :pswitch_3
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->NONE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    goto :goto_1

    .line 1666
    :pswitch_4
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->REMOVE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    goto :goto_1

    .line 1679
    .end local v8    # "subscriptionType":I
    .restart local v0    # "askType":I
    :pswitch_5
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->SUBSCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemStatus(Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;)V

    goto :goto_2

    .line 1693
    .end local v0    # "askType":I
    :pswitch_6
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->BLOCKED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    goto :goto_3

    .line 1696
    :pswitch_7
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->HIDDEN:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    goto :goto_3

    .line 1699
    :pswitch_8
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->PINNED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    goto :goto_3

    .line 1706
    :cond_7
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->DEFAULT:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    goto :goto_3

    .line 1652
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 1677
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    .line 1691
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private parseRoster(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/RosterPacket;
    .locals 21
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1516
    new-instance v14, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v14}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 1517
    .local v14, "roster":Lorg/jivesoftware/smack/packet/RosterPacket;
    const/4 v4, 0x0

    .line 1518
    .local v4, "done":Z
    const/4 v10, 0x0

    .line 1520
    .local v10, "item":Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    :cond_0
    :goto_0
    if-nez v4, :cond_8

    .line 1521
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 1522
    .local v5, "eventType":I
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v5, v0, :cond_6

    .line 1523
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "item"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1524
    const-string v19, ""

    const-string v20, "jid"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1525
    .local v11, "jid":Ljava/lang/String;
    const-string v19, ""

    const-string v20, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1527
    .local v13, "name":Ljava/lang/String;
    new-instance v10, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .end local v10    # "item":Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-direct {v10, v11, v13}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    .restart local v10    # "item":Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    const-string v19, ""

    const-string v20, "ask"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1546
    .local v3, "ask":Ljava/lang/String;
    invoke-static {v3}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-result-object v15

    .line 1548
    .local v15, "status":Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    invoke-virtual {v10, v15}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemStatus(Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;)V

    .line 1550
    const-string v19, ""

    const-string v20, "subscription"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1552
    .local v16, "subscription":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v18

    .line 1554
    .local v18, "type":Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    .line 1556
    invoke-static {}, Lorg/jivesoftware/smack/GoogleExtensions;->getSupportExtendedContactAttribute()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1557
    const/4 v12, 0x0

    .line 1561
    .local v12, "mc":I
    const-string v19, "google:roster"

    const-string v20, "mc"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1563
    .local v6, "gr_mc":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1566
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 1572
    :cond_1
    :goto_1
    const-string v19, "google:roster"

    const-string v20, "t"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1574
    .local v8, "gr_t":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 1576
    invoke-virtual {v10, v8}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetStatusString(Ljava/lang/String;)V

    .line 1579
    :cond_2
    const-string v19, "google:roster"

    const-string v20, "rejected"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1581
    .local v7, "gr_rejected":Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string v19, "true"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1583
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetRejected(Z)V

    .line 1589
    :cond_3
    const/4 v9, 0x0

    .line 1591
    .local v9, "isQuickContact":Z
    invoke-virtual {v10}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionGetStatus()Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    move-result-object v17

    .line 1592
    .local v17, "t":Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    sget-object v19, Lorg/jivesoftware/smack/PacketReader$6;->$SwitchMap$org$jivesoftware$smack$packet$RosterPacket$Item$G_STATUS:[I

    invoke-virtual/range {v17 .. v17}, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    .line 1605
    :goto_2
    invoke-virtual {v10, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setQuickContact(Z)V

    .line 1608
    .end local v3    # "ask":Ljava/lang/String;
    .end local v6    # "gr_mc":Ljava/lang/String;
    .end local v7    # "gr_rejected":Ljava/lang/String;
    .end local v8    # "gr_t":Ljava/lang/String;
    .end local v9    # "isQuickContact":Z
    .end local v11    # "jid":Ljava/lang/String;
    .end local v12    # "mc":I
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "status":Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .end local v16    # "subscription":Ljava/lang/String;
    .end local v17    # "t":Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    .end local v18    # "type":Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "group"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    if-eqz v10, :cond_0

    .line 1609
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->addGroupName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1594
    .restart local v3    # "ask":Ljava/lang/String;
    .restart local v6    # "gr_mc":Ljava/lang/String;
    .restart local v7    # "gr_rejected":Ljava/lang/String;
    .restart local v8    # "gr_t":Ljava/lang/String;
    .restart local v9    # "isQuickContact":Z
    .restart local v11    # "jid":Ljava/lang/String;
    .restart local v12    # "mc":I
    .restart local v13    # "name":Ljava/lang/String;
    .restart local v15    # "status":Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .restart local v16    # "subscription":Ljava/lang/String;
    .restart local v17    # "t":Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    .restart local v18    # "type":Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    :pswitch_0
    const/4 v9, 0x1

    .line 1595
    goto :goto_2

    .line 1599
    :pswitch_1
    const/16 v19, 0x5

    move/from16 v0, v19

    if-lt v12, v0, :cond_5

    const/4 v9, 0x1

    .line 1600
    :goto_3
    goto :goto_2

    .line 1599
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 1612
    .end local v3    # "ask":Ljava/lang/String;
    .end local v6    # "gr_mc":Ljava/lang/String;
    .end local v7    # "gr_rejected":Ljava/lang/String;
    .end local v8    # "gr_t":Ljava/lang/String;
    .end local v9    # "isQuickContact":Z
    .end local v11    # "jid":Ljava/lang/String;
    .end local v12    # "mc":I
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "status":Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .end local v16    # "subscription":Ljava/lang/String;
    .end local v17    # "t":Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    .end local v18    # "type":Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    :cond_6
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v5, v0, :cond_0

    .line 1613
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "item"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1614
    invoke-virtual {v14, v10}, Lorg/jivesoftware/smack/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    .line 1616
    :cond_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "query"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1617
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1568
    .restart local v3    # "ask":Ljava/lang/String;
    .restart local v6    # "gr_mc":Ljava/lang/String;
    .restart local v11    # "jid":Ljava/lang/String;
    .restart local v12    # "mc":I
    .restart local v13    # "name":Ljava/lang/String;
    .restart local v15    # "status":Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .restart local v16    # "subscription":Ljava/lang/String;
    .restart local v18    # "type":Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    :catch_0
    move-exception v19

    goto/16 :goto_1

    .line 1621
    .end local v3    # "ask":Ljava/lang/String;
    .end local v5    # "eventType":I
    .end local v6    # "gr_mc":Ljava/lang/String;
    .end local v11    # "jid":Ljava/lang/String;
    .end local v12    # "mc":I
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "status":Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .end local v16    # "subscription":Ljava/lang/String;
    .end local v18    # "type":Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    :cond_8
    return-object v14

    .line 1592
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseStreamError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/StreamError;
    .locals 4
    .param p1, "protobuf"    # Lcom/google/common/io/protocol/ProtoBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1094
    const/4 v0, 0x0

    .line 1095
    .local v0, "streamError":Lorg/jivesoftware/smack/packet/StreamError;
    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1096
    new-instance v0, Lorg/jivesoftware/smack/packet/StreamError;

    .end local v0    # "streamError":Lorg/jivesoftware/smack/packet/StreamError;
    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/StreamError;-><init>(Ljava/lang/String;)V

    .line 1098
    .restart local v0    # "streamError":Lorg/jivesoftware/smack/packet/StreamError;
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1099
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/StreamError;->setText(Ljava/lang/String;)V

    .line 1103
    :cond_0
    if-eqz v0, :cond_1

    .line 1104
    const-string v1, "Smack/Packet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PacketReader] got stream error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/StreamError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :cond_1
    return-object v0
.end method

.method private parseStreamError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StreamError;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1053
    const/4 v3, 0x0

    .line 1054
    .local v3, "streamError":Lorg/jivesoftware/smack/packet/StreamError;
    const/4 v0, 0x0

    .line 1056
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 1057
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 1058
    .local v1, "eventType":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1060
    .local v2, "name":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1062
    :pswitch_0
    const-string v4, "Smack/Packet"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string v4, "text"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1064
    new-instance v3, Lorg/jivesoftware/smack/packet/StreamError;

    .end local v3    # "streamError":Lorg/jivesoftware/smack/packet/StreamError;
    invoke-direct {v3, v2}, Lorg/jivesoftware/smack/packet/StreamError;-><init>(Ljava/lang/String;)V

    .restart local v3    # "streamError":Lorg/jivesoftware/smack/packet/StreamError;
    goto :goto_0

    .line 1069
    :pswitch_1
    const-string v4, "error"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1070
    const-string v4, "Smack/Packet"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "</"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const/4 v0, 0x1

    goto :goto_0

    .line 1073
    :cond_1
    const-string v4, "Smack/Packet"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    </"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1078
    :pswitch_2
    if-eqz v3, :cond_0

    .line 1079
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/packet/StreamError;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1085
    .end local v1    # "eventType":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .line 1086
    const-string v4, "Smack/Packet"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PacketReader] got stream error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/StreamError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :cond_3
    return-object v3

    .line 1060
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processListeners()V
    .locals 9

    .prologue
    .line 478
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v7, "PacketReader.processListeners.1"

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/XMPPConnection;->acquireWakeLock(Ljava/lang/String;)V

    .line 481
    :try_start_0
    new-instance v5, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;

    const-string v6, "PacketReader.processListeners"

    invoke-direct {v5, v6}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;-><init>(Ljava/lang/String;)V

    .line 483
    .local v5, "wakeLockDiag":Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    const/4 v3, 0x0

    .line 484
    .local v3, "loop":I
    const/4 v2, 0x0

    .line 486
    .local v2, "lastLoop":I
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v6, :cond_4

    .line 487
    const/4 v4, 0x0

    .line 489
    .local v4, "processedPacket":Z
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageListeners:Ljava/util/List;

    invoke-direct {p0, v6}, Lorg/jivesoftware/smack/PacketReader;->processListeners(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 491
    const/4 v4, 0x1

    .line 494
    :cond_1
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->listeners:Ljava/util/List;

    invoke-direct {p0, v6}, Lorg/jivesoftware/smack/PacketReader;->processListeners(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 496
    const/4 v4, 0x1

    .line 499
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 501
    if-nez v4, :cond_0

    .line 502
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    move-result-wide v0

    .line 503
    .local v0, "diff":J
    const-wide/16 v6, 0x1f4

    cmp-long v6, v0, v6

    if-lez v6, :cond_3

    .line 504
    const-string v6, "Smack"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PacketReader] processListeners: Num of loop processed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, v3, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_3
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v7, "PacketReader.processListeners"

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 513
    :try_start_1
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 514
    :try_start_2
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V

    .line 515
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 521
    :goto_1
    :try_start_3
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v7, "PacketReader.processListeners"

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/XMPPConnection;->acquireWakeLock(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->wakeLockAcquired()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 523
    move v2, v3

    goto :goto_0

    .line 515
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 516
    :catch_0
    move-exception v6

    goto :goto_1

    .line 527
    .end local v0    # "diff":J
    .end local v2    # "lastLoop":I
    .end local v3    # "loop":I
    .end local v4    # "processedPacket":Z
    .end local v5    # "wakeLockDiag":Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v8, "PacketReader.processListeners.1"

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    throw v6

    .restart local v2    # "lastLoop":I
    .restart local v3    # "loop":I
    .restart local v5    # "wakeLockDiag":Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    :cond_4
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v7, "PacketReader.processListeners.1"

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method private processListeners(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;>;"
    const/4 v1, 0x0

    .line 454
    .local v1, "retVal":Z
    monitor-enter p1

    .line 455
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 456
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 457
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;

    .line 458
    .local v3, "wrapper":Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    if-eqz v3, :cond_0

    .line 464
    invoke-virtual {v3}, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->notifyListener()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 465
    const/4 v1, 0x1

    .line 456
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    .end local v3    # "wrapper":Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    :cond_1
    monitor-exit p1

    .line 471
    return v1

    .line 469
    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 5
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    const/4 v4, 0x3

    .line 998
    if-nez p1, :cond_0

    .line 1049
    :goto_0
    return-void

    .line 1004
    :cond_0
    const-string v3, "Smack/Packet"

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1005
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->toLogString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1013
    :cond_1
    :goto_1
    instance-of v3, p1, Lorg/jivesoftware/smack/packet/DataMessage;

    if-eqz v3, :cond_4

    .line 1015
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageCollectors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1017
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_8

    .line 1018
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageCollectors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/DataMessageCollector;

    .line 1019
    .local v0, "collector":Lorg/jivesoftware/smack/DataMessageCollector;
    if-eqz v0, :cond_2

    .line 1021
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/DataMessageCollector;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1017
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1006
    .end local v0    # "collector":Lorg/jivesoftware/smack/DataMessageCollector;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_3
    const-string v3, "Sync"

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1008
    instance-of v3, p1, Lorg/jivesoftware/smack/packet/DataMessage;

    if-eqz v3, :cond_1

    .line 1009
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->toLogString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    goto :goto_1

    .line 1026
    :cond_4
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    monitor-enter v4

    .line 1027
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_6

    .line 1028
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    .line 1029
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1027
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1032
    :cond_6
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1036
    .restart local v2    # "size":I
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_8

    .line 1037
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/PacketCollector;

    .line 1038
    .local v0, "collector":Lorg/jivesoftware/smack/PacketCollector;
    if-eqz v0, :cond_7

    .line 1040
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketCollector;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1036
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1032
    .end local v0    # "collector":Lorg/jivesoftware/smack/PacketCollector;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1046
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_8
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    monitor-enter v4

    .line 1047
    :try_start_2
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1048
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method private releaseConnectionIDLock()V
    .locals 2

    .prologue
    .line 985
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connectionIDLock:Ljava/lang/Object;

    monitor-enter v1

    .line 986
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connectionIDLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 987
    monitor-exit v1

    .line 988
    return-void

    .line 987
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private resetParser()V
    .locals 4

    .prologue
    .line 438
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-boolean v1, v1, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-eqz v1, :cond_0

    .line 439
    new-instance v1, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;-><init>()V

    invoke-direct {v1, v2, p0}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;-><init>(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;Lcom/google/android/gsf/gtalkservice/proto/ProtoBufEventHandler;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->protoParser:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParser;

    .line 449
    :goto_0
    return-void

    .line 443
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/jivesoftware/smack/util/PacketParserUtils;->newXmlParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 444
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v2, v2, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;

    const-string v3, "UTF-8"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V
    .locals 2
    .param p1, "connectionListener"    # Lorg/jivesoftware/smack/ConnectionListener;

    .prologue
    .line 325
    if-nez p1, :cond_0

    .line 334
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    monitor-enter v1

    .line 330
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addDataMessageListener(Lorg/jivesoftware/smack/PacketListener;)Z
    .locals 6
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/PacketListener;

    .prologue
    .line 193
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageListeners:Ljava/util/List;

    monitor-enter v3

    .line 194
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;

    .line 195
    .local v1, "wrapper":Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    iget-object v2, v1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    const-string v2, "Smack/Packet"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addDataMessageListener: duplicate listener "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jivesoftware/smack/PacketReader;->log(Ljava/lang/String;)V

    .line 199
    :cond_1
    const/4 v2, 0x0

    monitor-exit v3

    .line 207
    .end local v1    # "wrapper":Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    :goto_0
    return v2

    .line 205
    :cond_2
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageListeners:Ljava/util/List;

    new-instance v4, Lorg/jivesoftware/smack/PacketReader$DataMessageListenerWrapper;

    new-instance v5, Lorg/jivesoftware/smack/DataMessageCollector;

    invoke-direct {v5, p0}, Lorg/jivesoftware/smack/DataMessageCollector;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    invoke-direct {v4, p0, p1, v5}, Lorg/jivesoftware/smack/PacketReader$DataMessageListenerWrapper;-><init>(Lorg/jivesoftware/smack/PacketReader;Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/PacketCollector;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 208
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)Z
    .locals 6
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/PacketListener;
    .param p2, "packetFilter"    # Lorg/jivesoftware/smack/filter/PacketFilter;

    .prologue
    .line 235
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->listeners:Ljava/util/List;

    monitor-enter v3

    .line 236
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;

    .line 237
    .local v1, "wrapper":Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    iget-object v2, v1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetCollector:Lorg/jivesoftware/smack/PacketCollector;

    iget-object v2, v2, Lorg/jivesoftware/smack/PacketCollector;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    const-string v2, "Smack/Packet"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPacketListener: duplicate listener "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " and filter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jivesoftware/smack/PacketReader;->log(Ljava/lang/String;)V

    .line 243
    :cond_1
    const/4 v2, 0x0

    monitor-exit v3

    .line 249
    .end local v1    # "wrapper":Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    :goto_0
    return v2

    .line 247
    :cond_2
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->listeners:Ljava/util/List;

    new-instance v4, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;

    new-instance v5, Lorg/jivesoftware/smack/PacketCollector;

    invoke-direct {v5, p0, p2}, Lorg/jivesoftware/smack/PacketCollector;-><init>(Lorg/jivesoftware/smack/PacketReader;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    invoke-direct {v4, p0, p1, v5}, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;-><init>(Lorg/jivesoftware/smack/PacketReader;Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/PacketCollector;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 250
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;
    .locals 1
    .param p1, "packetFilter"    # Lorg/jivesoftware/smack/filter/PacketFilter;

    .prologue
    .line 185
    new-instance v0, Lorg/jivesoftware/smack/PacketCollector;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/PacketCollector;-><init>(Lorg/jivesoftware/smack/PacketReader;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 2020
    const-string v0, "Packet dataMessage listeners:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2021
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageListeners:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smack/PacketReader;->dumpListener(Ljava/util/List;Ljava/io/PrintWriter;)V

    .line 2023
    const-string v0, "Packet listeners:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2024
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->listeners:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smack/PacketReader;->dumpListener(Ljava/util/List;Ljava/io/PrintWriter;)V

    .line 2025
    return-void
.end method

.method public getLastActive()J
    .locals 2

    .prologue
    .line 1953
    iget-wide v0, p0, Lorg/jivesoftware/smack/PacketReader;->lastActive:J

    return-wide v0
.end method

.method public handleProtoBuf(Lcom/google/common/io/protocol/ProtoBuf;J)V
    .locals 12
    .param p1, "protobuf"    # Lcom/google/common/io/protocol/ProtoBuf;
    .param p2, "size"    # J

    .prologue
    .line 538
    iget-boolean v7, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-eqz v7, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    const/4 v2, 0x0

    .line 542
    .local v2, "packet":Lorg/jivesoftware/smack/packet/Packet;
    invoke-virtual {p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v6

    .line 545
    .local v6, "type":Lcom/google/common/io/protocol/ProtoBufType;
    :try_start_0
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_PING:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_7

    .line 546
    const-string v7, "Smack/Packet"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 547
    const-string v7, "Received HeartbeatPing from server."

    invoke-direct {p0, v7}, Lorg/jivesoftware/smack/PacketReader;->log(Ljava/lang/String;)V

    .line 552
    :cond_2
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 553
    new-instance v3, Lorg/jivesoftware/smack/packet/HeartbeatPing;

    invoke-direct {v3}, Lorg/jivesoftware/smack/packet/HeartbeatPing;-><init>()V

    .end local v2    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    .local v3, "packet":Lorg/jivesoftware/smack/packet/Packet;
    move-object v2, v3

    .line 556
    .end local v3    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    .restart local v2    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    :cond_3
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v7, v7, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/PacketWriter;->sendHeartbeatAck()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :cond_4
    :goto_1
    if-eqz v2, :cond_14

    .line 610
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v4

    .line 611
    .local v4, "rmq2Mgr":Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    if-eqz v4, :cond_5

    .line 612
    invoke-virtual {v4, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processS2dMessage(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 614
    invoke-virtual {p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v7

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Packet;->getRmq2Id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getLastStreamIdReceived()I

    move-result v9

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Packet;->getLastStreamId()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Lcom/google/android/gsf/gtalkservice/LogTag;->logRmq2(Lcom/google/common/io/protocol/ProtoBufType;Ljava/lang/String;IIZ)V

    .line 619
    :cond_5
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getRmqManager()Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    move-result-object v5

    .line 620
    .local v5, "rmqMgr":Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;
    if-eqz v5, :cond_6

    .line 621
    invoke-virtual {v5, v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->processS2dMessage(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 624
    :cond_6
    invoke-direct {p0, v2}, Lorg/jivesoftware/smack/PacketReader;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 625
    const/4 v7, 0x1

    invoke-static {v2, p2, p3, v7}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->update(Lorg/jivesoftware/smack/packet/Packet;JZ)V

    goto :goto_0

    .line 557
    .end local v4    # "rmq2Mgr":Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    .end local v5    # "rmqMgr":Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;
    :cond_7
    :try_start_1
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_9

    .line 558
    const-string v7, "Smack/Packet"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 559
    const-string v7, "Received HeartbeatAck from server."

    invoke-direct {p0, v7}, Lorg/jivesoftware/smack/PacketReader;->log(Ljava/lang/String;)V

    .line 563
    :cond_8
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 564
    new-instance v3, Lorg/jivesoftware/smack/packet/HeartbeatAck;

    invoke-direct {v3}, Lorg/jivesoftware/smack/packet/HeartbeatAck;-><init>()V

    .end local v2    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    .restart local v3    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    move-object v2, v3

    .end local v3    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    .restart local v2    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    goto :goto_1

    .line 566
    :cond_9
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->LOGIN_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_a

    .line 567
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseLoginResponse(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/LoginResponse;

    move-result-object v2

    goto :goto_1

    .line 568
    :cond_a
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->BIND_ACCOUNT_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_b

    .line 570
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseBindAccountResponse(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    goto :goto_1

    .line 571
    :cond_b
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HTTP_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_c

    .line 572
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseHttpResponse(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/HttpResponse;

    move-result-object v2

    goto :goto_1

    .line 573
    :cond_c
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->MESSAGE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_d

    .line 574
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getDefaultAccountId()J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseMessage(Lcom/google/common/io/protocol/ProtoBuf;J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    goto :goto_1

    .line 576
    :cond_d
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->PRESENCE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_e

    .line 577
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getDefaultAccountId()J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePresence(Lcom/google/common/io/protocol/ProtoBuf;J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    goto/16 :goto_1

    .line 579
    :cond_e
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->BATCH_PRESENCE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_f

    .line 580
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getDefaultAccountId()J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseBatchPresence(Lcom/google/common/io/protocol/ProtoBuf;J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    goto/16 :goto_1

    .line 582
    :cond_f
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->IQ_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_10

    .line 583
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseIQ(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v2

    goto/16 :goto_1

    .line 584
    :cond_10
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->DATA_MESSAGE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_11

    .line 585
    invoke-static {p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseDataMessage(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/DataMessage;

    move-result-object v2

    goto/16 :goto_1

    .line 586
    :cond_11
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->CLOSE:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_13

    .line 587
    const-string v7, "Smack/Packet"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 588
    const-string v7, "Received Close from server."

    invoke-direct {p0, v7}, Lorg/jivesoftware/smack/PacketReader;->log(Ljava/lang/String;)V

    .line 590
    :cond_12
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "Smack/Packet"

    const-string v8, "handleProtoBuf: caught "

    invoke-static {v7, v8, v0}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 598
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 591
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    :try_start_2
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->STREAM_ERROR_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_4

    .line 592
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    .line 593
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseStreamError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v1

    .line 594
    .local v1, "error":Lorg/jivesoftware/smack/packet/StreamError;
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    invoke-direct {v7, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/StreamError;)V

    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 627
    .end local v1    # "error":Lorg/jivesoftware/smack/packet/StreamError;
    :cond_14
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_PING:Lcom/google/common/io/protocol/ProtoBufType;

    if-eq v6, v7, :cond_15

    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_0

    .line 629
    :cond_15
    const/4 v7, 0x1

    invoke-static {p2, p3, v7}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->updateHeartbeat(JZ)V

    goto/16 :goto_0
.end method

.method notifyConnectionError(Ljava/lang/Exception;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v4, 0x1

    .line 374
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->notifiedConnectionError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    :goto_0
    return-void

    .line 379
    :cond_0
    new-instance v2, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;

    const-string v3, "notifyConnectionError"

    invoke-direct {v2, v3}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;-><init>(Ljava/lang/String;)V

    .line 386
    .local v2, "wakeLockDiag":Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v4, "notifyConnectionError"

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/XMPPConnection;->acquireWakeLock(Ljava/lang/String;)V

    .line 389
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->wakeLockAcquired()V

    .line 391
    instance-of v3, p1, Ljava/io/IOException;

    if-eqz v3, :cond_1

    .line 395
    const-string v3, "Smack/Packet"

    const-string v4, "notify conn break (IOEx), close connection"

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    .line 402
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/XMPPConnection;->close(Z)V

    .line 403
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->releaseConnectionIDLock()V

    .line 406
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 416
    :try_start_1
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/ConnectionListener;

    .line 417
    .local v1, "listener":Lorg/jivesoftware/smack/ConnectionListener;
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getLocalConnectionId()I

    move-result v3

    invoke-interface {v1, v3, p1}, Lorg/jivesoftware/smack/ConnectionListener;->connectionClosedOnError(ILjava/lang/Exception;)V

    goto :goto_2

    .line 420
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/jivesoftware/smack/ConnectionListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 427
    :catchall_1
    move-exception v3

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 428
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v5, "notifyConnectionError"

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    .line 427
    throw v3

    .line 398
    :cond_1
    :try_start_3
    const-string v3, "Smack/Packet"

    const-string v4, "notify conn error. close connection!"

    invoke-static {v3, v4, p1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 420
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 423
    :try_start_5
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 424
    :try_start_6
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 425
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 427
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 428
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v4, "notifyConnectionError"

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :catchall_2
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public shutdown(Z)V
    .locals 4
    .param p1, "notifyConnectionClosed"    # Z

    .prologue
    .line 348
    iget-boolean v2, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 349
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    monitor-enter v3

    .line 350
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/ConnectionListener;

    .line 351
    .local v1, "listener":Lorg/jivesoftware/smack/ConnectionListener;
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getLocalConnectionId()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/jivesoftware/smack/ConnectionListener;->connectionClosed(I)V

    goto :goto_0

    .line 353
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/jivesoftware/smack/ConnectionListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    .line 359
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    monitor-enter v3

    .line 360
    :try_start_2
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 361
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 364
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->packetProcessor:Lorg/jivesoftware/smack/PacketProcessor;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketProcessor;->shutdown()V

    .line 365
    return-void

    .line 361
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public startup()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->readerThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 280
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 281
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->packetProcessor:Lorg/jivesoftware/smack/PacketProcessor;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/PacketProcessor;->start()V

    .line 287
    :try_start_0
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connectionIDLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :try_start_1
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 293
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v6

    int-to-long v4, v6

    .line 295
    .local v4, "waitTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 296
    .local v2, "start":J
    :goto_0
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v6, :cond_0

    .line 297
    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-gtz v6, :cond_1

    .line 308
    .end local v2    # "start":J
    .end local v4    # "waitTime":J
    :cond_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    :goto_1
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 314
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "Connection failed. No response from server."

    new-instance v8, Lorg/jivesoftware/smack/packet/XMPPError;

    const/16 v9, 0x1f6

    invoke-direct {v8, v9}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(I)V

    invoke-direct {v6, v7, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v6

    .line 301
    .restart local v2    # "start":J
    .restart local v4    # "waitTime":J
    :cond_1
    :try_start_2
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connectionIDLock:Ljava/lang/Object;

    const-wide/16 v8, 0x3

    mul-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 304
    .local v0, "now":J
    sub-long v8, v0, v2

    sub-long/2addr v4, v8

    .line 305
    move-wide v2, v0

    .line 306
    goto :goto_0

    .line 308
    .end local v0    # "now":J
    .end local v2    # "start":J
    .end local v4    # "waitTime":J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 310
    :catch_0
    move-exception v6

    goto :goto_1

    .line 318
    :cond_2
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    iput-object v7, v6, Lorg/jivesoftware/smack/XMPPConnection;->connectionID:Ljava/lang/String;

    .line 320
    return-void
.end method
