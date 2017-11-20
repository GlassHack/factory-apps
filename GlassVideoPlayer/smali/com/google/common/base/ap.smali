.class final Lcom/google/common/base/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Lcom/google/common/base/ak;


# direct methods
.method constructor <init>(Lcom/google/common/base/ak;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/google/common/base/ap;->b:Lcom/google/common/base/ak;

    iput-object p2, p0, Lcom/google/common/base/ap;->a:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/common/base/ap;->b:Lcom/google/common/base/ak;

    iget-object v1, p0, Lcom/google/common/base/ap;->a:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/google/common/base/ak;->a(Lcom/google/common/base/ak;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 392
    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/x;->a(Ljava/lang/String;)Lcom/google/common/base/x;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/common/base/x;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
