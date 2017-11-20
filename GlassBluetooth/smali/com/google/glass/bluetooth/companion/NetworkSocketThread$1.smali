.class Lcom/google/glass/bluetooth/companion/NetworkSocketThread$1;
.super Ljavax/jmdns/impl/JmDNSImpl;
.source "NetworkSocketThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->create(Ljava/net/InetAddress;)Ljavax/jmdns/JmDNS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/NetworkSocketThread;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/companion/NetworkSocketThread;
    .param p2, "x0"    # Ljava/net/InetAddress;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$1;->this$0:Lcom/google/glass/bluetooth/companion/NetworkSocketThread;

    invoke-direct {p0, p2, p3}, Ljavax/jmdns/impl/JmDNSImpl;-><init>(Ljava/net/InetAddress;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public updateRecord(JLjavax/jmdns/impl/DNSRecord;Ljavax/jmdns/impl/JmDNSImpl$Operation;)V
    .locals 4
    .param p1, "l"    # J
    .param p3, "dnsRecord"    # Ljavax/jmdns/impl/DNSRecord;
    .param p4, "operation"    # Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .prologue
    .line 174
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Ljavax/jmdns/impl/JmDNSImpl;->updateRecord(JLjavax/jmdns/impl/DNSRecord;Ljavax/jmdns/impl/JmDNSImpl$Operation;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    invoke-static {}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "JmDNS#updateRecord failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
