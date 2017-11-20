.class public final Lcom/google/android/gms/common/analytics/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Set;

.field private static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    new-instance v1, Ljava/util/HashSet;

    sget-object v0, Lcom/google/android/gms/common/a/a;->d:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/google/android/gms/common/analytics/e;->a:Ljava/util/Set;

    .line 64
    sget-object v0, Lcom/google/android/gms/common/a/a;->c:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/common/analytics/e;->b:J

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lcom/google/android/gms/common/analytics/a/d;

    invoke-direct {v0}, Lcom/google/android/gms/common/analytics/a/d;-><init>()V

    .line 127
    invoke-static {}, Lcom/google/android/gms/common/analytics/e;->e()Lcom/google/android/gms/common/analytics/a/c;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/analytics/a/d;->a:Lcom/google/android/gms/common/analytics/a/c;

    .line 128
    const-string v1, "install"

    invoke-static {v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/analytics/e;->a(Ljava/lang/String;[B)V

    .line 131
    invoke-static {}, Lcom/google/android/gms/playlog/uploader/a;->a()Lcom/google/android/gms/playlog/uploader/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/uploader/a;->c()V

    .line 132
    return-void
.end method

.method private static a(Ljava/lang/String;[B)V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Lcom/google/android/gms/playlog/a;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/playlog/a;-><init>(Landroid/content/Context;I)V

    .line 193
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/android/gms/playlog/a;->a(Ljava/lang/String;[B[Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Lcom/google/android/gms/playlog/a;->a()V

    .line 195
    return-void
.end method

.method public static b()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    new-instance v4, Lcom/google/android/gms/common/analytics/a/d;

    invoke-direct {v4}, Lcom/google/android/gms/common/analytics/a/d;-><init>()V

    .line 136
    invoke-static {}, Lcom/google/android/gms/common/analytics/e;->e()Lcom/google/android/gms/common/analytics/a/c;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/common/analytics/a/d;->a:Lcom/google/android/gms/common/analytics/a/c;

    .line 137
    new-instance v5, Lcom/google/android/gms/common/analytics/a/g;

    invoke-direct {v5}, Lcom/google/android/gms/common/analytics/a/g;-><init>()V

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    const-string v3, "location"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/app/GmsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/common/analytics/a/g;->a:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    const-string v3, "location"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/app/GmsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/common/analytics/a/g;->b:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    new-instance v6, Lcom/google/android/gms/common/analytics/a/e;

    invoke-direct {v6}, Lcom/google/android/gms/common/analytics/a/e;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/common/util/a;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/common/analytics/a/e;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v0, v8, [I

    iput-object v0, v6, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    move v3, v2

    :goto_3
    if-ge v3, v8, :cond_4

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    :goto_4
    const-string v9, "com.google.android.gms.people"

    invoke-static {v0, v9}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    or-int/lit8 v1, v1, 0x1

    :cond_0
    iget-object v0, v6, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    aput v1, v0, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v3, "network"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    iput-object v6, v5, Lcom/google/android/gms/common/analytics/a/g;->c:Lcom/google/android/gms/common/analytics/a/e;

    iput-object v5, v4, Lcom/google/android/gms/common/analytics/a/d;->b:Lcom/google/android/gms/common/analytics/a/g;

    .line 138
    const-string v0, "system_health"

    invoke-static {v4}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/analytics/e;->a(Ljava/lang/String;[B)V

    .line 139
    return-void

    :cond_5
    move v1, v2

    goto :goto_4
.end method

.method public static c()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    .line 142
    new-instance v0, Lcom/google/android/gms/clearcut/a;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/clearcut/a;-><init>(Landroid/content/Context;)V

    .line 144
    new-instance v1, Lcom/google/android/gms/common/analytics/a/d;

    invoke-direct {v1}, Lcom/google/android/gms/common/analytics/a/d;-><init>()V

    .line 145
    invoke-static {}, Lcom/google/android/gms/common/analytics/e;->e()Lcom/google/android/gms/common/analytics/a/c;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/common/analytics/a/d;->a:Lcom/google/android/gms/common/analytics/a/c;

    .line 146
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/common/analytics/e;->a:Ljava/util/Set;

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/common/internal/am;->a(Landroid/content/Context;Lcom/google/android/gms/common/analytics/a/d;Ljava/util/Set;)V

    .line 148
    invoke-virtual {v0, v1}, Lcom/google/android/gms/clearcut/a;->a(Lcom/google/protobuf/nano/j;)Lcom/google/android/gms/clearcut/c;

    move-result-object v7

    const-string v0, "service_connections"

    iget-object v1, v7, Lcom/google/android/gms/clearcut/c;->e:Lcom/google/n/a/b/a/a/i;

    iput-object v0, v1, Lcom/google/n/a/b/a/a/i;->b:Ljava/lang/String;

    iget-object v0, v7, Lcom/google/android/gms/clearcut/c;->e:Lcom/google/n/a/b/a/a/i;

    iput v6, v0, Lcom/google/n/a/b/a/a/i;->c:I

    .line 151
    new-instance v0, Lcom/google/android/gms/common/api/k;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/clearcut/a;->c:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/k;->a()Lcom/google/android/gms/common/api/j;

    move-result-object v8

    .line 154
    invoke-interface {v8}, Lcom/google/android/gms/common/api/j;->a()V

    .line 155
    iget-boolean v0, v7, Lcom/google/android/gms/clearcut/c;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean v6, v7, Lcom/google/android/gms/clearcut/c;->f:Z

    iget-object v0, v7, Lcom/google/android/gms/clearcut/c;->g:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->g(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/e;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/clearcut/LogEventParcelable;

    new-instance v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v1, v7, Lcom/google/android/gms/clearcut/c;->g:Lcom/google/android/gms/clearcut/a;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/a;->e(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/google/android/gms/clearcut/c;->g:Lcom/google/android/gms/clearcut/a;

    invoke-static {v2}, Lcom/google/android/gms/clearcut/a;->f(Lcom/google/android/gms/clearcut/a;)I

    move-result v2

    iget v3, v7, Lcom/google/android/gms/clearcut/c;->a:I

    iget-object v4, v7, Lcom/google/android/gms/clearcut/c;->b:Ljava/lang/String;

    iget-object v5, v7, Lcom/google/android/gms/clearcut/c;->c:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v7, Lcom/google/android/gms/clearcut/c;->e:Lcom/google/n/a/b/a/a/i;

    iget-object v2, v7, Lcom/google/android/gms/clearcut/c;->d:Lcom/google/android/gms/clearcut/d;

    invoke-direct {v10, v0, v1, v2}, Lcom/google/android/gms/clearcut/LogEventParcelable;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/n/a/b/a/a/i;Lcom/google/android/gms/clearcut/d;)V

    invoke-interface {v9, v8, v10}, Lcom/google/android/gms/clearcut/e;->a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/y;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/analytics/f;

    invoke-direct {v1, v8}, Lcom/google/android/gms/common/analytics/f;-><init>(Lcom/google/android/gms/common/api/j;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/y;->a(Lcom/google/android/gms/common/api/ab;)V

    .line 162
    return-void
.end method

.method public static d()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 184
    sget-wide v2, Lcom/google/android/gms/common/analytics/e;->b:J

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/google/android/gms/common/analytics/CoreAnalyticsAlarmReceiver;

    invoke-direct {v1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "type"

    const-string v5, "system_health"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-static {v0, v6, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 185
    return-void
.end method

.method private static e()Lcom/google/android/gms/common/analytics/a/c;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lcom/google/android/gms/common/analytics/a/c;

    invoke-direct {v0}, Lcom/google/android/gms/common/analytics/a/c;-><init>()V

    .line 72
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/analytics/a/c;->a:Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/google/android/gms/common/util/w;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/analytics/a/c;->b:Ljava/lang/Long;

    .line 75
    invoke-static {}, Lcom/google/android/gms/common/util/w;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/analytics/a/c;->c:Ljava/lang/Integer;

    .line 76
    invoke-static {}, Lcom/google/android/gms/common/util/w;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/analytics/a/c;->d:Ljava/lang/Integer;

    .line 77
    invoke-static {}, Lcom/google/android/gms/common/util/w;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/analytics/a/c;->e:Ljava/lang/Integer;

    .line 78
    new-instance v1, Lcom/google/android/gms/common/analytics/a/h;

    invoke-direct {v1}, Lcom/google/android/gms/common/analytics/a/h;-><init>()V

    const-string v2, "java.vm.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, v1, Lcom/google/android/gms/common/analytics/a/h;->a:Ljava/lang/String;

    :cond_0
    const-string v2, "java.vm.vendor"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v2, v1, Lcom/google/android/gms/common/analytics/a/h;->b:Ljava/lang/String;

    :cond_1
    const-string v2, "java.vm.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iput-object v2, v1, Lcom/google/android/gms/common/analytics/a/h;->c:Ljava/lang/String;

    :cond_2
    const-string v2, "java.vm.specification.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iput-object v2, v1, Lcom/google/android/gms/common/analytics/a/h;->d:Ljava/lang/String;

    :cond_3
    const-string v2, "java.vm.specification.vendor"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iput-object v2, v1, Lcom/google/android/gms/common/analytics/a/h;->e:Ljava/lang/String;

    :cond_4
    const-string v2, "java.vm.specification.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iput-object v2, v1, Lcom/google/android/gms/common/analytics/a/h;->f:Ljava/lang/String;

    :cond_5
    iput-object v1, v0, Lcom/google/android/gms/common/analytics/a/c;->f:Lcom/google/android/gms/common/analytics/a/h;

    .line 97
    return-object v0
.end method
