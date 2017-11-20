.class public final Lcom/google/android/gms/auth/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/google/android/gms/auth/u;


# instance fields
.field final a:Ljava/util/Map;

.field final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/Map;


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/auth/u;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 138
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/u;->a:Ljava/util/Map;

    .line 139
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/u;->d:Ljava/util/Map;

    .line 140
    return-void
.end method

.method public static a()Lcom/google/android/gms/auth/u;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 66
    sget-object v0, Lcom/google/android/gms/auth/u;->c:Lcom/google/android/gms/auth/u;

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v2

    :try_start_0
    const-string v0, "notification_data.dat"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "NotificationStore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file does not exist: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    :try_start_1
    new-instance v0, Lcom/google/android/gms/auth/u;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/google/android/gms/auth/u;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/auth/u;->c:Lcom/google/android/gms/auth/u;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    :cond_0
    :goto_1
    sget-object v0, Lcom/google/android/gms/auth/u;->c:Lcom/google/android/gms/auth/u;

    return-object v0

    .line 67
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    const-string v0, "notification_data.dat"

    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    const-string v4, "NotificationStore"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "NotificationStore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Size of parcel: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v3, "NotificationStore"

    const-string v4, "Error while reading file "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "notification_data.dat"

    invoke-virtual {v2, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    new-instance v0, Lcom/google/android/gms/auth/u;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/google/android/gms/auth/u;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/auth/u;->c:Lcom/google/android/gms/auth/u;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "NotificationStore"

    const-string v4, "[ NotificationStore ]"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "notification_data.dat"

    invoke-virtual {v2, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    new-instance v0, Lcom/google/android/gms/auth/u;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/u;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/auth/u;->c:Lcom/google/android/gms/auth/u;

    goto :goto_1

    :cond_3
    :try_start_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "write_timestamp"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v0, v6, v4

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_5

    const-string v0, "NotificationStore"

    const-string v3, "System rebooted after Notification storage file was last written"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NotificationStore"

    const-string v3, "Deleting the file"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "notification_data.dat"

    invoke-virtual {v2, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    new-instance v0, Lcom/google/android/gms/auth/u;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/google/android/gms/auth/u;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/auth/u;->c:Lcom/google/android/gms/auth/u;

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    const-string v0, "notification_data_array"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/auth/u;

    const-string v5, "notification_counter"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v4, v3}, Lcom/google/android/gms/auth/u;-><init>(I)V

    if-nez v0, :cond_6

    sput-object v4, Lcom/google/android/gms/auth/u;->c:Lcom/google/android/gms/auth/u;

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-static {v0, v4}, Lcom/google/android/gms/auth/v;->a(Landroid/os/Bundle;Lcom/google/android/gms/auth/u;)Lcom/google/android/gms/auth/v;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/auth/u;->a(Lcom/google/android/gms/auth/v;)V
    :try_end_5
    .catch Lcom/google/android/gms/auth/x; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_6
    const-string v5, "NotificationStore"

    const-string v6, "Failed to parse a NotificationData"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_7
    sput-object v4, Lcom/google/android/gms/auth/u;->c:Lcom/google/android/gms/auth/u;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1
.end method

.method private declared-synchronized b(Lcom/google/android/gms/auth/v;)V
    .locals 5

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/u;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/auth/v;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/google/android/gms/auth/u;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 188
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/v;

    iget-object v1, v1, Lcom/google/android/gms/auth/v;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/auth/v;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    move-object v2, v0

    .line 192
    goto :goto_0

    .line 193
    :cond_0
    if-eqz v2, :cond_1

    .line 194
    iget-object v0, p0, Lcom/google/android/gms/auth/u;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/app/GmsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget v1, p1, Lcom/google/android/gms/auth/v;->b:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 197
    invoke-virtual {p0}, Lcom/google/android/gms/auth/u;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/auth/v;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/gms/auth/u;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/v;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/v;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/gms/auth/u;->d:Ljava/util/Map;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/auth/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/v;

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/auth/v;)V
    .locals 3

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/u;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/auth/v;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p1, Lcom/google/android/gms/auth/v;->d:Lcom/google/android/gms/auth/y;

    sget-object v1, Lcom/google/android/gms/auth/y;->b:Lcom/google/android/gms/auth/y;

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p1, Lcom/google/android/gms/auth/v;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 160
    const-string v1, "service"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string v2, "package_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v2, p1, Lcom/google/android/gms/auth/v;->c:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/auth/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/auth/u;->d:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 164
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/auth/v;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/u;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/v;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/u;->b(Lcom/google/android/gms/auth/v;)V

    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/auth/v;->a()V

    .line 176
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/auth/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/v;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_1

    .line 178
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/u;->b(Lcom/google/android/gms/auth/v;)V

    .line 179
    invoke-virtual {v0}, Lcom/google/android/gms/auth/v;->a()V

    .line 181
    :cond_1
    return-void
.end method

.method public final declared-synchronized b()Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 212
    monitor-enter p0

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 214
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 215
    const-string v0, "write_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 216
    iget-object v0, p0, Lcom/google/android/gms/auth/u;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 217
    const-string v0, "notification_counter"

    iget-object v4, p0, Lcom/google/android/gms/auth/u;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/u;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/v;

    .line 220
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "notification_data_key"

    iget-object v7, v0, Lcom/google/android/gms/auth/v;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "authAccount"

    iget-object v7, v0, Lcom/google/android/gms/auth/v;->c:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "notification_id_key"

    iget v7, v0, Lcom/google/android/gms/auth/v;->b:I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "type_key"

    iget-object v7, v0, Lcom/google/android/gms/auth/v;->d:Lcom/google/android/gms/auth/y;

    invoke-virtual {v7}, Lcom/google/android/gms/auth/y;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "requests_key"

    iget-object v0, v0, Lcom/google/android/gms/auth/v;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 221
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 223
    :cond_1
    :try_start_1
    const-string v0, "notification_data_array"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    const/4 v0, 0x0

    .line 226
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v3

    const-string v4, "notification_data.dat"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/common/app/GmsApplication;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 229
    :try_start_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 230
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 231
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 232
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    .line 233
    array-length v4, v3

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 234
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 235
    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 236
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 243
    if-eqz v0, :cond_2

    .line 245
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 252
    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    monitor-exit p0

    return v0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    :try_start_5
    const-string v2, "NotificationStore"

    const-string v3, "Error while closing file "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v1

    .line 248
    goto :goto_2

    .line 243
    :catch_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 245
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 246
    :catch_2
    move-exception v0

    .line 247
    :try_start_7
    const-string v2, "NotificationStore"

    const-string v3, "Error while closing file "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v0, v1

    .line 248
    goto :goto_2

    .line 239
    :catch_3
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    .line 240
    :goto_3
    :try_start_8
    const-string v3, "NotificationStore"

    const-string v4, "Error while writing to file "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 241
    if-eqz v2, :cond_3

    .line 245
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_3
    move v0, v1

    .line 248
    goto :goto_2

    .line 246
    :catch_4
    move-exception v0

    .line 247
    :try_start_a
    const-string v2, "NotificationStore"

    const-string v3, "Error while closing file "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move v0, v1

    .line 248
    goto :goto_2

    .line 243
    :catchall_1
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    :goto_4
    if-eqz v2, :cond_4

    .line 245
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 248
    :cond_4
    :try_start_c
    throw v0

    .line 246
    :catch_5
    move-exception v0

    .line 247
    const-string v2, "NotificationStore"

    const-string v3, "Error while closing file "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move v0, v1

    .line 248
    goto :goto_2

    .line 243
    :catchall_2
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    .line 239
    :catch_6
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_3
.end method
