.class final Lcom/android/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/d/p;

.field final synthetic b:Lcom/android/d/d;


# direct methods
.method constructor <init>(Lcom/android/d/d;Lcom/android/d/p;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/d/e;->b:Lcom/android/d/d;

    iput-object p2, p0, Lcom/android/d/e;->a:Lcom/android/d/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/d/e;->b:Lcom/android/d/d;

    invoke-static {v0}, Lcom/android/d/d;->a(Lcom/android/d/d;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/d/e;->a:Lcom/android/d/p;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
