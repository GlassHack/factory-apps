.class final Lcom/google/c/b/ak;
.super Lcom/google/c/b/k;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/concurrent/Callable;

.field final synthetic b:Lcom/google/c/b/aj;


# direct methods
.method constructor <init>(Lcom/google/c/b/aj;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 4764
    iput-object p1, p0, Lcom/google/c/b/ak;->b:Lcom/google/c/b/aj;

    iput-object p2, p0, Lcom/google/c/b/ak;->a:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Lcom/google/c/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4767
    iget-object v0, p0, Lcom/google/c/b/ak;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
