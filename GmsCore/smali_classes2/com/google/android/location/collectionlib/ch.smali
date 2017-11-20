.class final Lcom/google/android/location/collectionlib/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/cg;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/cg;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/location/collectionlib/ch;->a:Lcom/google/android/location/collectionlib/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ch;->a:Lcom/google/android/location/collectionlib/cg;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cg;->a(Lcom/google/android/location/collectionlib/cg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ch;->a:Lcom/google/android/location/collectionlib/cg;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cg;->b(Lcom/google/android/location/collectionlib/cg;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/collectionlib/ch;->a:Lcom/google/android/location/collectionlib/cg;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/cg;->a:Lcom/google/android/location/collectionlib/ci;

    if-eqz v0, :cond_1

    .line 56
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/ch;->a:Lcom/google/android/location/collectionlib/cg;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cg;->c(Lcom/google/android/location/collectionlib/cg;)Lcom/google/android/location/p/a/c;

    move-result-object v0

    const-string v2, "Clibration timed out."

    invoke-virtual {v0, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ch;->a:Lcom/google/android/location/collectionlib/cg;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/cg;->a:Lcom/google/android/location/collectionlib/ci;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/ci;->a(Lcom/google/android/location/collectionlib/ci;)Z

    .line 58
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ch;->a:Lcom/google/android/location/collectionlib/cg;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v0, v2, v4, v5}, Lcom/google/android/location/collectionlib/cg;->a(Lcom/google/android/location/collectionlib/cg;ZJ)V

    .line 59
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ch;->a:Lcom/google/android/location/collectionlib/cg;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/location/collectionlib/cg;->a:Lcom/google/android/location/collectionlib/ci;

    .line 61
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
