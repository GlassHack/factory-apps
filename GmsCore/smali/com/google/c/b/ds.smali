.class final Lcom/google/c/b/ds;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/Object;

.field private synthetic b:I

.field private synthetic c:Lcom/google/c/b/dm;

.field private synthetic d:Lcom/google/c/j/a/aq;

.field private synthetic e:Lcom/google/c/b/dr;


# direct methods
.method constructor <init>(Lcom/google/c/b/dr;Ljava/lang/Object;ILcom/google/c/b/dm;Lcom/google/c/j/a/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/b/ds;->e:Lcom/google/c/b/dr;

    iput-object p2, p0, Lcom/google/c/b/ds;->a:Ljava/lang/Object;

    iput p3, p0, Lcom/google/c/b/ds;->b:I

    iput-object p4, p0, Lcom/google/c/b/ds;->c:Lcom/google/c/b/dm;

    iput-object p5, p0, Lcom/google/c/b/ds;->d:Lcom/google/c/j/a/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/c/b/ds;->e:Lcom/google/c/b/dr;

    iget-object v1, p0, Lcom/google/c/b/ds;->a:Ljava/lang/Object;

    iget v2, p0, Lcom/google/c/b/ds;->b:I

    iget-object v3, p0, Lcom/google/c/b/ds;->c:Lcom/google/c/b/dm;

    iget-object v4, p0, Lcom/google/c/b/ds;->d:Lcom/google/c/j/a/aq;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;ILcom/google/c/b/dm;Lcom/google/c/j/a/aq;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/b/ds;->c:Lcom/google/c/b/dm;

    invoke-virtual {v1, v0}, Lcom/google/c/b/dm;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/c/b/ch;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown during refresh"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/c/b/ds;->c:Lcom/google/c/b/dm;

    invoke-virtual {v1, v0}, Lcom/google/c/b/dm;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
