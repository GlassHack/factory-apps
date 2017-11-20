.class public interface abstract Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager$Delegator;
.super Ljava/lang/Object;
.source "ClockworkProxyTcpSocketIoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/clockwork/proxy/ClockworkProxyTcpSocketIoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegator"
.end annotation


# virtual methods
.method public abstract doAccept(Ljava/nio/channels/SocketChannel;)V
.end method

.method public abstract doClose(Ljava/nio/channels/SocketChannel;)V
.end method

.method public abstract doRead(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract doWrite(Ljava/nio/channels/SocketChannel;)I
.end method
