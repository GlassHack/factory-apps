.class public final Lcom/google/android/gms/gcm/au;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field static g:J


# instance fields
.field private A:Z

.field private B:Ljava/lang/Object;

.field private C:Lcom/google/android/gms/gcm/b;

.field private D:J

.field private E:J

.field private F:Z

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:Z

.field private L:Lcom/google/android/gms/gcm/g;

.field private M:J

.field private N:J

.field private O:I

.field a:Lcom/google/android/gms/gcm/a;

.field b:Landroid/net/NetworkInfo$State;

.field c:I

.field d:Landroid/net/NetworkInfo$State;

.field e:I

.field f:Z

.field h:J

.field public i:J

.field public j:J

.field private k:Landroid/content/Context;

.field private l:Landroid/net/ConnectivityManager;

.field private m:Z

.field private n:J

.field private o:J

.field private p:I

.field private q:J

.field private r:I

.field private s:D

.field private t:I

.field private u:Ljava/util/Random;

.field private v:J

.field private w:Z

.field private x:J

.field private y:Z

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 229
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/google/android/gms/gcm/au;->g:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 237
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 166
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/au;->u:Ljava/util/Random;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/au;->w:Z

    .line 180
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/google/android/gms/gcm/au;->b:Landroid/net/NetworkInfo$State;

    .line 184
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/google/android/gms/gcm/au;->d:Landroid/net/NetworkInfo$State;

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/au;->f:Z

    .line 198
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/au;->B:Ljava/lang/Object;

    .line 227
    const/16 v0, 0x146c

    iput v0, p0, Lcom/google/android/gms/gcm/au;->O:I

    .line 238
    iput-object p1, p0, Lcom/google/android/gms/gcm/au;->k:Landroid/content/Context;

    .line 239
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->k:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/gms/gcm/au;->l:Landroid/net/ConnectivityManager;

    .line 241
    new-instance v0, Lcom/google/android/gms/gcm/a;

    iget-object v1, p0, Lcom/google/android/gms/gcm/au;->k:Landroid/content/Context;

    const-string v2, "GCM_CONN_ALARM"

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/gcm/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/au;->a:Lcom/google/android/gms/gcm/a;

    .line 242
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->a:Lcom/google/android/gms/gcm/a;

    const-string v1, "com.google.android.intent.action.GCM_RECONNECT"

    iput-object v1, v0, Lcom/google/android/gms/gcm/a;->b:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->a:Lcom/google/android/gms/gcm/a;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/a;->b()V

    .line 244
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/au;->N:J

    .line 248
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/gcm/au;)Lcom/google/android/gms/gcm/g;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->L:Lcom/google/android/gms/gcm/g;

    return-object v0
.end method

.method private a(Landroid/net/NetworkInfo$State;I)V
    .locals 2

    .prologue
    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setInternalNetworkState: type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    .line 1068
    sget-object v0, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/gcm/au;->w:Z

    .line 1069
    iput-object p1, p0, Lcom/google/android/gms/gcm/au;->b:Landroid/net/NetworkInfo$State;

    .line 1070
    iput p2, p0, Lcom/google/android/gms/gcm/au;->c:I

    .line 1071
    return-void

    .line 1068
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1222
    const-string v0, "GCM"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    const-string v1, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "A "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/gcm/au;->b:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/gcm/au;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->a:Lcom/google/android/gms/gcm/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->a:Lcom/google/android/gms/gcm/a;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/a;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->a:Lcom/google/android/gms/gcm/a;

    iget-wide v4, v0, Lcom/google/android/gms/gcm/a;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :cond_0
    return-void

    .line 1225
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "a "

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_1
.end method

