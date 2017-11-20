.class final Lcom/google/j/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/g/a/e/g;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/j/n;


# direct methods
.method constructor <init>(Lcom/google/j/n;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/j/o;->b:Lcom/google/j/n;

    iput-object p2, p0, Lcom/google/j/o;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lcom/google/j/o;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/google/j/o;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 77
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
