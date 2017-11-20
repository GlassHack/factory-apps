.class Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;
.super Ljava/lang/Object;
.source "PacketWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/PacketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InterceptorWrapper"
.end annotation


# instance fields
.field private packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 690
    if-nez p1, :cond_1

    .line 700
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 693
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;

    if-eqz v1, :cond_2

    .line 694
    check-cast p1, Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v0, p1, Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;->packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;

    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;->packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 697
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v1, p1, Lorg/jivesoftware/smack/PacketInterceptor;

    if-eqz v1, :cond_0

    .line 698
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;->packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyListener(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 704
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;->packetInterceptor:Lorg/jivesoftware/smack/PacketInterceptor;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/PacketInterceptor;->interceptPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 707
    :cond_1
    return-void
.end method
