.class public Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/be/proximity/authorization/b;
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/auth/be/proximity/authorization/a;

.field private final d:Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;

.field private final e:Lcom/google/android/gms/auth/testability/android/bluetooth/g;

.field private final f:Ljava/lang/Object;

.field private g:Lcom/google/android/gms/auth/be/proximity/authorization/c;

.field private h:Lcom/google/android/gms/auth/be/proximity/authorization/f;

.field private i:Lcom/google/android/gms/auth/be/proximity/authorization/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/authorization/a;Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;Lcom/google/android/gms/auth/testability/android/bluetooth/g;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->b:Landroid/content/Context;

    .line 62
    invoke-static {p2}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/a;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->c:Lcom/google/android/gms/auth/be/proximity/authorization/a;

    .line 63
    invoke-static {p3}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->d:Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;

    .line 64
    invoke-static {p4}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/testability/android/bluetooth/g;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->e:Lcom/google/android/gms/auth/testability/android/bluetooth/g;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->f:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 177
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a:Ljava/lang/String;

    const-string v1, "Terminating connection to device %s."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->d:Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->h:Lcom/google/android/gms/auth/be/proximity/authorization/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 182
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->h:Lcom/google/android/gms/auth/be/proximity/authorization/f;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/f;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->i:Lcom/google/android/gms/auth/be/proximity/authorization/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 191
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->i:Lcom/google/android/gms/auth/be/proximity/authorization/h;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/h;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    :cond_1
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->e:Lcom/google/android/gms/auth/testability/android/bluetooth/g;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    :goto_2
    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->g:Lcom/google/android/gms/auth/be/proximity/authorization/c;

    .line 205
    monitor-exit v1

    return-void

    .line 184
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a:Ljava/lang/String;

    const-string v2, "Failed to close the reader to device %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->d:Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 193
    :catch_1
    move-exception v0

    :try_start_6
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a:Ljava/lang/String;

    const-string v2, "Failed to close the writer to device %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->d:Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 200
    :catch_2
    move-exception v0

    .line 201
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a:Ljava/lang/String;

    const-string v3, "Failed to close the socket."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    .line 116
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->g:Lcom/google/android/gms/auth/be/proximity/authorization/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 119
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->g:Lcom/google/android/gms/auth/be/proximity/authorization/c;

    invoke-interface {v0, p1}, Lcom/google/android/gms/auth/be/proximity/authorization/c;->a(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/auth/firstparty/proximity/g; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a:Ljava/lang/String;

    const-string v3, "Error when handling the status update."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 123
    :catch_1
    move-exception v0

    .line 124
    :try_start_3
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a:Ljava/lang/String;

    const-string v3, "Error when handling the status update."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4

    .prologue
    .line 133
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->g:Lcom/google/android/gms/auth/be/proximity/authorization/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 136
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->g:Lcom/google/android/gms/auth/be/proximity/authorization/c;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/auth/be/proximity/authorization/c;->a(Ljava/lang/String;Ljava/util/Set;)V
    :try_end_1
    .catch Lcom/google/android/gms/auth/firstparty/proximity/g; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a:Ljava/lang/String;

    const-string v3, "Error when handling the permit update."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->f:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 72
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->e:Lcom/google/android/gms/auth/testability/android/bluetooth/g;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/g;->a(Ljava/io/InputStream;)Lcom/google/android/gms/auth/be/proximity/authorization/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->h:Lcom/google/android/gms/auth/be/proximity/authorization/f;

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->e:Lcom/google/android/gms/auth/testability/android/bluetooth/g;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->c()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/i;->a(Ljava/io/OutputStream;)Lcom/google/android/gms/auth/be/proximity/authorization/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->i:Lcom/google/android/gms/auth/be/proximity/authorization/h;

    .line 74
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->c:Lcom/google/android/gms/auth/be/proximity/authorization/a;

    iget-object v3, v0, Lcom/google/android/gms/auth/be/proximity/authorization/a;->a:Ljava/util/Set;

    monitor-enter v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v0, v0, Lcom/google/android/gms/auth/be/proximity/authorization/a;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    :try_start_4
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a:Ljava/lang/String;

    const-string v3, "Reading messages from %s..."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->d:Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->h:Lcom/google/android/gms/auth/be/proximity/authorization/f;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/f;->a()Lcom/google/android/gms/auth/be/proximity/authorization/d;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/android/gms/auth/firstparty/proximity/g; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result-object v3

    .line 80
    if-nez v3, :cond_0

    .line 104
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->c:Lcom/google/android/gms/auth/be/proximity/authorization/a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/be/proximity/authorization/a;->a(Lcom/google/android/gms/auth/be/proximity/authorization/b;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 110
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a()V

    .line 111
    :goto_0
    return-void

    .line 74
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v3

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 106
    :catch_0
    move-exception v0

    .line 107
    :try_start_7
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a:Ljava/lang/String;

    const-string v2, "Failed to create reader/writer to connection."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->d:Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 110
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a()V

    goto :goto_0

    .line 76
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v3

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 110
    :catchall_2
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a()V

    throw v0

    .line 85
    :cond_0
    :try_start_9
    iget-object v4, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->f:Ljava/lang/Object;

    monitor-enter v4
    :try_end_9
    .catch Lcom/google/android/gms/auth/firstparty/proximity/g; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 86
    :try_start_a
    iget-byte v5, v3, Lcom/google/android/gms/auth/be/proximity/a/a;->d:B

    sget-object v0, Lcom/google/android/gms/auth/b/a;->z:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, ","

    invoke-static {v0, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v0, v2

    :goto_1
    if-ge v0, v7, :cond_2

    aget-object v8, v6, v0

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    if-ne v5, v8, :cond_1

    move v0, v1

    :goto_2
    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v1, "The current version (%d) of protocol is not supported."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 87
    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit v4

    throw v0
    :try_end_b
    .catch Lcom/google/android/gms/auth/firstparty/proximity/g; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 91
    :catch_1
    move-exception v0

    .line 89
    :try_start_c
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a:Ljava/lang/String;

    const-string v2, "Error in creating handler."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lcom/google/android/gms/auth/firstparty/proximity/g; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 104
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->c:Lcom/google/android/gms/auth/be/proximity/authorization/a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/be/proximity/authorization/a;->a(Lcom/google/android/gms/auth/be/proximity/authorization/b;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 110
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a()V

    goto :goto_0

    .line 86
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    packed-switch v5, :pswitch_data_0

    :try_start_e
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v1, "Unexpected message version: %d."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->i:Lcom/google/android/gms/auth/be/proximity/authorization/h;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/b;->a(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/authorization/h;)Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->g:Lcom/google/android/gms/auth/be/proximity/authorization/c;

    .line 87
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 93
    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->g:Lcom/google/android/gms/auth/be/proximity/authorization/c;

    invoke-interface {v0, v3}, Lcom/google/android/gms/auth/be/proximity/authorization/c;->a(Lcom/google/android/gms/auth/be/proximity/authorization/d;)V

    .line 94
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->h:Lcom/google/android/gms/auth/be/proximity/authorization/f;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/f;->a()Lcom/google/android/gms/auth/be/proximity/authorization/d;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->g:Lcom/google/android/gms/auth/be/proximity/authorization/c;

    invoke-interface {v1, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/c;->a(Lcom/google/android/gms/auth/be/proximity/authorization/d;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lcom/google/android/gms/auth/firstparty/proximity/g; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_4

    .line 97
    :catch_2
    move-exception v0

    .line 98
    :try_start_10
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a:Ljava/lang/String;

    const-string v2, "Error when handling incoming messages from: %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->d:Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 104
    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->c:Lcom/google/android/gms/auth/be/proximity/authorization/a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/be/proximity/authorization/a;->a(Lcom/google/android/gms/auth/be/proximity/authorization/b;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 110
    :goto_5
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a()V

    goto/16 :goto_0

    .line 86
    :pswitch_1
    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->i:Lcom/google/android/gms/auth/be/proximity/authorization/h;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/b;->a(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/authorization/h;)Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;

    move-result-object v0

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->i:Lcom/google/android/gms/auth/be/proximity/authorization/h;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/d;->a(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/authorization/h;)Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-result-object v0

    goto :goto_3

    .line 104
    :cond_4
    :try_start_13
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->c:Lcom/google/android/gms/auth/be/proximity/authorization/a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/be/proximity/authorization/a;->a(Lcom/google/android/gms/auth/be/proximity/authorization/b;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto :goto_5

    .line 100
    :catch_3
    move-exception v0

    .line 101
    :try_start_14
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->a:Ljava/lang/String;

    const-string v2, "Error when handling incoming messages from: %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->d:Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 104
    :try_start_15
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->c:Lcom/google/android/gms/auth/be/proximity/authorization/a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/be/proximity/authorization/a;->a(Lcom/google/android/gms/auth/be/proximity/authorization/b;)V

    goto :goto_5

    :catchall_4
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;->c:Lcom/google/android/gms/auth/be/proximity/authorization/a;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/auth/be/proximity/authorization/a;->a(Lcom/google/android/gms/auth/be/proximity/authorization/b;)V

    throw v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
