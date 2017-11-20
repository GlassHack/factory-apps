.class final Lcom/google/c/b/ag;
.super Lcom/google/c/b/af;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lcom/google/c/b/n;


# direct methods
.method constructor <init>(Lcom/google/c/b/n;)V
    .locals 0

    .prologue
    .line 4388
    iput-object p1, p0, Lcom/google/c/b/ag;->a:Lcom/google/c/b/n;

    invoke-direct {p0, p1}, Lcom/google/c/b/af;-><init>(Lcom/google/c/b/n;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4392
    invoke-virtual {p0}, Lcom/google/c/b/ag;->a()Lcom/google/c/b/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/bl;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
