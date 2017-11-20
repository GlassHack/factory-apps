.class final Lcom/google/android/gms/analytics/service/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcom/google/android/gms/analytics/service/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/service/e;Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 409
    iput-object p1, p0, Lcom/google/android/gms/analytics/service/g;->e:Lcom/google/android/gms/analytics/service/e;

    iput-object p2, p0, Lcom/google/android/gms/analytics/service/g;->a:Ljava/util/Map;

    iput-wide p3, p0, Lcom/google/android/gms/analytics/service/g;->b:J

    iput-object p5, p0, Lcom/google/android/gms/analytics/service/g;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/analytics/service/g;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/g;->e:Lcom/google/android/gms/analytics/service/e;

    iget-object v0, v0, Lcom/google/android/gms/analytics/service/e;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-static {v0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->b(Lcom/google/android/gms/analytics/service/AnalyticsService;)Lcom/google/android/gms/analytics/internal/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/service/g;->a:Ljava/util/Map;

    iget-wide v2, p0, Lcom/google/android/gms/analytics/service/g;->b:J

    iget-object v4, p0, Lcom/google/android/gms/analytics/service/g;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/analytics/service/g;->d:Ljava/util/List;

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/a;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 417
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 418
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 419
    iget-object v2, p0, Lcom/google/android/gms/analytics/service/g;->e:Lcom/google/android/gms/analytics/service/e;

    iget-object v2, v2, Lcom/google/android/gms/analytics/service/e;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-static {v2}, Lcom/google/android/gms/analytics/service/AnalyticsService;->a(Lcom/google/android/gms/analytics/service/AnalyticsService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/analytics/service/g;->e:Lcom/google/android/gms/analytics/service/e;

    iget-object v2, v2, Lcom/google/android/gms/analytics/service/e;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    iget-object v2, v2, Lcom/google/android/gms/analytics/service/AnalyticsService;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " trace: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
