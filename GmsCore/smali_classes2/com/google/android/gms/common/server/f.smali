.class public abstract Lcom/google/android/gms/common/server/f;
.super Lcom/android/d/a/k;
.source "SourceFile"


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/HashMap;


# direct methods
.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/d/v;Lcom/android/d/u;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)V
    .locals 6

    .prologue
    .line 28
    if-nez p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/d/a/k;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/d/v;Lcom/android/d/u;)V

    .line 30
    iput-object p6, p0, Lcom/google/android/gms/common/server/f;->c:Ljava/lang/String;

    .line 31
    iput-object p9, p0, Lcom/google/android/gms/common/server/f;->d:Ljava/util/HashMap;

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/common/server/f;->d:Ljava/util/HashMap;

    invoke-static {v0, p6, p7}, Lcom/google/android/gms/common/server/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/common/server/f;->d:Ljava/util/HashMap;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iput-boolean p8, p0, Lcom/android/d/p;->a:Z

    .line 35
    return-void

    .line 28
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Lcom/android/d/m;)Lcom/android/d/t;
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/d/a/k;->a(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public final h()Ljava/util/Map;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/common/server/f;->d:Ljava/util/HashMap;

    return-object v0
.end method
