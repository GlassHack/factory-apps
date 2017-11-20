.class public final Lcom/google/android/gms/analytics/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/analytics/internal/i;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/apache/http/client/HttpClient;

.field private final c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/google/android/gms/analytics/internal/e;

.field private j:Lcom/google/android/gms/analytics/internal/f;

.field private k:Ljava/util/Set;

.field private l:Z

.field private m:J


# direct methods
.method constructor <init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/c;->k:Ljava/util/Set;

    .line 84
    iput-boolean v8, p0, Lcom/google/android/gms/analytics/internal/c;->l:Z

    .line 89
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/c;->c:Landroid/content/Context;

    .line 90
    const-string v0, "GoogleAnalytics"

    const-string v1, "3.0"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/internal/v;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v6, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/c;->a:Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/c;->b:Lorg/apache/http/client/HttpClient;

    .line 99
    return-void
.end method

.method private static a(Ljava/util/List;I)I
    .locals 12

    .prologue
    const-wide/16 v6, 0x0

    .line 128
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const/4 v5, 0x0

    .line 143
    :cond_0
    return v5

    .line 133
    :cond_1
    add-int/lit8 v4, p1, -0x1

    move-wide v2, v6

    move v5, p1

    :goto_0
    if-lez v4, :cond_0

    .line 134
    add-int/lit8 v0, v4, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/l;

    .line 135
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/internal/l;

    .line 136
    iget-wide v8, v0, Lcom/google/android/gms/analytics/internal/l;->c:J

    .line 137
    iget-wide v0, v1, Lcom/google/android/gms/analytics/internal/l;->c:J

    .line 138
    cmp-long v10, v8, v6

    if-eqz v10, :cond_2

    cmp-long v10, v0, v6

    if-eqz v10, :cond_2

    sub-long v10, v0, v8

    cmp-long v10, v10, v2

    if-lez v10, :cond_2

    .line 139
    sub-long/2addr v0, v8

    move v2, v4

    .line 133
    :goto_1
    add-int/lit8 v4, v4, -0x1

    move v5, v2

    move-wide v2, v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    move v2, v5

    goto :goto_1
.end method

.method private static a(Lcom/google/android/gms/analytics/internal/l;Ljava/util/List;Lcom/google/android/gms/analytics/internal/e;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 298
    sget-object v0, Lcom/google/android/gms/analytics/internal/e;->a:Lcom/google/android/gms/analytics/internal/e;

    if-ne p2, v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/l;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    .line 302
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 309
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    .line 327
    :goto_1
    return-object v0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/l;->a:Ljava/lang/String;

    goto :goto_0

    .line 309
    :cond_2
    invoke-static {p0, v2, v3}, Lcom/google/android/gms/analytics/internal/m;->a(Lcom/google/android/gms/analytics/internal/l;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 314
    :cond_3
    const-string v1, ""

    .line 315
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 317
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 318
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Lcom/google/android/gms/analytics/internal/l;)Ljava/net/URL;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 636
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/l;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 645
    :goto_0
    return-object v0

    .line 640
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/l;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 643
    :try_start_1
    new-instance v2, Ljava/net/URL;

    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->k:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    goto :goto_0

    .line 645
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/analytics/internal/r;Lorg/apache/http/HttpHost;)V
    .locals 6

    .prologue
    .line 529
    const-string v0, "_bs"

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/c;->i:Lcom/google/android/gms/analytics/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/internal/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v0, "_cs"

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/c;->j:Lcom/google/android/gms/analytics/internal/f;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/internal/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-boolean v0, p1, Lcom/google/android/gms/analytics/internal/r;->c:Z

    if-nez v0, :cond_0

    const-string v1, ""

    .line 532
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 546
    :goto_1
    return-void

    .line 531
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/analytics/internal/r;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/google/android/gms/analytics/internal/r;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/analytics/internal/r;->a:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/analytics/internal/r;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/analytics/internal/r;->b:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 536
    :cond_3
    if-nez p2, :cond_4

    .line 538
    :try_start_0
    new-instance v3, Ljava/net/URL;

    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->k:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 539
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v4, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_4
    const/4 v3, 0x1

    sget-object v5, Lcom/google/android/gms/analytics/internal/f;->a:Lcom/google/android/gms/analytics/internal/f;

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/c;->a(Ljava/lang/String;Lorg/apache/http/HttpHost;ILcom/google/android/gms/analytics/internal/r;Lcom/google/android/gms/analytics/internal/f;)Z

    goto/16 :goto_1

    .line 541
    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_4
    move-object v2, p2

    goto :goto_4
