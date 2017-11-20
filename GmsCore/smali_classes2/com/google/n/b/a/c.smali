.class public abstract Lcom/google/n/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/n/b/a/a;

.field public final b:Lcom/google/n/b/a/b;


# direct methods
.method public constructor <init>(Lcom/google/n/b/a/a;Lcom/google/n/b/a/b;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/n/b/a/c;->a:Lcom/google/n/b/a/a;

    .line 25
    iput-object p2, p0, Lcom/google/n/b/a/c;->b:Lcom/google/n/b/a/b;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/n/b/b/a;
    .locals 2

    .prologue
    .line 199
    const/4 v1, 0x0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/google/n/b/a/c;->b:Lcom/google/n/b/a/b;

    invoke-interface {v0, p1, p2}, Lcom/google/n/b/a/b;->a(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/n/b/c/a;

    move-result-object v1

    .line 202
    invoke-interface {v1}, Lcom/google/n/b/c/a;->b()Lcom/google/n/b/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 204
    if-eqz v1, :cond_0

    .line 205
    invoke-interface {v1}, Lcom/google/n/b/c/a;->e()V

    :cond_0
    return-object v0

    .line 204
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 205
    invoke-interface {v1}, Lcom/google/n/b/c/a;->e()V

    :cond_1
    throw v0
.end method
