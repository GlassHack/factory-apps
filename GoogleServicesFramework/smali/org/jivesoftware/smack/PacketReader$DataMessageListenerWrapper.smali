.class Lorg/jivesoftware/smack/PacketReader$DataMessageListenerWrapper;
.super Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
.source "PacketReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/PacketReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataMessageListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/PacketReader;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/PacketReader;Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/PacketCollector;)V
    .locals 0
    .param p2, "packetListener"    # Lorg/jivesoftware/smack/PacketListener;
    .param p3, "packetCollector"    # Lorg/jivesoftware/smack/PacketCollector;

    .prologue
    .line 2009
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketReader$DataMessageListenerWrapper;->this$0:Lorg/jivesoftware/smack/PacketReader;

    .line 2010
    invoke-direct {p0, p1, p2, p3}, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;-><init>(Lorg/jivesoftware/smack/PacketReader;Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/PacketCollector;)V

    .line 2011
    return-void
.end method


# virtual methods
.method protected processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 2015
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader$DataMessageListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/PacketListener;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 2016
    return-void
.end method
