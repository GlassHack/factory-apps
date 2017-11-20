.class public Lcom/google/android/gms/auth/be/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:Ljava/lang/String;

.field private static volatile h:Lcom/google/android/gms/auth/be/h;

.field private static volatile i:Z


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lorg/apache/http/client/HttpClient;

.field public c:Landroid/accounts/AccountManager;

.field public d:Ljava/lang/String;

.field public final e:Ljava/util/LinkedList;

.field f:Lcom/google/android/gms/auth/be/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/be/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/h;->g:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/accounts/AccountManager;Lorg/apache/http/client/HttpClient;)V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/h;->e:Ljava/util/LinkedList;

    .line 157
    iput-object p1, p0, Lcom/google/android/gms/auth/be/h;->a:Landroid/content/Context;

    .line 158
    iput-object p2, p0, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    .line 159
    iput-object p3, p0, Lcom/google/android/gms/auth/be/h;->b:Lorg/apache/http/client/HttpClient;

    .line 160
    return-void
.end method

.method public static declared-synchronized a()Lcom/google/android/gms/auth/be/h;
    .locals 7

    .prologue
    .line 75
    const-class v1, Lcom/google/android/gms/auth/be/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/be/h;->h:Lcom/google/android/gms/auth/be/h;

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v2

    .line 77
    new-instance v3, Lcom/google/android/gms/auth/be/h;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    sget-object v0, Lcom/google/android/gms/common/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v5, 0x0

    const-string v6, "GoogleAuth/1.4"

    invoke-static {v2, v0, v5, v6}, Lcom/google/android/gms/auth/be/h;->a(Landroid/content/Context;ZZLjava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-direct {v3, v2, v4, v0}, Lcom/google/android/gms/auth/be/h;-><init>(Landroid/content/Context;Landroid/accounts/AccountManager;Lorg/apache/http/client/HttpClient;)V

    sput-object v3, Lcom/google/android/gms/auth/be/h;->h:Lcom/google/android/gms/auth/be/h;

    .line 82
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/be/h;->h:Lcom/google/android/gms/auth/be/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;ZZLjava/lang/String;)Lorg/apache/http/client/HttpClient;
    .locals 6

    .prologue
    const/16 v5, 0x7530

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 100
    sget-object v0, Lcom/google/android/gms/common/security/a;->b:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 104
    sget-object v0, Lcom/google/android/gms/auth/b/a;->B:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    new-instance v2, Lcom/google/android/gms/http/GoogleHttpClient;

    invoke-direct {v2, p0, p3, p2, v3}, Lcom/google/android/gms/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 111
    invoke-static {}, Lcom/google/android/gms/auth/c/a;->a()Lcom/google/android/gms/auth/c/a;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/auth/c/a;->a(Landroid/content/Context;Lcom/google/android/gms/http/GoogleHttpClient;)Ljava/security/PublicKey;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/auth/be/h;->i:Z

    .line 115
    if-eqz p1, :cond_0

    .line 116
    sget-object v0, Lcom/android/d/ab;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v4, v1}, Lcom/google/android/gms/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;IZ)V

    :cond_0
    move-object v0, v2

    .line 138
    :cond_1
    :goto_1
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 139
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 140
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 141
    const-wide/16 v2, 0x7530

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 142
    return-object v0

    .line 113
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_3
    new-instance v0, Lcom/google/android/d/c/a;

    invoke-direct {v0, p0, p3, p2, v3}, Lcom/google/android/d/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 131
    if-eqz p1, :cond_1

    .line 132
    sget-object v2, Lcom/android/d/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v4, v1}, Lcom/google/android/d/c/a;->a(Ljava/lang/String;IZ)V

    goto :goto_1
.end method

