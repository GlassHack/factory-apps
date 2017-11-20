.class public final Lcom/google/android/gms/common/server/n;
.super Lcom/android/d/a/k;
.source "SourceFile"


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;Lcom/android/d/v;Lcom/android/d/u;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6

    .prologue
    .line 55
    if-nez p3, :cond_1

    const/4 v3, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/d/a/k;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/d/v;Lcom/android/d/u;)V

    .line 57
    iput-object p6, p0, Lcom/google/android/gms/common/server/n;->c:Ljava/lang/String;

    .line 58
    iput-object p7, p0, Lcom/google/android/gms/common/server/n;->d:Ljava/util/HashMap;

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/common/server/n;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/common/server/n;->d:Ljava/util/HashMap;

    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OAuth "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/common/server/n;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/n;->d:Ljava/util/HashMap;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Lcom/android/d/f;

    const/16 v1, 0x2710

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/d/f;-><init>(IIF)V

    iput-object v0, p0, Lcom/android/d/p;->b:Lcom/android/d/x;

    .line 64
    return-void

    .line 55
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/android/d/m;)Lcom/android/d/t;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-static {v0, v0}, Lcom/android/d/t;->a(Ljava/lang/Object;Lcom/android/d/c;)Lcom/android/d/t;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/util/Map;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/common/server/n;->d:Ljava/util/HashMap;

    return-object v0
.end method
