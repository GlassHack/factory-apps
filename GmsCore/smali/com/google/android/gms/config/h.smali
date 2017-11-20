.class final Lcom/google/android/gms/config/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/config/ConfigService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/config/ConfigService;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/gms/config/h;->a:Lcom/google/android/gms/config/ConfigService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/gms/config/h;->a:Lcom/google/android/gms/config/ConfigService;

    invoke-static {v0}, Lcom/google/android/gms/config/ConfigService;->a(Lcom/google/android/gms/config/ConfigService;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/config/h;->a:Lcom/google/android/gms/config/ConfigService;

    invoke-static {v0}, Lcom/google/android/gms/config/ConfigService;->b(Lcom/google/android/gms/config/ConfigService;)Lcom/google/android/gms/config/j;

    move-result-object v1

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/config/h;->a:Lcom/google/android/gms/config/ConfigService;

    invoke-static {v0}, Lcom/google/android/gms/config/ConfigService;->c(Lcom/google/android/gms/config/ConfigService;)Z

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/config/h;->a:Lcom/google/android/gms/config/ConfigService;

    invoke-static {v0}, Lcom/google/android/gms/config/ConfigService;->b(Lcom/google/android/gms/config/ConfigService;)Lcom/google/android/gms/config/j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
