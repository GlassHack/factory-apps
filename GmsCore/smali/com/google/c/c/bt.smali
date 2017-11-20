.class final Lcom/google/c/c/bt;
.super Lcom/google/c/c/bu;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Lcom/google/c/a/y;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/google/c/a/y;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/google/c/c/bt;->a:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/google/c/c/bt;->b:Lcom/google/c/a/y;

    invoke-direct {p0}, Lcom/google/c/c/bu;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/c/c/bt;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/c/bt;->b:Lcom/google/c/a/y;

    invoke-static {v0, v1}, Lcom/google/c/c/bv;->a(Ljava/util/Iterator;Lcom/google/c/a/y;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
