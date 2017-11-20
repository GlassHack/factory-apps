.class final Lcom/google/c/j/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/a/y;


# instance fields
.field final synthetic a:Lcom/google/c/a/y;


# direct methods
.method constructor <init>(Lcom/google/c/a/y;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/google/c/j/a/p;->a:Lcom/google/c/a/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/c/j/a/p;->a:Lcom/google/c/a/y;

    invoke-interface {v0, p1}, Lcom/google/c/a/y;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v0

    return-object v0
.end method