.method private static a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 239
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 242
    :try_start_0
    sget-object v1, Lcom/google/android/gms/auth/be/w;->d:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/auth/firstparty/shared/k;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/k;
    .locals 4

    .prologue
    .line 322
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 324
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 325
    new-instance v0, Lcom/google/android/gms/common/b/a;

    iget-object v2, p0, Lcom/google/android/gms/auth/be/h;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/b/a;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/google/android/gms/auth/be/v;->g:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/v;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    :cond_0
    const-string v2, "device_country"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/auth/be/v;->m:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/v;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    sget-object v2, Lcom/google/android/gms/auth/be/v;->n:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/v;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    sget-object v0, Lcom/google/android/gms/auth/be/v;->o:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 327
    sget-object v0, Lcom/google/android/gms/auth/be/v;->z:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 328
    sget-object v0, Lcom/google/android/gms/auth/be/v;->y:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 329
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 333
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/auth/be/h;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 336
    sget-object v0, Lcom/google/android/gms/auth/b/a;->c:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 337
    const-string v3, "checkRealName"

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/google/android/gms/auth/be/h;->b(Ljava/lang/String;Lorg/json/JSONStringer;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkRealName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Res: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/be/h;->a(Ljava/lang/String;)V

    .line 339
    invoke-static {v0}, Lcom/google/android/gms/auth/a/h;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v0

    .line 340
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->Q:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->P:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->O:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->N:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-ne v0, v1, :cond_2

    .line 355
    :cond_1
    :goto_0
    return-object v0

    .line 347
    :cond_2
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONStringer;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 194
    :try_start_0
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p2}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-direct {v2, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/auth/be/h;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lorg/apache/http/Header;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    return-object v0

    .line 198
    :catch_0
    move-exception v0

    throw v0
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 396
    new-instance v0, Lcom/google/android/gms/common/b/a;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/h;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/b/a;-><init>(Landroid/content/Context;)V

    .line 397
    invoke-virtual {v0}, Lcom/google/android/gms/common/b/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_0

    .line 399
    const-string v1, "device"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_0
    if-eqz p2, :cond_1

    .line 402
    const-string v0, "app"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :cond_1
    return-object p1
.end method

.method public final a(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lorg/apache/http/Header;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 259
    .line 260
    iget-object v0, p0, Lcom/google/android/gms/auth/be/h;->f:Lcom/google/android/gms/auth/be/n;

    if-eqz v0, :cond_6

    .line 261
    iget-object v0, p0, Lcom/google/android/gms/auth/be/h;->f:Lcom/google/android/gms/auth/be/n;

    iget-object v0, v0, Lcom/google/android/gms/auth/be/n;->a:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/auth/be/m;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/google/android/gms/auth/be/m;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/be/m;->a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    const-string v0, "GLSUser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Test result: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/apache/http/message/BasicHttpResponse;

    new-instance v1, Lorg/apache/http/message/BasicStatusLine;

    new-instance v3, Lorg/apache/http/ProtocolVersion;

    const-string v4, "HTTP"

    invoke-direct {v3, v4, v5, v5}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0xc8

    const-string v5, ""

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 263
    :goto_1
    if-nez v0, :cond_5

    .line 265
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/auth/a/b;->a(I)V

    .line 267
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v2, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 269
    if-eqz p3, :cond_2

    .line 270
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 271
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 294
    :catch_0
    move-exception v0

    .line 295
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/auth/a/b;->a()V

    throw v0

    .line 261
    :cond_0
    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    goto/16 :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 274
    :cond_2
    if-eqz p3, :cond_3

    .line 275
    :try_start_2
    invoke-virtual {v2, p3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    .line 278
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 279
    new-instance v1, Lcom/google/android/gms/auth/d/b;

    iget-object v0, p0, Lcom/google/android/gms/auth/be/h;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/d/b;-><init>(Landroid/content/Context;)V

    .line 280
    sget-boolean v0, Lcom/google/android/gms/auth/be/h;->i:Z

    iput-boolean v0, v1, Lcom/google/android/gms/auth/d/b;->d:Z

    .line 281
    iput-object p1, v1, Lcom/google/android/gms/auth/d/b;->e:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 284
    iget-object v0, p0, Lcom/google/android/gms/auth/be/h;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v6

    iput-wide v2, v1, Lcom/google/android/gms/auth/d/b;->f:J

    .line 286
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 287
    if-eqz v2, :cond_4

    .line 288
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    iput v2, v1, Lcom/google/android/gms/auth/d/b;->g:I

    .line 290
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/auth/d/b;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 292
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 297
    invoke-static {}, Lcom/google/android/gms/auth/a/b;->a()V

    .line 301
    :cond_5
    return-object v0

    .line 292
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string v0, "Token=[^&\n;]*"

    const-string v1, "Token=SECRET"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v1, "LSID=[^&\n;]*"

    const-string v2, "LSID=SECRET"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    const-string v1, "SID=[^&\n;]*"

    const-string v2, "SID=SECRET"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v1, "auth=[^&\n;]*"

    const-string v2, "auth=SECRET"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    const-string v1, "EncryptedPasswd=[^&\n;]*"

    const-string v2, "EncryptedPasswd=SECRET"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    const-string v1, "Passwd=[^&\n;]*"

    const-string v2, "Passwd=SECRET"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string v1, "password\":\"[^&\n;,]*\""

    const-string v2, "password\":\"SECRET\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string v1, "GLSUser"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    const-string v1, "GLSUser"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/auth/be/h;->e:Ljava/util/LinkedList;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/auth/be/h;->e:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/google/android/gms/auth/be/h;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x28

    if-le v0, v2, :cond_2

    .line 183
    iget-object v0, p0, Lcom/google/android/gms/auth/be/h;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 185
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

.method public final b(Ljava/lang/String;Lorg/json/JSONStringer;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x2

    .line 210
    const-string v1, ""

    .line 212
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/auth/be/h;->a(Ljava/lang/String;Lorg/json/JSONStringer;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 213
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    :goto_0
    return-object v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    const-string v2, "GLSUser"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    const-string v2, "%s IOException while making json http request. Json: %s"

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/google/android/gms/auth/be/h;->g:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 221
    const-string v3, "GLSUser"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Json request failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/be/h;->a(Ljava/lang/String;)V

    .line 224
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->m:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-static {v0}, Lcom/google/android/gms/auth/be/h;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 225
    :catch_1
    move-exception v0

    .line 226
    const-string v2, "GLSUser"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    const-string v2, "%s JSONException while making json http request. Json: %s"

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/google/android/gms/auth/be/h;->g:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 231
    const-string v3, "GLSUser"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Json request failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/be/h;->a(Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->m:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-static {v0}, Lcom/google/android/gms/auth/be/h;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method
