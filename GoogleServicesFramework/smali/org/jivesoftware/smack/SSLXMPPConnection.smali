.class public Lorg/jivesoftware/smack/SSLXMPPConnection;
.super Lorg/jivesoftware/smack/XMPPConnection;
.source "SSLXMPPConnection.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZLjava/lang/String;Ljavax/net/SocketFactory;)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sslHandshakeTimeout"    # I
    .param p4, "useProtoBuf"    # Z
    .param p5, "serviceName"    # Ljava/lang/String;
    .param p6, "factory"    # Ljavax/net/SocketFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p5

    move v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/XMPPConnection;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjavax/net/SocketFactory;)V

    .line 129
    return-void
.end method
