.class final Lcom/google/android/gms/fitness/sensors/f/e;
.super Lcom/google/android/gms/fitness/internal/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/c/j/a/ad;

.field final synthetic b:Lcom/google/android/gms/fitness/sensors/f/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/f/c;Lcom/google/c/j/a/ad;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/f/e;->b:Lcom/google/android/gms/fitness/sensors/f/c;

    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/f/e;->a:Lcom/google/c/j/a/ad;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/internal/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/result/DataSourcesResult;)V
    .locals 5

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/result/DataSourcesResult;->a()Ljava/util/List;

    move-result-object v0

    .line 120
    const-string v1, "Received %d data sources from %s: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/f/e;->b:Lcom/google/android/gms/fitness/sensors/f/c;

    iget-object v4, v4, Lcom/google/android/gms/fitness/sensors/f/c;->b:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/f/e;->b:Lcom/google/android/gms/fitness/sensors/f/c;

    iget-object v2, v2, Lcom/google/android/gms/fitness/sensors/f/c;->b:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/f/e;->b:Lcom/google/android/gms/fitness/sensors/f/c;

    iget-object v3, v3, Lcom/google/android/gms/fitness/sensors/f/c;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/data/Application;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/fitness/data/Application;

    move-result-object v2

    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 126
    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/data/DataSource;->a(Lcom/google/android/gms/fitness/data/Application;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/e;->a:Lcom/google/c/j/a/ad;

    invoke-virtual {v0, v1}, Lcom/google/c/j/a/ad;->a(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method
