.class public final Lcom/google/android/maps/driveabout/store/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Locale;


# instance fields
.field private final b:I

.field private final c:Lcom/google/android/maps/driveabout/store/y;

.field private final d:Lcom/google/googlenav/common/a;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sput-object v0, Lcom/google/android/maps/driveabout/store/u;->a:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>(ILjava/io/File;Lcom/google/googlenav/common/a;)V
    .locals 8

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/google/android/maps/driveabout/store/u;->b:I

    .line 54
    iput-object p3, p0, Lcom/google/android/maps/driveabout/store/u;->d:Lcom/google/googlenav/common/a;

    .line 55
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/u;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v2

    .line 58
    new-instance v0, Lcom/google/android/maps/driveabout/store/x;

    invoke-direct {v0, p2}, Lcom/google/android/maps/driveabout/store/x;-><init>(Ljava/io/File;)V

    .line 59
    const/4 v1, 0x0

    .line 61
    :try_start_0
    const-string v4, "r"

    invoke-static {v4, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/az;)Lcom/google/android/maps/driveabout/store/y;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    :goto_0
    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/u;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v4

    sub-long v1, v4, v2

    .line 72
    const-string v3, "DiskResourceCache"

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/y;->c()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x32

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Loaded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " entries, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/store/u;->e:Z

    .line 75
    :cond_0
    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/u;->c:Lcom/google/android/maps/driveabout/store/y;

    .line 76
    return-void

    :catch_0
    move-exception v4

    .line 64
    :try_start_1
    const-string v4, "r"

    iget v5, p0, Lcom/google/android/maps/driveabout/store/u;->b:I

    const/4 v6, 0x0

    sget-object v7, Lcom/google/android/maps/driveabout/store/u;->a:Ljava/util/Locale;

    invoke-static {v4, v5, v6, v7, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Ljava/lang/String;IILjava/util/Locale;Lcom/google/android/maps/driveabout/store/az;)Lcom/google/android/maps/driveabout/store/y;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 66
    :catch_1
    move-exception v0

    .line 67
    const-string v4, "DiskResourceCache"

    invoke-static {v4, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Lcom/google/android/maps/driveabout/store/u;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/maps/driveabout/store/u;

    const/16 v1, 0x200

    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/maps/driveabout/store/u;-><init>(ILjava/io/File;Lcom/google/googlenav/common/a;)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/store/bb;
    .locals 8

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 124
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/store/u;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 128
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/u;->c:Lcom/google/android/maps/driveabout/store/y;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/store/y;->a(J)[B

    move-result-object v1

    .line 129
    if-eqz v1, :cond_0

    array-length v2, v1

    if-le v2, v5, :cond_0

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v2, v4, :cond_0

    .line 133
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/store/y;->c([BI)J

    move-result-wide v2

    .line 134
    new-instance v4, Lcom/google/googlenav/common/io/b/a;

    sget-object v5, Lcom/google/j/b/a/b/w;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v4, v5}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :try_start_2
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const/16 v6, 0x9

    array-length v7, v1

    add-int/lit8 v7, v7, -0x9

    invoke-direct {v5, v1, v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v4, v5}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/InputStream;)Lcom/google/googlenav/common/io/b/a;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    const/4 v1, 0x2

    :try_start_3
    invoke-virtual {v4, v1}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    new-instance v0, Lcom/google/android/maps/driveabout/store/bb;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/store/bb;-><init>()V

    .line 146
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/bb;->a(Z)V

    .line 147
    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/store/bb;->a(Lcom/google/googlenav/common/io/b/a;)Z

    .line 148
    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/store/bb;->a(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 139
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a()V
    .locals 4

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/u;->e:Z

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/u;->c:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/y;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/u;->e:Z

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string v1, "DiskResourceCache"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Closing resource cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final declared-synchronized a(Lcom/google/googlenav/common/io/b/a;)V
    .locals 7

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/u;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 177
    :goto_0
    monitor-exit p0

    return-void

    .line 161
    :cond_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 163
    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/u;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v2

    .line 164
    invoke-virtual {p1}, Lcom/google/googlenav/common/io/b/a;->c()[B

    move-result-object v0

    .line 166
    array-length v4, v0

    add-int/lit8 v4, v4, 0x9

    new-array v4, v4, [B

    .line 167
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    .line 168
    const/4 v5, 0x1

    invoke-static {v4, v5, v2, v3}, Lcom/google/android/maps/driveabout/store/y;->a([BIJ)V

    .line 169
    const/4 v2, 0x0

    const/16 v3, 0x9

    array-length v5, v0

    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    invoke-static {v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3, v4}, Lcom/google/android/maps/driveabout/store/y;->a(J[B)Lcom/google/android/maps/driveabout/store/ac;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/u;->c:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    :try_start_3
    const-string v2, "DiskResourceCache"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error inserting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
