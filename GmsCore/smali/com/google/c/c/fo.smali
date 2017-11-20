.class final Lcom/google/c/c/fo;
.super Lcom/google/c/c/in;


# instance fields
.field private synthetic b:Ljava/lang/Iterable;

.field private synthetic c:Lcom/google/c/a/bz;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/google/c/a/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/fo;->b:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/google/c/c/fo;->c:Lcom/google/c/a/bz;

    invoke-direct {p0}, Lcom/google/c/c/in;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/c/c/fo;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/c/fo;->c:Lcom/google/c/a/bz;

    invoke-static {v0, v1}, Lcom/google/c/c/fp;->a(Ljava/util/Iterator;Lcom/google/c/a/bz;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
