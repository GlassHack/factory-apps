.class public final Lcom/google/android/gms/auth/be/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/ref/WeakReference;


# instance fields
.field private final b:Lcom/google/android/gms/auth/be/a/c;

.field private final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/auth/be/a/b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    invoke-static {p1}, Lcom/google/android/gms/auth/be/a/c;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/a/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/be/a/b;-><init>(Lcom/google/android/gms/auth/be/a/c;)V

    .line 66
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/be/a/c;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/android/gms/auth/be/a/b;->b:Lcom/google/android/gms/auth/be/a/c;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/a/b;->c:Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/a/b;
    .locals 3

    .prologue
    .line 52
    const-class v1, Lcom/google/android/gms/auth/be/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/be/a/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/a/b;

    .line 53
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/google/android/gms/auth/be/a/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/be/a/b;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/google/android/gms/auth/be/a/b;->a:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 182
    const-string v0, "GLSUser"

    const-string v1, "[FactoryReset,AccountChallengeStore] Clearing the data block..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 185
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 186
    iget-object v1, p0, Lcom/google/android/gms/auth/be/a/b;->b:Lcom/google/android/gms/auth/be/a/c;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/be/a/c;->a([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    const-string v1, "GLSUser"

    const-string v2, "[FactoryReset,AccountChallengeStore] Failed to clear the data block."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/auth/be/a/b;->b:Lcom/google/android/gms/auth/be/a/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/a/c;->a()Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/Set;)Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 130
    iget-object v3, p0, Lcom/google/android/gms/auth/be/a/b;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 131
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 132
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :try_start_1
    const-string v0, "GLSUser"

    const-string v6, "[FactoryReset,AccountChallengeStore] Writing challenges..."

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 137
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 138
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/a/a;

    .line 139
    iget-object v7, v0, Lcom/google/android/gms/auth/be/a/a;->a:Ljava/util/UUID;

    invoke-virtual {v7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v7, v0, Lcom/google/android/gms/auth/be/a/a;->a:Ljava/util/UUID;

    invoke-virtual {v7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v7, v0, Lcom/google/android/gms/auth/be/a/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/auth/be/a/a;->c:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    :try_start_2
    const-string v1, "GLSUser"

    const-string v4, "[FactoryReset,AccountChallengeStore] Error when writing the challenge."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/a/b;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    :goto_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v2

    :goto_2
    return v0

    .line 141
    :cond_0
    :try_start_5
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 142
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 143
    iget-object v4, p0, Lcom/google/android/gms/auth/be/a/b;->b:Lcom/google/android/gms/auth/be/a/c;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/auth/be/a/c;->a([B)V

    .line 144
    const-string v0, "GLSUser"

    const-string v4, "[FactoryReset,AccountChallengeStore] Successfully written %d challenge(s)."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 146
    :try_start_6
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 158
    :goto_3
    :try_start_7
    monitor-exit v3

    move v0, v1

    goto :goto_2

    .line 156
    :catch_1
    move-exception v0

    .line 157
    const-string v2, "GLSUser"

    const-string v4, "[FactoryReset,AccountChallengeStore] Failed close the output stream."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 156
    :catch_2
    move-exception v0

    .line 157
    :try_start_8
    const-string v1, "GLSUser"

    const-string v4, "[FactoryReset,AccountChallengeStore] Failed close the output stream."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 154
    :catchall_1
    move-exception v0

    .line 155
    :try_start_9
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 158
    :goto_4
    :try_start_a
    throw v0

    .line 156
    :catch_3
    move-exception v1

    .line 157
    const-string v2, "GLSUser"

    const-string v4, "[FactoryReset,AccountChallengeStore] Failed close the output stream."

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4
.end method

.method public final b()Ljava/util/Set;
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 79
    iget-object v2, p0, Lcom/google/android/gms/auth/be/a/b;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/a/b;->b:Lcom/google/android/gms/auth/be/a/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/a/c;->b()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    :try_start_1
    array-length v3, v0

    if-nez v3, :cond_1

    .line 90
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    monitor-exit v2

    .line 124
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v1, "GLSUser"

    const-string v3, "[FactoryReset,AccountChallengeStore] Failed to read data from DataBlockManager."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    monitor-exit v2

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 93
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 95
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :try_start_3
    const-string v0, "GLSUser"

    const-string v3, "[FactoryReset,AccountChallengeStore] Reading challenges..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 101
    if-eq v0, v5, :cond_2

    .line 102
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported account challenge data version."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    :catch_1
    move-exception v0

    .line 114
    :try_start_4
    const-string v1, "GLSUser"

    const-string v3, "[FactoryReset,AccountChallengeStore] Error when reading the challenge."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/a/b;->c()V

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 121
    :try_start_5
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 124
    :goto_1
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 105
    :cond_2
    :try_start_7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 106
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 107
    :goto_2
    if-ge v1, v3, :cond_3

    .line 108
    new-instance v5, Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/auth/be/a/a;

    invoke-direct {v8, v5, v6, v7}, Lcom/google/android/gms/auth/be/a/a;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 110
    :cond_3
    const-string v1, "GLSUser"

    const-string v3, "[FactoryReset,AccountChallengeStore] Successfully read %d challenge(s)."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 121
    :try_start_8
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 124
    :goto_3
    :try_start_9
    monitor-exit v2

    goto/16 :goto_0

    .line 122
    :catch_2
    move-exception v1

    .line 123
    const-string v3, "GLSUser"

    const-string v4, "[FactoryReset,AccountChallengeStore] Failed close the input stream."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 122
    :catch_3
    move-exception v1

    .line 123
    const-string v3, "GLSUser"

    const-string v4, "[FactoryReset,AccountChallengeStore] Failed close the input stream."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 120
    :catchall_1
    move-exception v0

    .line 121
    :try_start_a
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 124
    :goto_4
    :try_start_b
    throw v0

    .line 122
    :catch_4
    move-exception v1

    .line 123
    const-string v3, "GLSUser"

    const-string v4, "[FactoryReset,AccountChallengeStore] Failed close the input stream."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4
.end method
