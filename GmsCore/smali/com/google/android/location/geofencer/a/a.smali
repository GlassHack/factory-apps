.class public final Lcom/google/android/location/geofencer/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Z

.field private static b:Ljava/io/PrintWriter;

.field private static final c:Ljava/text/FieldPosition;

.field private static final d:Ljava/util/Date;

.field private static final e:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    sput-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    .line 51
    new-instance v0, Ljava/text/FieldPosition;

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    sput-object v0, Lcom/google/android/location/geofencer/a/a;->c:Ljava/text/FieldPosition;

    .line 52
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/google/android/location/geofencer/a/a;->d:Ljava/util/Date;

    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd HH:mm:ss "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/geofencer/a/a;->e:Ljava/text/SimpleDateFormat;

    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lcom/google/android/location/geofencer/a/a;->f:Ljava/lang/StringBuffer;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 68
    const-class v2, Lcom/google/android/location/geofencer/a/a;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/google/android/location/geofencer/a/a;->b:Ljava/io/PrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 71
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "gcore_geofencer_enable_debuging"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 73
    :goto_1
    sput-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_2

    .line 74
    const-string v0, "Logger"

    const-string v1, "Debugging enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/location/geofencer/a/a;->b:Ljava/io/PrintWriter;

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/io/File;

    const-string v3, "geofencer_debug_log"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :try_start_2
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/BufferedOutputStream;

    const-string v3, "geofencer_debug_log"

    const v4, 0x8000

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    sput-object v0, Lcom/google/android/location/geofencer/a/a;->b:Ljava/io/PrintWriter;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    :try_start_3
    const-string v1, "Logger"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to create debug writer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    move v0, v1

    .line 71
    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {p0, p1}, Lcom/google/android/location/geofencer/a/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {p0, p1}, Lcom/google/android/location/geofencer/a/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {p0, p1}, Lcom/google/android/location/geofencer/a/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {p0, p1}, Lcom/google/android/location/geofencer/a/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {p0, p1}, Lcom/google/android/location/geofencer/a/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private static declared-synchronized f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 166
    const-class v1, Lcom/google/android/location/geofencer/a/a;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/location/geofencer/a/a;->b:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Lcom/google/android/location/geofencer/a/a;->d:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 168
    sget-object v0, Lcom/google/android/location/geofencer/a/a;->f:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 169
    sget-object v0, Lcom/google/android/location/geofencer/a/a;->e:Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/google/android/location/geofencer/a/a;->d:Ljava/util/Date;

    sget-object v3, Lcom/google/android/location/geofencer/a/a;->f:Ljava/lang/StringBuffer;

    sget-object v4, Lcom/google/android/location/geofencer/a/a;->c:Ljava/text/FieldPosition;

    invoke-virtual {v0, v2, v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 170
    sget-object v0, Lcom/google/android/location/geofencer/a/a;->f:Ljava/lang/StringBuffer;

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    sget-object v0, Lcom/google/android/location/geofencer/a/a;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    sget-object v0, Lcom/google/android/location/geofencer/a/a;->f:Ljava/lang/StringBuffer;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    sget-object v0, Lcom/google/android/location/geofencer/a/a;->f:Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 174
    sget-object v0, Lcom/google/android/location/geofencer/a/a;->f:Ljava/lang/StringBuffer;

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    sget-object v0, Lcom/google/android/location/geofencer/a/a;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    sget-object v0, Lcom/google/android/location/geofencer/a/a;->f:Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    sget-object v0, Lcom/google/android/location/geofencer/a/a;->b:Ljava/io/PrintWriter;

    sget-object v2, Lcom/google/android/location/geofencer/a/a;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/google/android/location/geofencer/a/a;->b:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_0
    monitor-exit v1

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
