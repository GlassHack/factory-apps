.class public Lcom/google/android/location/reporting/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/io/File;

.field private static volatile b:Ljava/util/Map;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/location/reporting/b/d;->b:Ljava/util/Map;

    .line 63
    const/4 v0, 0x0

    sput v0, Lcom/google/android/location/reporting/b/d;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method private static declared-synchronized a()V
    .locals 4

    .prologue
    .line 417
    const-class v1, Lcom/google/android/location/reporting/b/d;

    monitor-enter v1

    :try_start_0
    const-string v0, "GCoreUlr"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const-string v0, "GCoreUlr"

    const-string v2, "Disabling all flogging"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    sget-object v0, Lcom/google/android/location/reporting/b/d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/b/i;

    .line 421
    invoke-virtual {v0}, Lcom/google/android/location/reporting/b/i;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 423
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/android/location/reporting/b/d;->a:Ljava/io/File;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/location/reporting/b/d;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    sget-object v0, Lcom/google/android/location/reporting/b/d;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/location/p/h;->a(Ljava/io/File;)Z

    move-result v0

    .line 425
    if-nez v0, :cond_2

    .line 426
    const-string v0, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error deleting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/android/location/reporting/b/d;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    :cond_2
    monitor-exit v1

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/location/reporting/b/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "GCoreUlr"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GCoreUlr"

    const-string v2, "Could not determine own process name"

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f100256

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    const-string v0, "GCoreUlr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    const-string v0, "GCoreUlr"

    const-string v1, "Not configuring Flog for non-location process"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    invoke-static {}, Lcom/google/android/gms/common/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flog.configureForUlr() called before initializing GservicesValue"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 150
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/location/a/b;->a(Ljava/lang/Throwable;Z)V

    .line 151
    const-string v1, "GCoreUlr"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const-string v1, "GCoreUlr"

    const-string v2, "Best-effort configureForUlr() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    invoke-static {v0, v3}, Lcom/google/android/location/a/b;->a(Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 155
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "reporting-log"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/location/p/h;->a(Ljava/io/File;)Z

    .line 157
    const-string v1, "GCoreUlr"

    sget-object v0, Lcom/google/android/location/reporting/service/y;->J:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/google/android/location/reporting/b/d;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 159
    const-string v1, "GcoreUlrLong"

    sget-object v0, Lcom/google/android/location/reporting/service/y;->K:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/google/android/location/reporting/b/d;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 79
    const-class v1, Lcom/google/android/location/reporting/b/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "flog"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/reporting/b/d;->a:Ljava/io/File;

    .line 80
    new-instance v2, Ljava/io/File;

    sget-object v0, Lcom/google/android/location/reporting/b/d;->a:Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/google/android/location/reporting/service/y;->I:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 83
    if-nez v0, :cond_1

    .line 84
    invoke-static {}, Lcom/google/android/location/reporting/b/d;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 86
    :cond_1
    if-gtz p2, :cond_4

    .line 87
    :try_start_1
    const-string v0, "GCoreUlr"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Disabling flogging to dir "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/google/android/location/reporting/b/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/b/i;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/location/reporting/b/i;->b()V

    :cond_3
    invoke-static {v2}, Lcom/google/android/location/p/h;->a(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 91
    :cond_4
    :try_start_2
    const-string v0, "GCoreUlr"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    const-string v0, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Configuring log file in dir "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_5
    sget-object v0, Lcom/google/android/location/reporting/b/d;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_6

    .line 95
    sget-object v0, Lcom/google/android/location/reporting/b/d;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 96
    if-nez v0, :cond_0

    .line 97
    const-string v0, "GCoreUlr"

    const-string v2, ""

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error creating sRootDir "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/location/reporting/b/d;->a:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 101
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_7

    .line 102
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 103
    if-nez v0, :cond_0

    .line 104
    const-string v0, "GCoreUlr"

    const-string v3, ""

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error creating dir "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 109
    :cond_7
    sget-object v0, Lcom/google/android/location/reporting/b/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/b/i;

    .line 110
    if-eqz v0, :cond_9

    .line 111
    invoke-virtual {v0}, Lcom/google/android/location/reporting/b/i;->a()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 112
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " inconsistent with existing log file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-static {v3}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/Throwable;)V

    .line 115
    const-string v0, "GCoreUlr"

    invoke-static {v0, v3}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 116
    :cond_8
    const-string v2, "GCoreUlr"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const-string v2, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " already configured, no need to reconfigure"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 124
    :cond_9
    :try_start_3
    new-instance v0, Lcom/google/android/location/reporting/b/i;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v2, p2}, Lcom/google/android/location/reporting/b/i;-><init>(Landroid/content/Context;Ljava/io/File;I)V

    .line 125
    sget-object v3, Lcom/google/android/location/reporting/b/d;->b:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    :try_start_4
    const-string v3, "GCoreUlr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to create log file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 128
    :catch_1
    move-exception v0

    .line 129
    const-string v3, "GCoreUlr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to create log file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public static declared-synchronized a(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 190
    const-class v1, Lcom/google/android/location/reporting/b/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/location/reporting/b/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/b/i;

    .line 191
    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0, p0}, Lcom/google/android/location/reporting/b/i;->a(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 195
    :cond_1
    :try_start_1
    const-string v0, "GCoreUlr"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No log file to dump for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 210
    const-class v1, Lcom/google/android/location/reporting/b/d;

    monitor-enter v1

    :try_start_0
    const-string v0, "GCoreUlr"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    sget-object v0, Lcom/google/android/location/reporting/b/d;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/b/i;

    .line 214
    if-eqz v0, :cond_1

    .line 215
    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, p0, p1}, Lcom/google/android/location/reporting/b/i;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_1
    monitor-exit v1

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 280
    const-class v1, Lcom/google/android/location/reporting/b/d;

    monitor-enter v1

    :try_start_0
    const-string v0, "GCoreUlr"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    :cond_0
    sget-object v0, Lcom/google/android/location/reporting/b/d;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/b/i;

    .line 284
    if-eqz v0, :cond_1

    .line 285
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, p0, p1, p2}, Lcom/google/android/location/reporting/b/i;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :cond_1
    monitor-exit v1

    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 290
    const-class v1, Lcom/google/android/location/reporting/b/d;

    monitor-enter v1

    :try_start_0
    const-string v0, "GCoreUlr"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    :cond_0
    sget-object v0, Lcom/google/android/location/reporting/b/d;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/b/i;

    .line 294
    if-eqz v0, :cond_1

    .line 295
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, p0, p1}, Lcom/google/android/location/reporting/b/i;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :cond_1
    monitor-exit v1

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    .line 206
    const-class v1, Lcom/google/android/location/reporting/b/d;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/location/reporting/b/d;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 230
    const-class v1, Lcom/google/android/location/reporting/b/d;

    monitor-enter v1

    :try_start_0
    const-string v0, "GCoreUlr"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    sget-object v0, Lcom/google/android/location/reporting/b/d;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/b/i;

    .line 234
    if-eqz v0, :cond_1

    .line 235
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, p0, p1}, Lcom/google/android/location/reporting/b/i;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_1
    monitor-exit v1

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 310
    const-class v1, Lcom/google/android/location/reporting/b/d;

    monitor-enter v1

    :try_start_0
    const-string v0, "GCoreUlr"

    const/4 v2, 0x6

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    :cond_0
    sget-object v0, Lcom/google/android/location/reporting/b/d;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/b/i;

    .line 314
    if-eqz v0, :cond_1

    .line 315
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, p0, p1, p2}, Lcom/google/android/location/reporting/b/i;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :cond_1
    monitor-exit v1

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 342
    const-class v1, Lcom/google/android/location/reporting/b/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/location/reporting/b/d;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/b/i;

    .line 343
    if-eqz v0, :cond_0

    .line 344
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, p0, p1}, Lcom/google/android/location/reporting/b/i;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    :cond_0
    invoke-static {p1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/Throwable;)V

    .line 348
    sget v0, Lcom/google/android/location/reporting/b/d;->c:I

    packed-switch v0, :pswitch_data_0

    .line 357
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :pswitch_0
    monitor-exit v1

    return-void

    .line 350
    :pswitch_1
    :try_start_1
    new-instance v0, Lcom/google/android/location/reporting/b/e;

    invoke-direct {v0, p0, p1}, Lcom/google/android/location/reporting/b/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 250
    const-class v1, Lcom/google/android/location/reporting/b/d;

    monitor-enter v1

    :try_start_0
    const-string v0, "GCoreUlr"

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    sget-object v0, Lcom/google/android/location/reporting/b/d;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/b/i;

    .line 254
    if-eqz v0, :cond_1

    .line 255
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, p0, p1}, Lcom/google/android/location/reporting/b/i;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_1
    monitor-exit v1

    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 363
    const-class v1, Lcom/google/android/location/reporting/b/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/location/reporting/b/d;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/b/i;

    .line 364
    if-eqz v0, :cond_0

    .line 365
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, p0, p1, p2}, Lcom/google/android/location/reporting/b/i;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    :cond_0
    invoke-static {p2}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/Throwable;)V

    .line 369
    sget v0, Lcom/google/android/location/reporting/b/d;->c:I

    packed-switch v0, :pswitch_data_0

    .line 378
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :pswitch_0
    monitor-exit v1

    return-void

    .line 371
    :pswitch_1
    :try_start_1
    new-instance v0, Lcom/google/android/location/reporting/b/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/location/reporting/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 270
    const-class v1, Lcom/google/android/location/reporting/b/d;

    monitor-enter v1

    :try_start_0
    const-string v0, "GCoreUlr"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    sget-object v0, Lcom/google/android/location/reporting/b/d;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/b/i;

    .line 274
    if-eqz v0, :cond_1

    .line 275
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, p0, p1}, Lcom/google/android/location/reporting/b/i;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_1
    monitor-exit v1

    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 300
    const-class v1, Lcom/google/android/location/reporting/b/d;

    monitor-enter v1

    :try_start_0
    const-string v0, "GCoreUlr"

    const/4 v2, 0x6

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    sget-object v0, Lcom/google/android/location/reporting/b/d;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/b/i;

    .line 304
    if-eqz v0, :cond_1

    .line 305
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, p0, p1}, Lcom/google/android/location/reporting/b/i;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :cond_1
    monitor-exit v1

    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 320
    const-class v1, Lcom/google/android/location/reporting/b/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/location/reporting/b/d;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/b/i;

    .line 321
    if-eqz v0, :cond_0

    .line 322
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, p0, p1}, Lcom/google/android/location/reporting/b/i;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_0
    new-instance v0, Lcom/google/android/location/reporting/b/e;

    invoke-direct {v0, p0, p1}, Lcom/google/android/location/reporting/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/Throwable;)V

    .line 327
    sget v2, Lcom/google/android/location/reporting/b/d;->c:I

    packed-switch v2, :pswitch_data_0

    .line 336
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :pswitch_0
    monitor-exit v1

    return-void

    .line 329
    :pswitch_1
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 327
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
