.class final Lcom/google/android/gms/analytics/internal/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;

.field final b:Ljava/util/Map;

.field final c:Z

.field final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/r;->a:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/r;->b:Ljava/util/Map;

    .line 23
    iput-boolean p2, p0, Lcom/google/android/gms/analytics/internal/r;->c:Z

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/r;->d:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/r;->c:Z

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/r;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 72
    if-nez v0, :cond_1

    .line 73
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/r;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/r;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/r;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
