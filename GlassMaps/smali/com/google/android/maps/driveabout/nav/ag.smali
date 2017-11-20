.class public final Lcom/google/android/maps/driveabout/nav/ag;
.super Lcom/google/android/maps/driveabout/util/SharedSingleton;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/glass/logging/FormattingLogger;

.field private static final g:Lcom/google/android/maps/driveabout/nav/ag;


# instance fields
.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/io/File;

.field private f:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/nav/ag;->a:Lcom/google/glass/logging/FormattingLogger;

    .line 59
    new-instance v0, Lcom/google/android/maps/driveabout/nav/ag;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/nav/ag;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/nav/ag;->g:Lcom/google/android/maps/driveabout/nav/ag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/util/SharedSingleton;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/nav/ag;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/google/android/maps/driveabout/nav/ag;->g:Lcom/google/android/maps/driveabout/nav/ag;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/nav/ag;->c(Landroid/content/Context;)V

    .line 63
    sget-object v0, Lcom/google/android/maps/driveabout/nav/ag;->g:Lcom/google/android/maps/driveabout/nav/ag;

    return-object v0
.end method

.method private static a(Ljava/io/File;)Ljava/util/List;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 89
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :try_start_1
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 91
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    .line 92
    sget-object v1, Lcom/google/j/b/a/a/a/a;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v1, v0}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    .line 94
    invoke-static {v1}, Lcom/google/android/maps/driveabout/nav/a;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/a;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_1
    sget-object v2, Lcom/google/android/maps/driveabout/nav/ag;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 106
    sget-object v0, Lcom/google/android/maps/driveabout/nav/ag;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 109
    :goto_2
    return-object v3

    .line 105
    :cond_0
    sget-object v1, Lcom/google/android/maps/driveabout/nav/ag;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 106
    sget-object v0, Lcom/google/android/maps/driveabout/nav/ag;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_2

    .line 99
    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/google/android/maps/driveabout/nav/ag;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error opening file "

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-static {v4, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    sget-object v1, Lcom/google/android/maps/driveabout/nav/ag;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 106
    sget-object v0, Lcom/google/android/maps/driveabout/nav/ag;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_2

    .line 99
    :cond_1
    :try_start_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 105
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_5
    sget-object v3, Lcom/google/android/maps/driveabout/nav/ag;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 106
    sget-object v1, Lcom/google/android/maps/driveabout/nav/ag;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v0

    .line 102
    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_6
    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 103
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 105
    sget-object v1, Lcom/google/android/maps/driveabout/nav/ag;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 106
    sget-object v0, Lcom/google/android/maps/driveabout/nav/ag;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_2

    .line 105
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 102
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_6

    .line 99
    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_3

    .line 105
    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_8
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/a;)V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->d:Ljava/util/List;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 183
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/j/b/a/a/a/a;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 187
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/a;->b()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    .line 188
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/a;->c()Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    .line 189
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    .line 190
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    .line 191
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/ag;->a(Lcom/google/googlenav/common/io/b/a;)V

    .line 192
    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/b/a;)V
    .locals 3

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 151
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 152
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ag;->e:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 154
    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/b/f;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/b/a;)V

    .line 156
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/maps/driveabout/nav/ag;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error creating or deleting file."

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :catch_1
    move-exception v0

    sget-object v0, Lcom/google/android/maps/driveabout/nav/ag;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Security exception creating file."

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->f:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/ag;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->c:Ljava/util/List;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->c:Ljava/util/List;

    .line 115
    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->d:Ljava/util/List;

    .line 116
    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->e:Ljava/io/File;

    .line 117
    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->f:Ljava/io/File;

    .line 118
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/f;)V
    .locals 1

    .prologue
    .line 175
    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/a;->a(Lcom/google/android/maps/driveabout/nav/f;)Lcom/google/android/maps/driveabout/nav/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/ag;->a(Lcom/google/android/maps/driveabout/nav/a;)V

    .line 176
    return-void
.end method

.method protected final b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Ljava/io/File;

    .line 73
    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "return_directions_proto"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->e:Ljava/io/File;

    .line 74
    new-instance v0, Ljava/io/File;

    .line 75
    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "saved_directions_proto"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->f:Ljava/io/File;

    .line 76
    return-void
.end method

.method public final b(Lcom/google/android/maps/driveabout/nav/f;)Z
    .locals 2

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/ag;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/a;->a(Lcom/google/android/maps/driveabout/nav/f;)Lcom/google/android/maps/driveabout/nav/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 225
    const/4 v0, 0x0

    return v0
.end method