.end method

.method private static a(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 6

    .prologue
    .line 594
    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->B:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 596
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 597
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 602
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 603
    if-eqz v0, :cond_1

    .line 604
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 605
    if-lez v2, :cond_1

    .line 606
    new-array v2, v2, [B

    .line 607
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 608
    const-string v0, "POST:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->b(Ljava/lang/String;)I

    .line 618
    :cond_2
    return-void

    .line 613
    :catch_0
    move-exception v0

    const-string v0, "Error Writing hit to log..."

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lorg/apache/http/HttpHost;ILcom/google/android/gms/analytics/internal/r;Lcom/google/android/gms/analytics/internal/f;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 191
    if-le p3, v1, :cond_2

    move v0, v1

    .line 194
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    iget v4, p0, Lcom/google/android/gms/analytics/internal/c;->f:I

    if-gt v3, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    iget v4, p0, Lcom/google/android/gms/analytics/internal/c;->e:I

    if-le v3, v4, :cond_3

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Request too long (> "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/gms/analytics/internal/c;->e:I

    iget v3, p0, Lcom/google/android/gms/analytics/internal/c;->f:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes)--not sent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I

    .line 283
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 191
    goto :goto_0

    .line 201
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Empty hit, discarding."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v5, v3

    .line 202
    :goto_2
    if-eqz v5, :cond_1

    .line 205
    invoke-interface {v5}, Lorg/apache/http/HttpEntityEnclosingRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v4, v3

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    .line 250
    :goto_3
    const-string v6, "Host"

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-static {v5}, Lcom/google/android/gms/analytics/internal/c;->a(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 253
    :try_start_0
    iget-object v6, p0, Lcom/google/android/gms/analytics/internal/c;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v6, p2, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 254
    const-string v6, "_td"

    invoke-virtual {p4, v6, v4}, Lcom/google/android/gms/analytics/internal/r;->a(Ljava/lang/String;I)V

    .line 255
    const-string v4, "_cd"

    invoke-virtual {p4, v4, v3}, Lcom/google/android/gms/analytics/internal/r;->a(Ljava/lang/String;I)V

    .line 256
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 257
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 258
    if-eqz v4, :cond_4

    .line 259
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 261
    :cond_4
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    .line 264
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/c;->k:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 265
    const-string v0, "Falling back to single hit per request mode."

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->b(Ljava/lang/String;)I

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/internal/c;->l:Z

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/analytics/internal/c;->m:J
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move v1, v2

    .line 268
    goto :goto_1

    .line 201
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/c;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    iget v5, p0, Lcom/google/android/gms/analytics/internal/c;->d:I

    if-ge v3, v5, :cond_6

    if-nez v0, :cond_6

    new-instance v3, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v5, "GET"

    invoke-direct {v3, v5, v4}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string v4, "User-Agent"

    iget-object v5, p0, Lcom/google/android/gms/analytics/internal/c;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v3

    goto/16 :goto_2

    :cond_6
    if-eqz v0, :cond_7

    new-instance v3, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v4, "POST"

    iget-object v5, p0, Lcom/google/android/gms/analytics/internal/c;->h:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    new-instance v3, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v4, "POST"

    iget-object v5, p0, Lcom/google/android/gms/analytics/internal/c;->g:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 210
    :cond_8
    :try_start_1
    sget-object v3, Lcom/google/android/gms/analytics/internal/d;->a:[I

    invoke-virtual {p5}, Lcom/google/android/gms/analytics/internal/f;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    .line 234
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v4, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v4}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 238
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    goto/16 :goto_3

    .line 212
    :pswitch_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 213
    new-instance v4, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 214
    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 215
    invoke-virtual {v4}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 216
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 217
    array-length v3, v4

    add-int/lit8 v3, v3, 0x0

    .line 218
    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v6, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-interface {v5, v6}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 219
    const-string v4, "Content-Encoding"

    const-string v6, "deflate"

    invoke-interface {v5, v4, v6}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 242
    :catch_0
    move-exception v0

    const-string v0, "Encoding error, hit will be discarded"

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->a(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 222
    :pswitch_1
    :try_start_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 223
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 225
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 226
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 227
    array-length v3, v4

    add-int/lit8 v3, v3, 0x0

    .line 228
    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v6, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-interface {v5, v6}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 229
    const-string v4, "Content-Encoding"

    const-string v6, "gzip"

    invoke-interface {v5, v4, v6}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 244
    :catch_1
    move-exception v0

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected IOException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->a(Ljava/lang/String;)I

    .line 246
    const-string v0, "Request will be discarded"

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->a(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 271
    :cond_9
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Bad response: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 276
    :catch_2
    move-exception v0

    const-string v0, "ClientProtocolException sending hit; discarding hit..."

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 277
    :catch_3
    move-exception v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception sending hit: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I

    .line 279
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I

    move v1, v2

    .line 280
    goto/16 :goto_1

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Ljava/util/List;I)I
    .locals 3

    .prologue
    .line 157
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    const/4 p1, 0x0

    .line 173
    :cond_0
    :goto_0
    return p1

    .line 161
    :cond_1
    add-int/lit8 v1, p1, -0x1

    :goto_1
    if-lez v1, :cond_0

    .line 162
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/l;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/l;->a:Ljava/lang/String;

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 164
    const-string v2, "sc=start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move p1, v1

    .line 166
    goto :goto_0

    .line 167
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/l;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/l;->a:Ljava/lang/String;

    const-string v2, "sc=end"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    add-int/lit8 p1, v1, 0x1

    .line 169
    goto :goto_0

    .line 161
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/google/android/gms/analytics/internal/r;Z)I
    .locals 18

    .prologue
    .line 339
    sget-object v2, Lcom/google/android/gms/analytics/internal/k;->n:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/analytics/internal/c;->d:I

    .line 340
    sget-object v2, Lcom/google/android/gms/analytics/internal/k;->r:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/analytics/internal/c;->e:I

    .line 341
    sget-object v2, Lcom/google/android/gms/analytics/internal/k;->s:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/analytics/internal/c;->f:I

    .line 342
    sget-object v2, Lcom/google/android/gms/analytics/internal/k;->q:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 343
    sget-object v2, Lcom/google/android/gms/analytics/internal/k;->l:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/analytics/internal/c;->g:Ljava/lang/String;

    .line 344
    sget-object v2, Lcom/google/android/gms/analytics/internal/k;->m:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/analytics/internal/c;->h:Ljava/lang/String;

    .line 346
    sget-object v2, Lcom/google/android/gms/analytics/internal/k;->t:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/analytics/internal/c;->k:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 348
    array-length v5, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    .line 350
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/analytics/internal/c;->k:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/analytics/internal/c;->k:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/analytics/internal/c;->l:Z

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/gms/analytics/internal/c;->m:J

    .line 362
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/analytics/internal/c;->l:Z

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/analytics/internal/c;->m:J

    sub-long/2addr v4, v6

    sget-object v2, Lcom/google/android/gms/analytics/internal/k;->u:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    .line 364
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/analytics/internal/c;->l:Z

    .line 366
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/analytics/internal/c;->l:Z

    if-eqz v2, :cond_5

    .line 367
    sget-object v2, Lcom/google/android/gms/analytics/internal/e;->a:Lcom/google/android/gms/analytics/internal/e;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/analytics/internal/c;->i:Lcom/google/android/gms/analytics/internal/e;

    .line 368
    sget-object v2, Lcom/google/android/gms/analytics/internal/f;->a:Lcom/google/android/gms/analytics/internal/f;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/analytics/internal/c;->j:Lcom/google/android/gms/analytics/internal/f;

    .line 374
    :goto_2
    const/4 v10, 0x0

    .line 375
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 377
    const-string v2, "_hr"

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/r;->a(Ljava/lang/String;I)V

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 386
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 387
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 388
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 389
    const-wide/16 v4, 0x0

    .line 395
    const/4 v2, 0x0

    .line 396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/analytics/internal/c;->i:Lcom/google/android/gms/analytics/internal/e;

    sget-object v6, Lcom/google/android/gms/analytics/internal/e;->a:Lcom/google/android/gms/analytics/internal/e;

    if-eq v3, v6, :cond_16

    .line 397
    const/4 v8, 0x1

    .line 398
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v3, v2

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/internal/l;

    .line 399
    iget-object v6, v2, Lcom/google/android/gms/analytics/internal/l;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, ""

    .line 401
    :goto_4
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/analytics/internal/c;->e:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    .line 402
    const-string v6, ""

    .line 404
    :cond_3
    iget-object v2, v2, Lcom/google/android/gms/analytics/internal/l;->d:Ljava/lang/String;

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 408
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v6, v2

    if-nez v3, :cond_7

    const/4 v2, 0x0

    :goto_5
    add-int/2addr v2, v6

    int-to-long v0, v2

    move-wide/from16 v16, v0

    add-long v4, v4, v16

    .line 410
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/analytics/internal/c;->f:I

    int-to-long v0, v2

    move-wide/from16 v16, v0

    cmp-long v2, v4, v16

    if-gtz v2, :cond_14

    .line 412
    add-int/lit8 v2, v3, 0x1

    .line 414
    :goto_6
    if-ne v2, v9, :cond_13

    move v3, v2

    move v12, v8

    .line 415
    :goto_7
    const/4 v2, 0x1

    if-le v3, v2, :cond_8

    add-int/lit8 v2, v3, -0x1

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/analytics/internal/c;->f:I

    int-to-long v0, v2

    move-wide/from16 v16, v0

    cmp-long v2, v8, v16

    if-lez v2, :cond_8

    .line 421
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 370
    :cond_5
    sget-object v2, Lcom/google/android/gms/analytics/internal/k;->o:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/e;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/e;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/analytics/internal/c;->i:Lcom/google/android/gms/analytics/internal/e;

    .line 371
    sget-object v2, Lcom/google/android/gms/analytics/internal/k;->p:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/f;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/f;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/analytics/internal/c;->j:Lcom/google/android/gms/analytics/internal/f;

    goto/16 :goto_2

    .line 399
    :cond_6
    invoke-static {v2, v12, v13}, Lcom/google/android/gms/analytics/internal/m;->a(Lcom/google/android/gms/analytics/internal/l;J)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4

    .line 408
    :cond_7
    const/4 v2, 0x1

    goto :goto_5

    .line 424
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/analytics/internal/c;->f:I

    int-to-long v8, v2

    cmp-long v2, v4, v8

    if-lez v2, :cond_12

    .line 425
    sget-object v2, Lcom/google/android/gms/analytics/internal/d;->b:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/analytics/internal/c;->i:Lcom/google/android/gms/analytics/internal/e;

    invoke-virtual {v6}, Lcom/google/android/gms/analytics/internal/e;->ordinal()I

    move-result v6

    aget v2, v2, v6

    packed-switch v2, :pswitch_data_0

    .line 464
    const-string v2, "Unexpected batching strategy encountered; sending a single hit."

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I

    .line 465
    const/4 v3, 0x1

    .line 466
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 467
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 468
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 472
    :cond_9
    :goto_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_12

    .line 473
    const/4 v3, 0x0

    invoke-interface {v7, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    move-object v8, v2

    .line 477
    :goto_9
    const/4 v9, 0x0

    .line 478
    const/4 v4, 0x0

    .line 479
    const/4 v2, 0x0

    move v11, v2

    :goto_a
    if-ge v11, v12, :cond_f

    .line 480
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/internal/l;

    .line 481
    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/c;->a(Lcom/google/android/gms/analytics/internal/l;)Ljava/net/URL;

    move-result-object v3

    .line 482
    const/4 v5, 0x1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 486
    if-nez v3, :cond_c

    .line 487
    const-string v2, "No destination: discarding hit."

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I

    .line 488
    add-int v3, v9, v5

    .line 489
    add-int v2, v10, v5

    .line 479
    :goto_b
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    move v9, v3

    move v10, v2

    goto :goto_a

    .line 430
    :pswitch_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 431
    if-gt v3, v2, :cond_9

    move v2, v3

    .line 436
    goto :goto_8

    .line 439
    :pswitch_1
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/analytics/internal/c;->a(Ljava/util/List;I)I

    move-result v2

    goto :goto_8

    .line 444
    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/analytics/internal/c;->b(Ljava/util/List;I)I

    move-result v2

    goto :goto_8

    .line 450
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/analytics/internal/c;->f:I

    mul-int/lit8 v2, v2, 0x2

    int-to-long v8, v2

    cmp-long v2, v4, v8

    if-gez v2, :cond_b

    .line 451
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 452
    :goto_c
    if-lez v3, :cond_a

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v16, 0x2

    div-long v16, v4, v16

    cmp-long v2, v8, v16

    if-lez v2, :cond_a

    .line 453
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    :cond_a
    move v2, v3

    .line 456
    goto :goto_8

    :cond_b
    move v2, v3

    .line 459
    goto :goto_8

    :pswitch_4
    move v2, v3

    .line 462
    goto :goto_8

    .line 493
    :cond_c
    new-instance v4, Lorg/apache/http/HttpHost;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v7

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v6, v7, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/analytics/internal/c;->i:Lcom/google/android/gms/analytics/internal/e;

    invoke-static {v2, v8, v3}, Lcom/google/android/gms/analytics/internal/c;->a(Lcom/google/android/gms/analytics/internal/l;Ljava/util/List;Lcom/google/android/gms/analytics/internal/e;)Ljava/lang/String;

    move-result-object v3

    .line 497
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/analytics/internal/c;->j:Lcom/google/android/gms/analytics/internal/f;

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/analytics/internal/c;->a(Ljava/lang/String;Lorg/apache/http/HttpHost;ILcom/google/android/gms/analytics/internal/r;Lcom/google/android/gms/analytics/internal/f;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 498
    const-string v2, "_de"

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/r;->a(Ljava/lang/String;I)V

    .line 499
    const-string v2, "_hd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v9}, Lcom/google/android/gms/analytics/internal/r;->a(Ljava/lang/String;I)V

    .line 500
    const-string v2, "_hs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v10}, Lcom/google/android/gms/analytics/internal/r;->a(Ljava/lang/String;I)V

    .line 501
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/analytics/internal/c;->a(Lcom/google/android/gms/analytics/internal/r;Lorg/apache/http/HttpHost;)V

    move v2, v10

    .line 519
    :goto_d
    return v2

    .line 506
    :cond_d
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v9

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 507
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 508
    add-int/lit8 v2, v3, 0x1

    :goto_f
    move v3, v2

    .line 510
    goto :goto_e

    .line 511
    :cond_e
    const-string v2, "_rs"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/analytics/internal/r;->a(Ljava/lang/String;I)V

    .line 512
    add-int v2, v10, v5

    goto/16 :goto_b

    .line 514
    :cond_f
    const-string v2, "_hd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v9}, Lcom/google/android/gms/analytics/internal/r;->a(Ljava/lang/String;I)V

    .line 515
    const-string v2, "_hs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v10}, Lcom/google/android/gms/analytics/internal/r;->a(Ljava/lang/String;I)V

    .line 516
    if-eqz p3, :cond_10

    .line 517
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/analytics/internal/c;->a(Lcom/google/android/gms/analytics/internal/r;Lorg/apache/http/HttpHost;)V

    :cond_10
    move v2, v10

    .line 519
    goto :goto_d

    :catch_0
    move-exception v6

    goto/16 :goto_1

    :cond_11
    move v2, v3

    goto :goto_f

    :cond_12
    move-object v8, v7

    goto/16 :goto_9

    :cond_13
    move v3, v2

    goto/16 :goto_3

    :cond_14
    move v2, v3

    goto/16 :goto_6

    :cond_15
    move v12, v8

    goto/16 :goto_7

    :cond_16
    move v3, v2

    move v12, v9

    goto/16 :goto_7

    .line 425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/c;->c:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 105
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    const-string v0, "...no network connectivity"

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->d(Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
