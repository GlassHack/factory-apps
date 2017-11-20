.class public final Lcom/google/googlenav/common/io/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final b:Lcom/google/googlenav/common/io/PersistentStore;

.field private c:Ljava/util/Hashtable;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "FLASH"

    .line 37
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/io/m;->a:Lcom/google/glass/logging/FormattingLogger;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/PersistentStore;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/common/io/m;->c:Ljava/util/Hashtable;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/common/io/m;->d:Z

    .line 58
    iput-object p1, p0, Lcom/google/googlenav/common/io/m;->b:Lcom/google/googlenav/common/io/PersistentStore;

    .line 59
    return-void
.end method

.method private static a([B)Ljava/util/Hashtable;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 132
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 134
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    const-string v4, "Preferences {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :try_start_0
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v4

    .line 144
    const-string v5, "numPrefs: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    :goto_0
    if-ge v0, v4, :cond_0

    .line 148
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-interface {v1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v6

    .line 154
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-array v6, v6, [B

    .line 157
    invoke-interface {v1, v6}, Ljava/io/DataInput;->readFully([B)V

    .line 158
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v2, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v6, Lcom/google/googlenav/common/io/m;->a:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Read preference %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    const-string v0, "FLASH"

    invoke-static {v0, v3}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    :cond_0
    return-object v2
.end method

.method private static a(Ljava/util/Hashtable;)[B
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 106
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 107
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 108
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-interface {v3, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 109
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 110
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    sget-object v1, Lcom/google/googlenav/common/io/m;->a:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Saving preference %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-interface {v1, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .line 114
    if-nez v1, :cond_0

    new-array v1, v7, [B

    .line 115
    :cond_0
    invoke-interface {v3, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 116
    array-length v0, v1

    invoke-interface {v3, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 117
    invoke-interface {v3, v1}, Ljava/io/DataOutput;->write([B)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 3

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/common/io/m;->c:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/google/googlenav/common/io/m;->b:Lcom/google/googlenav/common/io/PersistentStore;

    const-string v1, "Preferences"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/PersistentStore;->c(Ljava/lang/String;)[B

    move-result-object v0

    .line 200
    if-eqz v0, :cond_1

    .line 201
    invoke-static {v0}, Lcom/google/googlenav/common/io/m;->a([B)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/common/io/m;->c:Ljava/util/Hashtable;

    .line 210
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/common/io/m;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_0
    monitor-exit p0

    return-void

    .line 206
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/common/io/m;->b:Lcom/google/googlenav/common/io/PersistentStore;

    const/16 v1, 0x7d0

    new-array v1, v1, [B

    const-string v2, "Preferences"

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/PersistentStore;->a([BLjava/lang/String;)I

    .line 208
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/io/m;->c:Ljava/util/Hashtable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(Ljava/util/Hashtable;)[B
    .locals 4

    .prologue
    const/16 v2, 0x7d0

    const/4 v3, 0x0

    .line 180
    invoke-static {p0}, Lcom/google/googlenav/common/io/m;->a(Ljava/util/Hashtable;)[B

    move-result-object v0

    .line 182
    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 188
    :goto_0
    return-object v0

    .line 186
    :cond_0
    new-array v1, v2, [B

    .line 187
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 188
    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/googlenav/common/io/m;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 242
    :goto_0
    monitor-exit p0

    return-void

    .line 234
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/googlenav/common/io/m;->a:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Saving preferences"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :try_start_2
    iget-object v0, p0, Lcom/google/googlenav/common/io/m;->c:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/google/googlenav/common/io/m;->b(Ljava/util/Hashtable;)[B

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/google/googlenav/common/io/m;->b:Lcom/google/googlenav/common/io/PersistentStore;

    const-string v2, "Preferences"

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/common/io/PersistentStore;->a([BLjava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/google/googlenav/common/io/m;->d:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    :try_start_4
    const-string v1, "FLASH"

    invoke-static {v1, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized a(Ljava/lang/String;[B)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 76
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/googlenav/common/io/m;->b()V

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/common/io/m;->d:Z

    .line 78
    if-nez p2, :cond_1

    .line 79
    iget-object v1, p0, Lcom/google/googlenav/common/io/m;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    :goto_0
    monitor-exit p0

    return v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/googlenav/common/io/m;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/googlenav/common/io/m;->b()V

    .line 94
    iget-object v0, p0, Lcom/google/googlenav/common/io/m;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
