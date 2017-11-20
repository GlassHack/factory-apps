.class public final Lcom/google/android/gms/gcm/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/a/b;

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static final e:Lcom/google/android/gms/common/a/b;

.field private static final f:Lcom/google/android/gms/common/a/b;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 39
    const-string v0, "gcm_enable_gtalk_proxy"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/ar;->a:Lcom/google/android/gms/common/a/b;

    .line 42
    sput-boolean v1, Lcom/google/android/gms/gcm/ar;->b:Z

    .line 46
    sput-boolean v1, Lcom/google/android/gms/gcm/ar;->c:Z

    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/gcm/ar;->d:Z

    .line 53
    const-string v0, "gcm_gtalk_disable_period"

    const-wide/32 v2, 0x93a80

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/ar;->e:Lcom/google/android/gms/common/a/b;

    .line 57
    const-string v0, "gcm_gtalk_used_update_period"

    const-wide/32 v2, 0xa8c0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/ar;->f:Lcom/google/android/gms/common/a/b;

    .line 60
    const-string v0, "gtalk_last_used"

    sput-object v0, Lcom/google/android/gms/gcm/ar;->g:Ljava/lang/String;

    .line 63
    const-string v0, "gtalk_proxy_switch_gms"

    sput-object v0, Lcom/google/android/gms/gcm/ar;->h:Ljava/lang/String;

    .line 66
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/google/android/gms/gcm/ar;->i:J

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 122
    sget-object v0, Lcom/google/android/gms/gcm/ar;->f:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    .line 123
    sget-wide v4, Lcom/google/android/gms/gcm/ar;->i:J

    sub-long v4, v2, v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    .line 124
    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/gcm/ar;->a(Landroid/content/SharedPreferences;J)V

    .line 126
    :cond_0
    sget-boolean v0, Lcom/google/android/gms/gcm/ar;->d:Z

    if-nez v0, :cond_1

    .line 127
    const-string v0, "GCM"

    const-string v1, "GTalk used, re-enabling GSF"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/gcm/ar;->d:Z

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/gcm/GcmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 132
    :cond_1
    return-void
.end method

.method static a(Landroid/content/Context;Z)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-static {}, Lcom/google/android/gms/gcm/ar;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    sget-boolean v0, Lcom/google/android/gms/gcm/ar;->b:Z

    if-nez v0, :cond_5

    .line 76
    if-nez p1, :cond_3

    .line 77
    sget-object v0, Lcom/google/android/gms/gcm/ar;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/gcm/ar;->c:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/gcm/ar;->g:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/google/android/gms/gcm/ar;->i:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/gcm/ar;->a(Landroid/content/SharedPreferences;J)V

    :cond_2
    :goto_1
    sget-boolean v0, Lcom/google/android/gms/gcm/ar;->c:Z

    invoke-static {p0, v0}, Lcom/google/android/gms/gcm/ar;->c(Landroid/content/Context;Z)V

    .line 79
    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/gcm/ar;->b:Z

    goto :goto_0

    .line 77
    :cond_4
    sget-object v0, Lcom/google/android/gms/gcm/ar;->e:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sget-wide v6, Lcom/google/android/gms/gcm/ar;->i:J

    sub-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const-string v0, "GCM"

    const-string v2, "GTalk not used, disabling GSF"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/google/android/gms/gcm/ar;->d:Z

    goto :goto_1

    .line 82
    :cond_5
    sget-boolean v2, Lcom/google/android/gms/gcm/ar;->c:Z

    .line 83
    if-eqz p1, :cond_7

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/google/android/gms/gcm/ar;->c:Z

    .line 84
    if-nez v2, :cond_6

    sget-boolean v0, Lcom/google/android/gms/gcm/ar;->c:Z

    if-eqz v0, :cond_6

    .line 86
    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/gcm/ar;->a(Landroid/content/SharedPreferences;J)V

    .line 89
    :cond_6
    sget-boolean v0, Lcom/google/android/gms/gcm/ar;->c:Z

    if-eq v2, v0, :cond_0

    .line 90
    sget-boolean v0, Lcom/google/android/gms/gcm/ar;->c:Z

    invoke-static {p0, v0}, Lcom/google/android/gms/gcm/ar;->c(Landroid/content/Context;Z)V

    goto :goto_0

    .line 83
    :cond_7
    sget-object v0, Lcom/google/android/gms/gcm/ar;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2
.end method

.method private static a(Landroid/content/SharedPreferences;J)V
    .locals 3

    .prologue
    .line 177
    const-string v0, "GCM"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "GCM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting GTalk last used timestamp to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/gcm/ar;->g:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    sput-wide p1, Lcom/google/android/gms/gcm/ar;->i:J

    .line 182
    return-void
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/google/android/gms/gcm/ar;->c:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/gcm/ar;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-static {}, Lcom/google/android/gms/gcm/ar;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    sget-object v1, Lcom/google/android/gms/gcm/ar;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eq p1, v1, :cond_0

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/gcm/ar;->h:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 148
    new-instance v1, Lcom/google/android/gms/gcm/b/b;

    invoke-direct {v1}, Lcom/google/android/gms/gcm/b/b;-><init>()V

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/b/b;->a(I)Lcom/google/android/gms/gcm/b/b;

    move-result-object v0

    .line 150
    new-instance v1, Lcom/google/android/gms/gcm/b/c;

    invoke-direct {v1}, Lcom/google/android/gms/gcm/b/c;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/b/c;->a(Lcom/google/android/gms/gcm/b/b;)Lcom/google/android/gms/gcm/b/c;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/google/android/gms/playlog/a;

    const/16 v2, 0x2b

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/playlog/a;-><init>(Landroid/content/Context;I)V

    .line 153
    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/b/c;->g()[B

    move-result-object v0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/playlog/a;->a(Ljava/lang/String;[B[Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1}, Lcom/google/android/gms/playlog/a;->a()V

    goto :goto_0

    .line 148
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static b()Z
    .locals 2

    .prologue
    .line 160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    .line 165
    const-string v0, "GCM"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "GCM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting GTalkProxyService enable state to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 171
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 172
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/gms/gcm/ProxyGTalkService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 174
    return-void

    .line 169
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
