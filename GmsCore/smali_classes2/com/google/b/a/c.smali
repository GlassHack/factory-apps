.class final Lcom/google/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/b/a/a;


# direct methods
.method constructor <init>(Lcom/google/b/a/a;)V
    .locals 0

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/google/b/a/c;->a:Lcom/google/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/google/b/a/c;->a:Lcom/google/b/a/a;

    invoke-static {v0}, Lcom/google/b/a/a;->a(Lcom/google/b/a/a;)V

    .line 1245
    iget-object v0, p0, Lcom/google/b/a/c;->a:Lcom/google/b/a/a;

    iget-object v0, v0, Lcom/google/b/a/a;->A:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 1246
    return-void
.end method
