.class final Lcom/google/android/gms/analytics/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/google/android/gms/analytics/ag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/ag;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/gms/analytics/ah;->b:Lcom/google/android/gms/analytics/ag;

    iput-object p2, p0, Lcom/google/android/gms/analytics/ah;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/analytics/ah;->b:Lcom/google/android/gms/analytics/ag;

    iget-object v1, p0, Lcom/google/android/gms/analytics/ah;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/ag;->a(Lcom/google/android/gms/analytics/ag;Ljava/util/Map;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/analytics/ah;->a:Ljava/util/Map;

    const-string v1, "&cid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/android/gms/analytics/ah;->a:Ljava/util/Map;

    const-string v1, "&cid"

    invoke-static {}, Lcom/google/android/gms/analytics/k;->a()Lcom/google/android/gms/analytics/k;

    move-result-object v2

    const-string v3, "&cid"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ah;->b:Lcom/google/android/gms/analytics/ag;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ag;->a(Lcom/google/android/gms/analytics/ag;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/ap;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ap;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/ah;->b:Lcom/google/android/gms/analytics/ag;

    iget-object v0, p0, Lcom/google/android/gms/analytics/ah;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ag;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/ah;->b:Lcom/google/android/gms/analytics/ag;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ag;->b(Lcom/google/android/gms/analytics/ag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 155
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/gms/analytics/ak;->a(Z)V

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/analytics/ah;->a:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/analytics/az;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/az;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/analytics/ah;->b:Lcom/google/android/gms/analytics/ag;

    invoke-static {v2}, Lcom/google/android/gms/analytics/ag;->b(Lcom/google/android/gms/analytics/ag;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/az;->c(Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/az;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 158
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Z)V

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/analytics/ah;->b:Lcom/google/android/gms/analytics/ag;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ag;->c(Lcom/google/android/gms/analytics/ag;)Ljava/lang/String;

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/analytics/ah;->b:Lcom/google/android/gms/analytics/ag;

    iget-object v0, p0, Lcom/google/android/gms/analytics/ah;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ag;->c(Ljava/util/Map;)V

    .line 162
    iget-object v0, p0, Lcom/google/android/gms/analytics/ah;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/analytics/ah;->b:Lcom/google/android/gms/analytics/ag;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ag;->e(Lcom/google/android/gms/analytics/ag;)Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/ah;->a:Ljava/util/Map;

    const-string v3, "&ht"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/analytics/ah;->b:Lcom/google/android/gms/analytics/ag;

    iget-object v4, p0, Lcom/google/android/gms/analytics/ah;->a:Ljava/util/Map;

    invoke-static {v4}, Lcom/google/android/gms/analytics/ag;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/analytics/ah;->b:Lcom/google/android/gms/analytics/ag;

    invoke-static {v5}, Lcom/google/android/gms/analytics/ag;->d(Lcom/google/android/gms/analytics/ag;)Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/bl;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0
.end method
