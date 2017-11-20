.class final Lcom/google/android/gms/analytics/service/h;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/service/AnalyticsService;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/concurrent/LinkedBlockingQueue;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/service/AnalyticsService;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 558
    iput-object p1, p0, Lcom/google/android/gms/analytics/service/h;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 554
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/service/h;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 555
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/service/h;->d:Z

    .line 556
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/service/h;->e:Z

    .line 559
    iput-object p2, p0, Lcom/google/android/gms/analytics/service/h;->b:Landroid/content/Context;

    .line 560
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/service/h;->d:Z

    .line 568
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/h;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 564
    return-void
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 573
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/service/h;->d:Z

    if-nez v0, :cond_1

    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/h;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 580
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/service/h;->e:Z

    if-nez v1, :cond_0

    .line 581
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    .line 584
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/analytics/service/h;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-static {v1}, Lcom/google/android/gms/analytics/service/AnalyticsService;->a(Lcom/google/android/gms/analytics/service/AnalyticsService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/analytics/service/h;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    iget-object v1, v1, Lcom/google/android/gms/analytics/service/AnalyticsService;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 586
    :catch_1
    move-exception v0

    .line 591
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 592
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 593
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 594
    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V

    .line 595
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/h;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    iget-object v0, v0, Lcom/google/android/gms/analytics/service/AnalyticsService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error on StoreThread: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/h;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    iget-object v0, v0, Lcom/google/android/gms/analytics/service/AnalyticsService;->a:Ljava/lang/String;

    const-string v1, "Google Analytics Service is shutting down."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/service/h;->e:Z

    goto :goto_0

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/h;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-static {v0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->b(Lcom/google/android/gms/analytics/service/AnalyticsService;)Lcom/google/android/gms/analytics/internal/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/analytics/internal/a;->c()V

    .line 606
    return-void
.end method
