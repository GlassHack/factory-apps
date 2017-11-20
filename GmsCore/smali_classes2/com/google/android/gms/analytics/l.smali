.class final Lcom/google/android/gms/analytics/l;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/k;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/gms/analytics/l;->a:Lcom/google/android/gms/analytics/k;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/gms/analytics/l;->a:Lcom/google/android/gms/analytics/k;

    invoke-static {v0}, Lcom/google/android/gms/analytics/k;->a(Lcom/google/android/gms/analytics/k;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/l;->a:Lcom/google/android/gms/analytics/k;

    iget-object v2, p0, Lcom/google/android/gms/analytics/l;->a:Lcom/google/android/gms/analytics/k;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/analytics/k;->a(Lcom/google/android/gms/analytics/k;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/google/android/gms/analytics/l;->a:Lcom/google/android/gms/analytics/k;

    invoke-static {v0}, Lcom/google/android/gms/analytics/k;->b(Lcom/google/android/gms/analytics/k;)Z

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/analytics/l;->a:Lcom/google/android/gms/analytics/k;

    invoke-static {v0}, Lcom/google/android/gms/analytics/k;->a(Lcom/google/android/gms/analytics/k;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 150
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
