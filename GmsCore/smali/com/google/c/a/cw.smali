.class public final Lcom/google/c/a/cw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private synthetic a:Ljava/lang/CharSequence;

.field private synthetic b:Lcom/google/c/a/ct;


# direct methods
.method public constructor <init>(Lcom/google/c/a/ct;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/a/cw;->b:Lcom/google/c/a/ct;

    iput-object p2, p0, Lcom/google/c/a/cw;->a:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lcom/google/c/a/cw;->b:Lcom/google/c/a/ct;

    iget-object v1, p0, Lcom/google/c/a/cw;->a:Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/google/c/a/ct;->c:Lcom/google/c/a/cy;

    invoke-interface {v2, v0, v1}, Lcom/google/c/a/cy;->a(Lcom/google/c/a/ct;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, ", "

    invoke-static {v0}, Lcom/google/c/a/ca;->a(Ljava/lang/String;)Lcom/google/c/a/ca;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lcom/google/c/a/ca;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
