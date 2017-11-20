.class final Lcom/google/c/c/bo;
.super Lcom/google/c/c/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/c/c/bn;


# direct methods
.method constructor <init>(Lcom/google/c/c/bn;I)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/google/c/c/bo;->a:Lcom/google/c/c/bn;

    invoke-direct {p0, p2}, Lcom/google/c/c/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/c/c/bo;->a:Lcom/google/c/c/bn;

    iget-object v1, p0, Lcom/google/c/c/bo;->a:Lcom/google/c/c/bn;

    iget-object v1, v1, Lcom/google/c/c/bn;->a:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/google/c/c/bn;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
