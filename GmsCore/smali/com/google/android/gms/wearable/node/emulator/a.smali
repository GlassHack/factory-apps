.class final Lcom/google/android/gms/wearable/node/emulator/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;

.field private final b:Z

.field private final c:Lcom/google/android/gms/wearable/node/a/c;

.field private volatile d:Ljava/net/ServerSocket;

.field private volatile e:Ljava/net/Socket;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;Z)V
    .locals 3

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/emulator/a;->a:Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;

    .line 89
    if-eqz p2, :cond_0

    const-string v0, "WearableNetServerThread"

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 90
    iput-boolean p2, p0, Lcom/google/android/gms/wearable/node/emulator/a;->b:Z

    .line 91
    new-instance v0, Lcom/google/android/gms/wearable/node/a/c;

    const/16 v1, 0x3e8

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wearable/node/a/c;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/emulator/a;->c:Lcom/google/android/gms/wearable/node/a/c;

    .line 92
    return-void

    .line 89
    :cond_0
    const-string v0, "WearableNetClientThread"

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;ZB)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/wearable/node/emulator/a;-><init>(Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;Z)V

    return-void
.end method

.method private static a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/android/gms/wearable/node/a/b;->a(ILjava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 223
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 226
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/android/gms/wearable/node/a/b;->a(ILjava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 227
    return-void
.end method

.method private a(Ljava/net/InetAddress;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 151
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/emulator/a;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    const/16 v1, 0x15e1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/emulator/a;->d:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/emulator/a;->c:Lcom/google/android/gms/wearable/node/a/c;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/android/gms/wearable/node/a/c;->a:J

    .line 165
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    const-string v1, "WearableNetworkSvc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while listening for connection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/emulator/a;->b()V

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/emulator/a;->c:Lcom/google/android/gms/wearable/node/a/c;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/a/c;->a()I

    move-result v0

    .line 160
    const-string v1, "Waiting %.1f seconds to retry listen"

    new-array v2, v6, [Ljava/lang/Object;

    int-to-float v3, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/android/gms/wearable/node/emulator/a;->a(ILjava/lang/String;)V

    .line 162
    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/emulator/a;->d:Ljava/net/ServerSocket;

    .line 201
    if-eqz v0, :cond_0

    .line 203
    :try_start_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    const-string v1, "WearableNetworkSvc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while closing server socket: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/emulator/a;->e:Ljava/net/Socket;

    .line 212
    if-eqz v0, :cond_0

    .line 214
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    const-string v1, "WearableNetworkSvc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while closing socket: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/emulator/a;->interrupt()V

    .line 97
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/emulator/a;->b()V

    .line 98
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/emulator/a;->c()V

    .line 99
    return-void
.end method

.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 106
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "goldfish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/node/emulator/a;->b:Z

    if-eqz v0, :cond_1

    .line 108
    const-string v0, "10.0.2.15"

    .line 118
    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 125
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/emulator/a;->a:Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/wearable/node/a/b;->a(Landroid/app/Service;)V

    .line 127
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/node/emulator/a;->b:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0, v1}, Lcom/google/android/gms/wearable/node/emulator/a;->a(Ljava/net/InetAddress;)V

    .line 130
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/emulator/a;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 131
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/node/emulator/a;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "server"
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    iget-boolean v2, p0, Lcom/google/android/gms/wearable/node/emulator/a;->b:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Listening via TCP on "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":5601"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/google/android/gms/wearable/node/a/b;->a(ILjava/lang/CharSequence;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/emulator/a;->d:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/wearable/node/emulator/a;->e:Ljava/net/Socket;

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/emulator/a;->c:Lcom/google/android/gms/wearable/node/a/c;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/google/android/gms/wearable/node/a/c;->a:J

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connected, running sync loop as "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/wearable/node/emulator/a;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->a()Lcom/google/android/gms/wearable/node/ay;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/emulator/a;->e:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/wearable/node/emulator/a;->e:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/wearable/node/ay;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/google/android/gms/wearable/ConnectionConfiguration;)V
    :try_end_2
    .catch Lcom/google/android/gms/wearable/node/bh; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/emulator/a;->c()V

    :goto_4
    const/4 v0, 0x1

    const-string v2, "Socket closed"

    invoke-static {v0, v2}, Lcom/google/android/gms/wearable/node/emulator/a;->a(ILjava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/emulator/a;->c:Lcom/google/android/gms/wearable/node/a/c;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/a/c;->a()I

    move-result v0

    .line 133
    const/4 v2, 0x1

    const-string v3, "Waiting %.1f seconds to retry connection"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    int-to-float v6, v0

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/wearable/node/emulator/a;->a(ILjava/lang/String;)V

    .line 135
    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 138
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_4
    const-string v1, "Connection interrupted, shutting down"

    invoke-static {v0, v1}, Lcom/google/android/gms/wearable/node/emulator/a;->a(ILjava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/emulator/a;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 143
    const-string v0, "Android Wear NetworkThread finished"

    invoke-static {v8, v0}, Lcom/google/android/gms/wearable/node/emulator/a;->a(ILjava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/emulator/a;->b()V

    .line 145
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/emulator/a;->a:Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/node/a/b;->b(Landroid/app/Service;)V

    .line 147
    :goto_5
    return-void

    .line 110
    :cond_1
    const-string v0, "10.0.2.2"

    goto/16 :goto_0

    .line 113
    :cond_2
    const-string v0, "127.0.0.1"

    goto/16 :goto_0

    .line 120
    :catch_1
    move-exception v1

    const-string v1, "WearableNetworkSvc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 131
    :cond_3
    :try_start_5
    const-string v0, "client"
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :cond_4
    :try_start_6
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connecting via TCP to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":5601"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/google/android/gms/wearable/node/a/b;->a(ILjava/lang/CharSequence;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/net/Socket;

    const/16 v3, 0x15e1

    invoke-direct {v2, v1, v3}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v2, p0, Lcom/google/android/gms/wearable/node/emulator/a;->e:Ljava/net/Socket;
    :try_end_6
    .catch Lcom/google/android/gms/wearable/node/bh; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    :catch_2
    move-exception v0

    const/4 v0, 0x4

    :try_start_7
    const-string v2, "Error: wire protocol version mismatch"

    invoke-static {v0, v2}, Lcom/google/android/gms/wearable/node/emulator/a;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/node/emulator/a;->c:Lcom/google/android/gms/wearable/node/a/c;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/a/c;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/emulator/a;->c()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4

    .line 140
    :catch_3
    move-exception v0

    .line 141
    :try_start_9
    const-string v1, "Unexpected exception, shutting down"

    invoke-static {v1, v0}, Lcom/google/android/gms/wearable/node/emulator/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 143
    const-string v0, "Android Wear NetworkThread finished"

    invoke-static {v8, v0}, Lcom/google/android/gms/wearable/node/emulator/a;->a(ILjava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/emulator/a;->b()V

    .line 145
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/emulator/a;->a:Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/node/a/b;->b(Landroid/app/Service;)V

    goto :goto_5

    .line 131
    :catch_4
    move-exception v0

    const/4 v0, 0x1

    :try_start_a
    const-string v2, "Connection interrupted, shutting down"

    invoke-static {v0, v2}, Lcom/google/android/gms/wearable/node/emulator/a;->a(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/emulator/a;->interrupt()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/emulator/a;->c()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_4

    .line 143
    :catchall_0
    move-exception v0

    const-string v1, "Android Wear NetworkThread finished"

    invoke-static {v8, v1}, Lcom/google/android/gms/wearable/node/emulator/a;->a(ILjava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/emulator/a;->b()V

    .line 145
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/emulator/a;->a:Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/node/a/b;->b(Landroid/app/Service;)V

    throw v0

    .line 131
    :catch_5
    move-exception v0

    :try_start_c
    const-string v2, "Error writing to device"

    invoke-static {v2, v0}, Lcom/google/android/gms/wearable/node/emulator/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/emulator/a;->c()V

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/emulator/a;->c()V

    throw v0
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 143
    :cond_5
    const-string v0, "Android Wear NetworkThread finished"

    invoke-static {v8, v0}, Lcom/google/android/gms/wearable/node/emulator/a;->a(ILjava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/emulator/a;->b()V

    .line 145
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/emulator/a;->a:Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/node/a/b;->b(Landroid/app/Service;)V

    goto/16 :goto_5
.end method
