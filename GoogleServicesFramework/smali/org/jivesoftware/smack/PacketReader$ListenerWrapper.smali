.class Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
.super Ljava/lang/Object;
.source "PacketReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/PacketReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerWrapper"
.end annotation


# instance fields
.field protected packetCollector:Lorg/jivesoftware/smack/PacketCollector;

.field protected packetListener:Lorg/jivesoftware/smack/PacketListener;

.field final synthetic this$0:Lorg/jivesoftware/smack/PacketReader;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/PacketReader;Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/PacketCollector;)V
    .locals 0
    .param p2, "packetListener"    # Lorg/jivesoftware/smack/PacketListener;
    .param p3, "packetCollector"    # Lorg/jivesoftware/smack/PacketCollector;

    .prologue
    .line 1963
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->this$0:Lorg/jivesoftware/smack/PacketReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1964
    iput-object p2, p0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    .line 1965
    iput-object p3, p0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetCollector:Lorg/jivesoftware/smack/PacketCollector;

    .line 1966
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 1970
    if-nez p1, :cond_1

    .line 1979
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 1973
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;

    if-eqz v1, :cond_2

    .line 1974
    check-cast p1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v0, p1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1976
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v1, p1, Lorg/jivesoftware/smack/PacketListener;

    if-eqz v1, :cond_0

    .line 1977
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyListener()Z
    .locals 2

    .prologue
    .line 1990
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetCollector:Lorg/jivesoftware/smack/PacketCollector;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->pollResult()Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 1991
    .local v0, "packet":Lorg/jivesoftware/smack/packet/Packet;
    if-eqz v0, :cond_0

    .line 1992
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1993
    const/4 v1, 0x1

    .line 1996
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 1986
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->this$0:Lorg/jivesoftware/smack/PacketReader;

    iget-object v0, v0, Lorg/jivesoftware/smack/PacketReader;->packetProcessor:Lorg/jivesoftware/smack/PacketProcessor;

    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smack/PacketProcessor;->queuePacket(Lorg/jivesoftware/smack/packet/Packet;Lorg/jivesoftware/smack/PacketListener;)V

    .line 1987
    return-void
.end method
