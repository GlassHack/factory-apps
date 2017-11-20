.class public abstract Lcom/google/android/gms/common/server/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final i:Ljava/util/HashMap;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Z

.field final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Ljava/lang/String;

.field private final h:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/server/a;->i:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/server/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    iput-object p1, p0, Lcom/google/android/gms/common/server/a;->a:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/google/android/gms/common/server/a;->g:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/server/a;->c:Ljava/lang/String;

    .line 90
    iput-boolean p4, p0, Lcom/google/android/gms/common/server/a;->b:Z

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/server/a;->f:Z

    .line 93
    iput-object p6, p0, Lcom/google/android/gms/common/server/a;->d:Ljava/lang/String;

    .line 94
    iput-object p7, p0, Lcom/google/android/gms/common/server/a;->e:Ljava/lang/String;

    .line 95
    return-void
.end method

.method protected static a(ILjava/util/Map;)I
    .locals 2

    .prologue
    .line 372
    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    .line 373
    const-string v0, "X-HTTP-Method-Override"

    const-string v1, "PATCH"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const/4 p0, 0x1

    .line 376
    :cond_0
    return p0
.end method

.method public static a(Lcom/android/d/aa;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 287
    iget-object v1, p0, Lcom/android/d/aa;->a:Lcom/android/d/m;

    if-nez v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v0

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/android/d/aa;->a:Lcom/android/d/m;

    iget v1, v1, Lcom/android/d/m;->a:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_0

    .line 294
    invoke-static {p0}, Lcom/google/android/gms/common/server/b/c;->a(Lcom/android/d/aa;)Ljava/lang/String;

    move-result-object v1

    .line 295
    if-eqz v1, :cond_0

    .line 298
    const-string v2, "authError"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "expired"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c(Lcom/google/android/gms/common/server/ClientContext;)Lcom/google/android/gms/common/server/a/a;
    .locals 1

    .prologue
    .line 309
    new-instance v0, Lcom/google/android/gms/common/server/a/a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/server/a/a;-><init>(Lcom/google/android/gms/common/server/ClientContext;)V

    return-object v0
.end method


# virtual methods
.method protected a()Lcom/android/d/s;
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/app/GmsApplication;->c()Lcom/android/d/s;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/server/ClientContext;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 330
    invoke-static {p1}, Lcom/google/android/gms/common/server/a;->c(Lcom/google/android/gms/common/server/ClientContext;)Lcom/google/android/gms/common/server/a/a;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/google/android/gms/common/server/a;->a:Landroid/content/Context;

    invoke-interface {v0}, Lcom/google/android/gms/common/server/a/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 250
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 251
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    iget-object v0, p0, Lcom/google/android/gms/common/server/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "&"

    .line 254
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "trace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/server/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    iget-object v0, p0, Lcom/google/android/gms/common/server/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 256
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 253
    :cond_0
    const-string v0, "?"

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/google/android/gms/common/server/ClientContext;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3

    .prologue
    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 186
    iget-object v1, p0, Lcom/google/android/gms/common/server/a;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    const-string v1, "X-Google-Backend-Override"

    iget-object v2, p0, Lcom/google/android/gms/common/server/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_0
    return-object v0
.end method

.method public a(Lcom/android/d/p;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 246
    new-instance v0, Lcom/google/android/gms/common/server/b;

    iget-object v1, p0, Lcom/google/android/gms/common/server/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/common/server/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/d/p;->a(Lcom/android/d/x;)Lcom/android/d/p;

    .line 247
    return-void
.end method

.method protected final a(Ljava/util/concurrent/ExecutionException;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 269
    instance-of v1, v0, Lcom/android/d/aa;

    if-eqz v1, :cond_1

    .line 270
    check-cast v0, Lcom/android/d/aa;

    .line 272
    invoke-static {v0}, Lcom/google/android/gms/common/server/a;->a(Lcom/android/d/aa;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/google/android/gms/common/server/a;->a:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/google/android/gms/auth/r;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 275
    :cond_0
    throw v0

    .line 277
    :cond_1
    return-void
.end method

.method public b(Lcom/google/android/gms/common/server/ClientContext;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    const-string v0, "auth_token"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/server/ClientContext;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    :goto_0
    return-object v0

    .line 349
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/ClientContext;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 352
    const/4 v0, 0x0

    goto :goto_0

    .line 354
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/common/server/a;->c(Lcom/google/android/gms/common/server/ClientContext;)Lcom/google/android/gms/common/server/a/a;

    move-result-object v0

    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/server/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/server/a/a;->a(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 360
    new-instance v1, Lcom/android/d/aa;

    invoke-direct {v1, v0}, Lcom/android/d/aa;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
