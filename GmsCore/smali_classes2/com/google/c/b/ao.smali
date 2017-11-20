.class final Lcom/google/c/b/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:I

.field final synthetic c:Lcom/google/c/b/ai;

.field final synthetic d:Lcom/google/c/j/a/v;

.field final synthetic e:Lcom/google/c/b/an;


# direct methods
.method constructor <init>(Lcom/google/c/b/an;Ljava/lang/Object;ILcom/google/c/b/ai;Lcom/google/c/j/a/v;)V
    .locals 0

    .prologue
    .line 2358
    iput-object p1, p0, Lcom/google/c/b/ao;->e:Lcom/google/c/b/an;

    iput-object p2, p0, Lcom/google/c/b/ao;->a:Ljava/lang/Object;

    iput p3, p0, Lcom/google/c/b/ao;->b:I

    iput-object p4, p0, Lcom/google/c/b/ao;->c:Lcom/google/c/b/ai;

    iput-object p5, p0, Lcom/google/c/b/ao;->d:Lcom/google/c/j/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 2362
    :try_start_0
    iget-object v0, p0, Lcom/google/c/b/ao;->e:Lcom/google/c/b/an;

    iget-object v1, p0, Lcom/google/c/b/ao;->a:Ljava/lang/Object;

    iget v2, p0, Lcom/google/c/b/ao;->b:I

    iget-object v3, p0, Lcom/google/c/b/ao;->c:Lcom/google/c/b/ai;

    iget-object v4, p0, Lcom/google/c/b/ao;->d:Lcom/google/c/j/a/v;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/c/b/an;->a(Ljava/lang/Object;ILcom/google/c/b/ai;Lcom/google/c/j/a/v;)Ljava/lang/Object;

    move-result-object v0

    .line 2364
    iget-object v1, p0, Lcom/google/c/b/ao;->c:Lcom/google/c/b/ai;

    invoke-virtual {v1, v0}, Lcom/google/c/b/ai;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2369
    :goto_0
    return-void

    .line 2365
    :catch_0
    move-exception v0

    .line 2366
    sget-object v1, Lcom/google/c/b/n;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown during refresh"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2367
    iget-object v1, p0, Lcom/google/c/b/ao;->c:Lcom/google/c/b/ai;

    invoke-virtual {v1, v0}, Lcom/google/c/b/ai;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