.method private static a(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1059
    if-eq p0, v0, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/net/ConnectivityManager;II)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1158
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 1169
    :goto_0
    return v0

    .line 1162
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "reportInetCondition"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1164
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1165
    goto :goto_0

    .line 1167
    :catch_0
    move-exception v1

    const-string v1, "GCM"

    const-string v2, "reportInetCondition not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private d(Z)V
    .locals 1

    .prologue
    .line 784
    monitor-enter p0

    .line 785
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/gcm/au;->F:Z

    .line 786
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 567
    monitor-enter p0

    .line 568
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/au;->m:Z

    if-eqz v0, :cond_0

    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/au;->m:Z

    .line 570
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->a:Lcom/google/android/gms/gcm/a;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/a;->e()V

    .line 572
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 778
    monitor-enter p0

    .line 779
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/au;->F:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 780
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1076
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->a:Lcom/google/android/gms/gcm/a;

    iget-object v0, v0, Lcom/google/android/gms/gcm/a;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1281
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 251
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/au;->v:J

    .line 254
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    .line 256
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/gcm/au;->y:Z

    .line 257
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/gcm/au;->a(Landroid/net/NetworkInfo$State;I)V

    .line 263
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/au;->b()V

    .line 264
    return-void

    .line 259
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/au;->y:Z

    .line 260
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/gcm/au;->a(Landroid/net/NetworkInfo$State;I)V

    goto :goto_0
.end method

.method final a(IZ)V
    .locals 5

    .prologue
    const/16 v4, 0x1bb

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1100
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/au;->K:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/gcm/au;->O:I

    if-lez v0, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/gcm/au;->c:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    iget v0, v0, Lcom/google/android/gms/gcm/b;->e:I

    iget v1, p0, Lcom/google/android/gms/gcm/au;->O:I

    if-ne v0, v1, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    iput v4, v0, Lcom/google/android/gms/gcm/b;->e:I

    .line 1108
    invoke-virtual {p0, v3}, Lcom/google/android/gms/gcm/au;->a(Z)V

    .line 1122
    :goto_0
    return-void

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    iget v0, v0, Lcom/google/android/gms/gcm/b;->e:I

    if-ne v0, v4, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    iget v1, p0, Lcom/google/android/gms/gcm/au;->O:I

    iput v1, v0, Lcom/google/android/gms/gcm/b;->e:I

    .line 1116
    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/gms/gcm/au;->c(Z)V

    .line 1119
    invoke-virtual {p0, v2}, Lcom/google/android/gms/gcm/au;->a(Z)V

    .line 1120
    invoke-direct {p0}, Lcom/google/android/gms/gcm/au;->j()V

    .line 1121
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/b;->c()V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/gcm/b;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    .line 328
    return-void
.end method

