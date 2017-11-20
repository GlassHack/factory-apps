.class final Lcom/google/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/b/a/a;


# direct methods
.method constructor <init>(Lcom/google/b/a/a;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1298
    iput-object p1, p0, Lcom/google/b/a/d;->c:Lcom/google/b/a/a;

    iput p2, p0, Lcom/google/b/a/d;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/google/b/a/d;->c:Lcom/google/b/a/a;

    iget v1, p0, Lcom/google/b/a/d;->a:I

    iget-object v2, p0, Lcom/google/b/a/d;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/b/a/a;->a(Lcom/google/b/a/a;ILjava/lang/String;)V

    .line 1301
    return-void
.end method
