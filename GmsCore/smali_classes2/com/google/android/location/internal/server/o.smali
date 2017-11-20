.class final Lcom/google/android/location/internal/server/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/internal/server/o;->a:Ljava/util/Map;

    .line 27
    iput-object p1, p0, Lcom/google/android/location/internal/server/o;->b:Ljava/util/Map;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/location/internal/server/g;J)V
    .locals 12

    .prologue
    .line 31
    iget-object v0, p1, Lcom/google/android/location/internal/server/g;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    .line 32
    new-instance v5, Lcom/google/android/location/internal/server/p;

    iget v0, p1, Lcom/google/android/location/internal/server/g;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/location/internal/server/g;->h:Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Lcom/google/android/location/internal/server/p;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 34
    iget-wide v6, p1, Lcom/google/android/location/internal/server/g;->g:J

    .line 36
    iget-object v0, p0, Lcom/google/android/location/internal/server/o;->a:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 37
    if-nez v0, :cond_5

    .line 38
    iget-object v0, p0, Lcom/google/android/location/internal/server/o;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v0

    .line 44
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/internal/server/o;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/g;

    if-eq v0, p1, :cond_2

    new-instance v9, Lcom/google/android/location/internal/server/p;

    iget v10, v0, Lcom/google/android/location/internal/server/g;->d:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/location/internal/server/g;->h:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lcom/google/android/location/internal/server/p;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Lcom/google/android/location/internal/server/p;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v0, Lcom/google/android/location/internal/server/g;->f:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-wide v10, v0, Lcom/google/android/location/internal/server/g;->g:J

    cmp-long v9, v10, v2

    if-gez v9, :cond_2

    iget-wide v2, v0, Lcom/google/android/location/internal/server/g;->g:J

    goto :goto_2

    .line 46
    :cond_3
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v0, v2, v8

    if-nez v0, :cond_4

    .line 47
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v2, p2, v6

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 56
    :goto_3
    iget-object v1, p0, Lcom/google/android/location/internal/server/o;->a:Ljava/util/Map;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 51
    :cond_4
    cmp-long v0, v2, v6

    if-ltz v0, :cond_0

    .line 54
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v2, v6

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method