.method public final a(Lcom/google/android/gms/gcm/g;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/google/android/gms/gcm/au;->L:Lcom/google/android/gms/gcm/g;

    .line 332
    return-void
.end method

.method public final a(Ljava/io/PrintWriter;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const-wide/16 v6, 0x3e8

    .line 1174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1176
    iget-object v1, p0, Lcom/google/android/gms/gcm/au;->a:Lcom/google/android/gms/gcm/a;

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/a;->a()J

    move-result-wide v4

    .line 1177
    sub-long/2addr v4, v2

    .line 1179
    iget-object v1, p0, Lcom/google/android/gms/gcm/au;->a:Lcom/google/android/gms/gcm/a;

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/a;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReconnectManager: next reconnect attempt in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/gcm/au;->a:Lcom/google/android/gms/gcm/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1189
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Last network state notification: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/gcm/au;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/gcm/au;->d:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/google/android/gms/gcm/au;->x:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "active network type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/gcm/au;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1194
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1195
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/gcm/au;->c:I

    if-eq v1, v2, :cond_0

    .line 1196
    const-string v1, "Type missmatch between polled and callback:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1197
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "active network type (polled): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "active network state (polled): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/gcm/au;->b:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1201
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/gcm/au;->N:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 1202
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/gcm/au;->N:J

    sub-long/2addr v0, v2

    div-long/2addr v0, v6

    .line 1203
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/gcm/au;->M:J

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1210
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Network status: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/gcm/au;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "ON"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Previous Network status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/gms/gcm/au;->y:Z

    if-eqz v0, :cond_9

    const-string v0, "ON"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/gms/gcm/au;->w:Z

    if-eqz v0, :cond_a

    const-string v0, " NetworkSuspended"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/gms/gcm/au;->A:Z

    if-eqz v0, :cond_b

    const-string v0, " InMobileHipriMode"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/gms/gcm/au;->f:Z

    if-nez v0, :cond_c

    const-string v0, " NoNetworkStatusIcon"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1219
    return-void

    .line 1183
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ReconnectManager OFF "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/gcm/au;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    :goto_7
    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/b;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Connected"

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/b;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/b;->f()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Connecting"

    :goto_a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/gcm/au;->h()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    goto :goto_7

    :cond_4
    const-string v0, "Connection disabled"

    goto :goto_8

    :cond_5
    const-string v0, ""

    goto :goto_9

    :cond_6
    const-string v0, ""

    goto :goto_a

    .line 1206
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Disconnected, connected time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/android/gms/gcm/au;->M:J

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1210
    :cond_8
    const-string v0, "OFF"

    goto/16 :goto_2

    :cond_9
    const-string v0, "OFF"

    goto/16 :goto_3

    :cond_a
    const-string v0, ""

    goto/16 :goto_4

    :cond_b
    const-string v0, ""

    goto/16 :goto_5

    :cond_c
    const-string v0, ""

    goto/16 :goto_6
.end method

.method public final a(Z)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 341
    invoke-static {}, Lcom/google/android/gms/gcm/f;->d()I

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    iget v2, v2, Lcom/google/android/gms/gcm/b;->e:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/gcm/au;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/gcm/ab;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/b;->b(I)V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v2}, Lcom/google/android/gms/gcm/b;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 350
    const-string v0, "ReconnectManager: skip retry, isActive()"

    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v2}, Lcom/google/android/gms/gcm/b;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 356
    const-string v0, "ReconnectManager: skip retry, isConnected()"

    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_4
    if-eqz p1, :cond_5

    .line 362
    const-string v0, "ReconnectManager: connect()"

    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->a:Lcom/google/android/gms/gcm/a;

    iget-object v0, v0, Lcom/google/android/gms/gcm/a;->a:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 366
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/b;->j()V

    goto :goto_0

    .line 375
    :cond_5
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/gcm/au;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/gcm/ab;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/gcm/au;->m:Z

    if-eqz v2, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/gcm/au;->a:Lcom/google/android/gms/gcm/a;

    invoke-virtual {v4}, Lcom/google/android/gms/gcm/a;->a()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "alarm failed to fire: alarmTime="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", now="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/gcm/au;->m:Z

    iget-object v2, p0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v2}, Lcom/google/android/gms/gcm/b;->k()Z

    move-result v3

    iget-object v2, p0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v2}, Lcom/google/android/gms/gcm/b;->l()J

    move-result-wide v4

    iget v2, p0, Lcom/google/android/gms/gcm/au;->p:I

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-ltz v2, :cond_c

    move v2, v0

    :goto_1
    if-eqz v3, :cond_d

    if-eqz v2, :cond_d

    move v4, v0

    :goto_2
    if-nez v4, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shouldResetReconnectTimer: lastConnectionWasOfMininumDuration="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastAttemptSuccessful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    :cond_8
    if-eqz v4, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/au;->b(Z)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->a:Lcom/google/android/gms/gcm/a;

    iget-wide v2, p0, Lcom/google/android/gms/gcm/au;->n:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/gcm/a;->a(J)V

    iget-wide v0, p0, Lcom/google/android/gms/gcm/au;->n:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/gcm/au;->s:D

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iget-wide v6, p0, Lcom/google/android/gms/gcm/au;->n:J

    iget-wide v2, p0, Lcom/google/android/gms/gcm/au;->q:J

    iget-boolean v5, p0, Lcom/google/android/gms/gcm/au;->y:Z

    if-nez v5, :cond_a

    iget v5, p0, Lcom/google/android/gms/gcm/au;->r:I

    if-lez v5, :cond_a

    iget v2, p0, Lcom/google/android/gms/gcm/au;->r:I

    int-to-long v2, v2

    :cond_a
    cmp-long v5, v0, v2

    if-gez v5, :cond_e

    :goto_3
    iput-wide v0, p0, Lcom/google/android/gms/gcm/au;->n:J

    const-string v0, "GCM"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setReconAlarm: set delay to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    div-long v2, v6, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s retry in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/gcm/au;->n:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v4, :cond_f

    const-string v0, " no backoff "

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    :cond_b
    monitor-exit p0

    goto/16 :goto_0

    :cond_c
    move v2, v1

    goto/16 :goto_1

    :cond_d
    move v4, v1

    goto/16 :goto_2

    :cond_e
    move-wide v0, v2

    goto :goto_3

    :cond_f
    const-string v0, " backoff"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method final b()V
    .locals 7

    .prologue
    const/16 v3, 0x2710

    const/4 v6, 0x0

    .line 270
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 271
    const-string v0, "gms_max_reconnect_delay"

    const v1, 0x493e0

    invoke-static {v2, v0, v1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/au;->q:J

    .line 275
    const-string v0, "gms_max_no_network_reconnect_delay"

    const v1, 0x36ee80

    invoke-static {v2, v0, v1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/gcm/au;->r:I

    .line 279
    const-string v0, "gms_min_connection_duration"

    const/16 v1, 0x78

    invoke-static {v2, v0, v1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/gcm/au;->p:I

    .line 283
    const-string v0, "gms_min_reconnect_delay_short"

    const/16 v1, 0x1388

    invoke-static {v2, v0, v1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/gcm/au;->I:I

    .line 287
    const-string v0, "gtalk_reconnect_variant_short"

    invoke-static {v2, v0, v3}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/gcm/au;->J:I

    .line 291
    const-string v0, "gms_min_reconnect_delay_long"

    invoke-static {v2, v0, v3}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/gcm/au;->G:I

    .line 295
    const-string v0, "gtalk_reconnect_variant_long"

    const/16 v1, 0x7530

    invoke-static {v2, v0, v1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/gcm/au;->H:I

    .line 299
    const-string v0, "gtalk_short_network_downtime"

    const v1, 0x2932e0

    invoke-static {v2, v0, v1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/gcm/au;->t:I

    .line 303
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gcm_http_save"

    sget-wide v4, Lcom/google/android/gms/gcm/au;->g:J

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/au;->h:J

    .line 306
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/ab;->h(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/gcm/au;->O:I

    .line 308
    const-string v0, "gtalk_reconnect_backoff_multiplier"

    invoke-static {v2, v0}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 310
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 311
    if-eqz v3, :cond_0

    .line 313
    :try_start_0
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 318
    :cond_0
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/gcm/au;->s:D

    .line 320
    const-string v0, "gcm_fallback_reconnect"

    invoke-static {v2, v0, v6}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/au;->K:Z

    .line 323
    invoke-virtual {p0, v6}, Lcom/google/android/gms/gcm/au;->b(Z)V

    .line 324
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 6

    .prologue
    .line 412
    iget-wide v0, p0, Lcom/google/android/gms/gcm/au;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/gcm/au;->n:J

    iget-wide v2, p0, Lcom/google/android/gms/gcm/au;->o:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 417
    :cond_0
    if-eqz p1, :cond_1

    .line 418
    iget v0, p0, Lcom/google/android/gms/gcm/au;->G:I

    iget-object v1, p0, Lcom/google/android/gms/gcm/au;->u:Ljava/util/Random;

    iget v2, p0, Lcom/google/android/gms/gcm/au;->H:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/au;->o:J

    .line 424
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resetReconnectionTimer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/android/gms/gcm/au;->o:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    .line 426
    iget-wide v0, p0, Lcom/google/android/gms/gcm/au;->o:J

    iput-wide v0, p0, Lcom/google/android/gms/gcm/au;->n:J

    goto :goto_0

    .line 421
    :cond_1
    iget v0, p0, Lcom/google/android/gms/gcm/au;->I:I

    iget-object v1, p0, Lcom/google/android/gms/gcm/au;->u:Ljava/util/Random;

    iget v2, p0, Lcom/google/android/gms/gcm/au;->J:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/au;->o:J

    goto :goto_1
.end method

.method final c(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1142
    iget-boolean v1, p0, Lcom/google/android/gms/gcm/au;->f:Z

    if-nez v1, :cond_0

    .line 1150
    :goto_0
    return-void

    .line 1145
    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x64

    .line 1146
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/gcm/au;->B:Ljava/lang/Object;

    monitor-enter v1

    .line 1147
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/gcm/au;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/au;->e()I

    move-result v3

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/gcm/au;->a(Landroid/net/ConnectivityManager;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/au;->f:Z

    .line 1150
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final c()Z
    .locals 4

    .prologue
    .line 481
    iget-wide v0, p0, Lcom/google/android/gms/gcm/au;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 6

    .prologue
    .line 493
    monitor-enter p0

    .line 494
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/gcm/au;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 495
    monitor-exit p0

    .line 526
    :goto_0
    return-void

    .line 497
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/gcm/au;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 499
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 502
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/au;->m:Z

    if-eqz v0, :cond_2

    .line 503
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 504
    iget-object v2, p0, Lcom/google/android/gms/gcm/au;->a:Lcom/google/android/gms/gcm/a;

    invoke-virtual {v2}, Lcom/google/android/gms/gcm/a;->a()J

    move-result-wide v2

    .line 505
    cmp-long v4, v2, v0

    if-gez v4, :cond_4

    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "alarm failed to fire: alarmTime="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", now="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    .line 514
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/au;->m:Z

    .line 516
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->a:Lcom/google/android/gms/gcm/a;

    iget-wide v2, p0, Lcom/google/android/gms/gcm/au;->n:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/gcm/a;->a(J)V

    .line 518
    iget-wide v0, p0, Lcom/google/android/gms/gcm/au;->n:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/gcm/au;->s:D

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 519
    iget-wide v2, p0, Lcom/google/android/gms/gcm/au;->n:J

    .line 520
    iget-wide v4, p0, Lcom/google/android/gms/gcm/au;->q:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_5

    :goto_1
    iput-wide v0, p0, Lcom/google/android/gms/gcm/au;->n:J

    .line 522
    const-string v0, "GCM"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 523
    const-string v0, "GCM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Set HTTP resend alarm "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " next: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/gcm/au;->n:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_3
    monitor-exit p0

    goto/16 :goto_0

    .line 509
    :cond_4
    monitor-exit p0

    goto/16 :goto_0

    .line 520
    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/gcm/au;->q:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/google/android/gms/gcm/au;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1088
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method final f()V
    .locals 1

    .prologue
    .line 1092
    invoke-direct {p0}, Lcom/google/android/gms/gcm/au;->g()V

    .line 1093
    invoke-direct {p0}, Lcom/google/android/gms/gcm/au;->j()V

    .line 1094
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/au;->c(Z)V

    .line 1095
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    .prologue
    .line 1240
    if-nez p2, :cond_1

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1243
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1244
    if-eqz v2, :cond_0

    .line 1248
    const-string v3, "GCM"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1249
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onReceive intent "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    .line 1252
    :cond_2
    const-string v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1253
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/gcm/au;->d(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/b;->b(I)V

    goto :goto_0

    .line 1254
    :cond_3
    const-string v3, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1255
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/gcm/au;->d(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/gcm/au;->a(Z)V

    goto :goto_0

    .line 1256
    :cond_4
    const-string v3, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/gcm/au;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/gcm/au;->a(Z)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/b;->b(I)V

    goto :goto_0

    .line 1258
    :cond_6
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/gcm/au;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/gcm/au;->N:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/gcm/au;->N:J

    :cond_7
    :goto_1
    const-string v2, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    const-string v3, "noConnectivity"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v3, :cond_8

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/gcm/au;->k:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/gcm/at;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/at;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/gcm/at;->b()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/gcm/au;->k:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/gcm/ab;->c(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/gcm/au;->d()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/gcm/au;->N:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/gcm/au;->M:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/gcm/au;->N:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/gcm/au;->M:J

    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/gcm/au;->N:J

    goto :goto_1

    :cond_a
    const-string v4, "GCM"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isFailover"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Connectivity status: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_10

    const-string v3, "NO CONNECTIVITY"

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " type="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " state="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_13

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, " reason="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v5, :cond_14

    const-string v3, " failover"

    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    const-string v3, "otherNetwork"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    if-eqz v3, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    net2.type= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " net2.state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/gms/gcm/au;->x:J

    if-nez v2, :cond_15

    const-string v2, "GCM"

    const-string v3, "Connection event without network info, shouldn\'t happen !"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/gcm/au;->e:I

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/gcm/au;->d:Landroid/net/NetworkInfo$State;

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/gcm/au;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    const/4 v2, -0x1

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "GCM"

    const-string v3, "ACTIVE NETWORK NOT CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/gcm/au;->y:Z

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/gms/gcm/au;->i:J

    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/gcm/au;->e:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/gcm/au;->d:Landroid/net/NetworkInfo$State;

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v5, :cond_1a

    if-eqz v2, :cond_d

    const/4 v3, 0x6

    if-ne v2, v3, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v3}, Lcom/google/android/gms/gcm/b;->f()Z

    move-result v3

    if-nez v3, :cond_17

    const/4 v3, 0x0

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/gms/gcm/au;->A:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gms/gcm/au;->A:Z

    if-eqz v3, :cond_19

    const-string v3, "networkStateChanged for MOBILE_HIPRI: set MOBILE_HIPRI=true"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    :cond_e
    :goto_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/gcm/au;->e:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/gcm/au;->d:Landroid/net/NetworkInfo$State;

    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v5, :cond_1b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/gms/gcm/au;->z:J

    :cond_f
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gms/gcm/au;->y:Z

    if-eqz v3, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gms/gcm/au;->A:Z

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v3}, Lcom/google/android/gms/gcm/b;->e()Z

    move-result v3

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "networkStateChanged: active_net_type="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", current_net_type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/gcm/au;->c:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", in MOBILE_HIPRI, ignore"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    const/4 v3, 0x1

    :goto_c
    if-eqz v3, :cond_1e

    const-string v2, "Keep hipri network"

    invoke-static {v2}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const-string v3, ""

    goto/16 :goto_2

    :cond_11
    const-string v3, "unknown"

    goto/16 :goto_3

    :cond_12
    const-string v3, "unknown"

    goto/16 :goto_4

    :cond_13
    const-string v3, ""

    goto/16 :goto_5

    :cond_14
    const-string v3, ""

    goto/16 :goto_6

    :cond_15
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/gms/gcm/au;->e:I

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/gcm/au;->d:Landroid/net/NetworkInfo$State;

    goto/16 :goto_7

    :cond_16
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/gms/gcm/au;->y:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/gms/gcm/au;->j:J

    goto/16 :goto_8

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v3}, Lcom/google/android/gms/gcm/b;->n()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    const/4 v6, 0x3

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    const/4 v7, 0x2

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x1

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--- requestRouteToHost for TYPE_MOBILE_HIPRI, host_addr="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/gcm/au;->l:Landroid/net/ConnectivityManager;

    const/4 v6, 0x5

    invoke-virtual {v3, v6, v5}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v3

    if-nez v3, :cond_18

    const-string v3, "GCM"

    const-string v5, "requestRouteToHost: failed!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 v3, 0x1

    goto/16 :goto_9

    :cond_19
    const-string v3, "networkStateChanged for MOBILE_HIPRI: MOBILE_HIPRI=false, ensureRouteOverMobileHipriNetworkInterface() failed"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/gcm/au;->d:Landroid/net/NetworkInfo$State;

    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v5, :cond_e

    const-string v3, "networkStateChanged: MOBILE_HIPRI disconnected"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/gms/gcm/au;->A:Z

    goto/16 :goto_a

    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/gcm/au;->d:Landroid/net/NetworkInfo$State;

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v5, :cond_f

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/gms/gcm/au;->z:J

    goto/16 :goto_b

    :cond_1c
    const-string v3, "networkStateChanged: reset MOBILE_HIPRI to false"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/gms/gcm/au;->A:Z

    :cond_1d
    const/4 v3, 0x0

    goto/16 :goto_c

    :cond_1e
    const-string v3, "GCM"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "networkStateChanged (has active network): active_network_type="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", curr_network_type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/gcm/au;->c:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", curr_network_state="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/gcm/au;->b:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    :cond_1f
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v4}, Lcom/google/android/gms/gcm/b;->e()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v5}, Lcom/google/android/gms/gcm/b;->f()Z

    move-result v5

    if-eqz v5, :cond_20

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/gcm/au;->c(Z)V

    :cond_20
    if-nez v4, :cond_21

    if-eqz v5, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/gcm/au;->b:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_22

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/gcm/au;->c:I

    if-ne v2, v4, :cond_22

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "### networkStateChanged: active and curr network type/state are the same("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), ignore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/gcm/au;->c:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/gcm/au;->b:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/gcm/au;->a(Landroid/net/NetworkInfo$State;I)V

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/gcm/au;->z:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/gcm/au;->E:J

    invoke-static {v2}, Lcom/google/android/gms/gcm/au;->a(I)Z

    move-result v3

    if-nez v3, :cond_24

    const/4 v3, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/android/gms/gcm/au;->w:Z

    if-nez v5, :cond_23

    if-eqz v3, :cond_23

    if-eqz v7, :cond_29

    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reconnect on network change "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v5, :cond_27

    const-string v2, " connected "

    :goto_e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v7, :cond_28

    const-string v2, " suspended"

    :goto_f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/b;->b(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/gcm/au;->a(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/gcm/au;->b(Z)V

    :goto_10
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/gcm/au;->v:J

    goto/16 :goto_0

    :cond_24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v8, v12, v8

    const-wide/16 v14, 0x4e20

    cmp-long v3, v8, v14

    if-gtz v3, :cond_25

    const/4 v3, 0x0

    goto :goto_d

    :cond_25
    sub-long v8, v12, v10

    const-wide/32 v10, 0xea60

    cmp-long v3, v8, v10

    if-gtz v3, :cond_26

    const/4 v3, 0x0

    goto :goto_d

    :cond_26
    const-string v3, "checkThrottleReconnect = true"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_d

    :cond_27
    const-string v2, " "

    goto :goto_e

    :cond_28
    const-string v2, ""

    goto :goto_f

    :cond_29
    const/4 v3, 0x0

    invoke-static {v2}, Lcom/google/android/gms/gcm/au;->a(I)Z

    move-result v2

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/gcm/au;->v:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_36

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/gcm/au;->v:J

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/gcm/au;->t:I

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-lez v2, :cond_36

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "networkStateChanged: mLastMobileNetworkOutageTs="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/gcm/au;->v:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", diff="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", use long delay"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/gcm/au;->b(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Network event while disconnected / throttling "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/gcm/au;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_2a

    const-string v2, " Long "

    :goto_12
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/gcm/au;->n:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/gcm/au;->a(Z)V

    goto/16 :goto_10

    :cond_2a
    const-string v2, " "

    goto :goto_12

    :cond_2b
    const-string v2, "GCM"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "networkStateChanged (no active network): , notify_network_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/gcm/au;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", notify_network_state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/gcm/au;->d:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    :cond_2c
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/gcm/au;->a(Landroid/net/NetworkInfo$State;I)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/gcm/au;->v:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/gcm/au;->d:Landroid/net/NetworkInfo$State;

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_2f

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/gcm/au;->D:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/gcm/au;->D:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-gez v2, :cond_2f

    const/4 v2, 0x1

    :goto_13
    if-nez v2, :cond_2d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/gcm/au;->v:J

    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v2}, Lcom/google/android/gms/gcm/b;->e()Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "GCM"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string v2, "========== network down, force close conn ========="

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/b;->b(I)V

    const-string v2, "Disconnect on network down"

    invoke-static {v2}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2f
    const/4 v2, 0x0

    goto :goto_13

    :cond_30
    const-string v2, "Network down, already disconnected"

    invoke-static {v2}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1260
    :cond_31
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1261
    const-string v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleAirplaneModeChanged: airplaneModeOn="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/gcm/au;->a(Ljava/lang/String;)V

    if-eqz v2, :cond_32

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/gcm/au;->D:J

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/gcm/au;->E:J

    goto/16 :goto_0

    :cond_32
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/gcm/au;->D:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/gcm/au;->E:J

    goto/16 :goto_0

    .line 1262
    :cond_33
    const-string v3, "com.google.android.intent.action.GCM_RECONNECT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    if-eqz v2, :cond_0

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/gcm/au;->C:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v2}, Lcom/google/android/gms/gcm/b;->f()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1268
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/gcm/au;->g()V

    goto/16 :goto_0

    .line 1271
    :cond_34
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/gcm/au;->m:Z

    .line 1272
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/gcm/au;->a(Z)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/gcm/au;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/gcm/ab;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/gcm/au;->L:Lcom/google/android/gms/gcm/g;

    iget-boolean v2, v2, Lcom/google/android/gms/gcm/g;->j:Z

    if-nez v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/gcm/au;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/gcm/ab;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_35
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/gcm/au;->h:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/gcm/au;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/google/android/gms/gcm/av;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/android/gms/gcm/av;-><init>(Lcom/google/android/gms/gcm/au;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_36
    move v2, v3

    goto/16 :goto_11
.end method
