.class public Lcom/google/android/location/reporting/service/InitializerService;
.super Lcom/google/android/location/reporting/b/k;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/location/reporting/config/h;

.field private b:Lcom/google/android/location/reporting/w;

.field private c:Lcom/google/android/location/reporting/service/i;

.field private d:Lcom/google/android/location/o/a;

.field private e:Lcom/google/android/location/reporting/service/d;

.field private f:Ljava/util/Map;

.field private g:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    const-string v0, "GCoreUlr-InitializerService"

    invoke-direct {p0, v0}, Lcom/google/android/location/reporting/b/k;-><init>(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/reporting/config/h;Lcom/google/android/location/reporting/w;Lcom/google/android/location/reporting/service/i;Lcom/google/android/location/o/a;Lcom/google/android/location/reporting/service/d;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 117
    const-string v0, "InitializerServiceTest"

    invoke-direct {p0, v0}, Lcom/google/android/location/reporting/b/k;-><init>(Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lcom/google/android/location/reporting/service/InitializerService;->a:Lcom/google/android/location/reporting/config/h;

    .line 119
    iput-object p2, p0, Lcom/google/android/location/reporting/service/InitializerService;->b:Lcom/google/android/location/reporting/w;

    .line 120
    iput-object p3, p0, Lcom/google/android/location/reporting/service/InitializerService;->c:Lcom/google/android/location/reporting/service/i;

    .line 121
    iput-object p4, p0, Lcom/google/android/location/reporting/service/InitializerService;->d:Lcom/google/android/location/o/a;

    .line 122
    iput-object p5, p0, Lcom/google/android/location/reporting/service/InitializerService;->e:Lcom/google/android/location/reporting/service/d;

    .line 123
    iput-object p6, p0, Lcom/google/android/location/reporting/service/InitializerService;->g:Landroid/content/Intent;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/reporting/service/InitializerService;->f:Ljava/util/Map;

    .line 125
    return-void
.end method

.method private a()I
    .locals 15

    .prologue
    .line 202
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/google/android/location/reporting/service/InitializerService;->g:Landroid/content/Intent;

    if-nez v1, :cond_2

    .line 204
    const-string v1, "GCoreUlr"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    const-string v1, "GCoreUlr"

    const-string v2, "Google Maps disabled, missing, or not integrated"

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    invoke-static {}, Lcom/google/android/location/reporting/b/j;->b()V

    move-object v7, v0

    .line 222
    :goto_0
    iget-object v2, p0, Lcom/google/android/location/reporting/service/InitializerService;->d:Lcom/google/android/location/o/a;

    iget-object v9, p0, Lcom/google/android/location/reporting/service/InitializerService;->f:Ljava/util/Map;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/reporting/GmmSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/location/reporting/GmmSettings;->b()Landroid/accounts/Account;

    move-result-object v1

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/reporting/GmmSettings;

    if-eqz v1, :cond_1

    const-string v4, "GCoreUlr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Maps reported both "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " and "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " for account "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/location/reporting/GmmSettings;->b()Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/location/reporting/b/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 209
    :cond_2
    const-string v1, "GCoreUlr"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 210
    const-string v1, "GCoreUlr"

    const-string v2, "Google Maps integrated, binding so we can read its values..."

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/reporting/service/InitializerService;->c:Lcom/google/android/location/reporting/service/i;

    iget-object v2, p0, Lcom/google/android/location/reporting/service/InitializerService;->g:Landroid/content/Intent;

    invoke-interface {v1, v2}, Lcom/google/android/location/reporting/service/i;->a(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 214
    invoke-static {}, Lcom/google/android/location/reporting/b/j;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 219
    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    .line 217
    const-string v2, "GCoreUlr"

    const-string v3, "Failed to retrieve GMM settings, proceeding without them"

    invoke-static {v2, v3, v1}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    invoke-static {v1}, Lcom/google/android/location/reporting/b/j;->c(Ljava/lang/Exception;)V

    move-object v7, v0

    goto :goto_0

    .line 222
    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Lcom/google/android/location/o/a;->a()[Landroid/accounts/Account;

    move-result-object v12

    array-length v13, v12

    const/4 v0, 0x0

    move v8, v0

    :goto_2
    if-ge v8, v13, :cond_6

    aget-object v14, v12, v8

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/a;

    if-nez v0, :cond_8

    invoke-static {v14}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing server pref for account "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Recently added?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/reporting/b/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/location/reporting/a;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/reporting/a;-><init>(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;III)V

    move-object v1, v0

    :goto_3
    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/reporting/GmmSettings;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/location/reporting/GmmSettings;

    invoke-direct {v0, v14}, Lcom/google/android/gms/location/reporting/GmmSettings;-><init>(Landroid/accounts/Account;)V

    invoke-static {v14, v0, v1}, Lcom/google/android/location/reporting/service/o;->a(Landroid/accounts/Account;Lcom/google/android/gms/location/reporting/GmmSettings;Lcom/google/android/location/reporting/a;)Lcom/google/android/location/reporting/config/i;

    move-result-object v0

    :goto_4
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    :cond_5
    invoke-static {v14, v0, v1}, Lcom/google/android/location/reporting/service/o;->a(Landroid/accounts/Account;Lcom/google/android/gms/location/reporting/GmmSettings;Lcom/google/android/location/reporting/a;)Lcom/google/android/location/reporting/config/i;

    move-result-object v0

    goto :goto_4

    :cond_6
    const-string v0, "GCoreUlr"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "computeStates(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/location/reporting/service/InitializerService;->a:Lcom/google/android/location/reporting/config/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "define("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/reporting/service/InitializerService;->f:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/google/android/location/reporting/config/h;->a(Ljava/lang/String;Ljava/lang/Iterable;)Z

    .line 224
    const/4 v0, 0x1

    return v0

    :cond_8
    move-object v1, v0

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/location/reporting/config/AccountConfig;)I
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/google/android/location/reporting/config/AccountConfig;->v()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/location/reporting/config/AccountConfig;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/location/reporting/config/AccountConfig;->s()Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/location/reporting/service/InitializerService;->a(Landroid/content/Context;ZZZ)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/location/reporting/config/ReportingConfig;)I
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/google/android/location/reporting/config/ReportingConfig;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/location/reporting/config/ReportingConfig;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/location/reporting/config/ReportingConfig;->f()Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/location/reporting/service/InitializerService;->a(Landroid/content/Context;ZZZ)I

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;ZZZ)I
    .locals 4

    .prologue
    .line 92
    if-eqz p3, :cond_2

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/location/reporting/service/InitializerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    invoke-static {p0, v0}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 95
    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 97
    :cond_2
    if-eqz p2, :cond_3

    const/4 v0, 0x1

    .line 98
    :goto_1
    const-string v1, "GCoreUlr"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipping init, initialization="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (eligible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", defined: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b()I
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 238
    .line 240
    iget-object v2, p0, Lcom/google/android/location/reporting/service/InitializerService;->d:Lcom/google/android/location/o/a;

    invoke-interface {v2}, Lcom/google/android/location/o/a;->a()[Landroid/accounts/Account;

    move-result-object v7

    array-length v8, v7

    move v6, v0

    move v4, v0

    move v2, v0

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v9, v7, v6

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/service/InitializerService;->b:Lcom/google/android/location/reporting/w;

    invoke-interface {v0, v9}, Lcom/google/android/location/reporting/w;->a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move v4, v2

    move v2, v3

    .line 260
    :goto_1
    iget-object v5, p0, Lcom/google/android/location/reporting/service/InitializerService;->f:Ljava/util/Map;

    invoke-interface {v5, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v11, v2

    move v2, v4

    move v4, v11

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    const-string v2, "GCoreUlr"

    const-string v5, "InitializerService can\'t get server values"

    invoke-static {v2, v5, v0}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    invoke-static {}, Lcom/google/android/location/reporting/a;->a()Lcom/google/android/location/reporting/a;

    move-result-object v2

    .line 248
    invoke-static {p0}, Lcom/google/android/gms/common/util/s;->a(Landroid/content/Context;)Z

    move-result v0

    .line 249
    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_2
    move-object v11, v2

    move v2, v4

    move v4, v0

    move-object v0, v11

    .line 259
    goto :goto_1

    :cond_0
    move v0, v1

    .line 249
    goto :goto_2

    .line 250
    :catch_1
    move-exception v0

    move-object v5, v0

    .line 251
    const-string v0, "GCoreUlr"

    const-string v10, "InitializerService can\'t get server values"

    invoke-static {v0, v10, v5}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    invoke-static {}, Lcom/google/android/location/reporting/a;->a()Lcom/google/android/location/reporting/a;

    move-result-object v0

    .line 253
    instance-of v10, v5, Lcom/google/android/gms/auth/af;

    if-nez v10, :cond_1

    instance-of v5, v5, Lcom/google/android/gms/auth/ag;

    if-eqz v5, :cond_6

    .line 257
    :cond_1
    const/4 v2, 0x5

    move v11, v4

    move v4, v2

    move v2, v11

    goto :goto_1

    .line 263
    :cond_2
    if-nez v4, :cond_4

    if-eqz v2, :cond_4

    .line 264
    const-string v0, "GCoreUlr"

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    const-string v0, "GCoreUlr"

    const-string v1, "Failed to read server settings for all accounts, try again later"

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_3
    :goto_3
    return v2

    .line 271
    :cond_4
    const-string v0, "GCoreUlr"

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 272
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initialized server settings: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/reporting/service/InitializerService;->f:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v2, v3

    .line 274
    goto :goto_3

    :cond_6
    move v11, v4

    move v4, v2

    move v2, v11

    goto :goto_1
.end method


# virtual methods
.method protected final a(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 147
    iget-object v1, p0, Lcom/google/android/location/reporting/service/InitializerService;->a:Lcom/google/android/location/reporting/config/h;

    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/h;->a()Lcom/google/android/location/reporting/config/ReportingConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/ReportingConfig;->f()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "GCoreUlr"

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleIntent(): should define is false; defined: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/ReportingConfig;->b()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; eligible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/ReportingConfig;->g()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/ReportingConfig;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/google/android/location/reporting/service/InitializerService;->e:Lcom/google/android/location/reporting/service/d;

    invoke-interface {v1, v0}, Lcom/google/android/location/reporting/service/d;->a(I)V

    .line 148
    return-void

    .line 147
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "GCoreUlr"

    invoke-static {v1, v3}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "GCoreUlr"

    const-string v2, "handleIntent() starting initialization"

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/location/reporting/service/InitializerService;->e:Lcom/google/android/location/reporting/service/d;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/google/android/location/reporting/service/d;->a(I)V

    invoke-direct {p0}, Lcom/google/android/location/reporting/service/InitializerService;->b()I

    move-result v1

    if-eq v1, v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/google/android/location/reporting/service/InitializerService;->a()I

    move-result v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lcom/google/android/location/reporting/b/k;->onCreate()V

    .line 131
    invoke-static {p0}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;)V

    .line 133
    invoke-static {p0}, Lcom/google/android/location/reporting/config/h;->a(Landroid/content/Context;)Lcom/google/android/location/reporting/config/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/service/InitializerService;->a:Lcom/google/android/location/reporting/config/h;

    .line 134
    new-instance v0, Lcom/google/android/location/reporting/u;

    invoke-direct {v0, p0}, Lcom/google/android/location/reporting/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/location/reporting/service/InitializerService;->b:Lcom/google/android/location/reporting/w;

    .line 135
    new-instance v0, Lcom/google/android/location/reporting/service/r;

    invoke-direct {v0, p0}, Lcom/google/android/location/reporting/service/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/location/reporting/service/InitializerService;->c:Lcom/google/android/location/reporting/service/i;

    .line 136
    new-instance v0, Lcom/google/android/location/o/b;

    invoke-direct {v0, p0}, Lcom/google/android/location/o/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/location/reporting/service/InitializerService;->d:Lcom/google/android/location/o/a;

    .line 137
    new-instance v0, Lcom/google/android/location/reporting/service/c;

    invoke-direct {v0, p0}, Lcom/google/android/location/reporting/service/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/location/reporting/service/InitializerService;->e:Lcom/google/android/location/reporting/service/d;

    .line 139
    invoke-virtual {p0}, Lcom/google/android/location/reporting/service/InitializerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/google/android/gms/location/reporting/a/d;->a(Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/service/InitializerService;->g:Landroid/content/Intent;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/reporting/service/InitializerService;->f:Ljava/util/Map;

    .line 143
    return-void
.end method
