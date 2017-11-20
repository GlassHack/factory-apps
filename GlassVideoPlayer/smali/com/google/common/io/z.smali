.class final Lcom/google/common/io/z;
.super Lcom/google/common/io/u;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/io/an;


# direct methods
.method constructor <init>(Lcom/google/common/io/an;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/google/common/io/z;->a:Lcom/google/common/io/an;

    invoke-direct {p0}, Lcom/google/common/io/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/common/io/z;->a:Lcom/google/common/io/an;

    invoke-interface {v0}, Lcom/google/common/io/an;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    invoke-static {v0}, Lcom/google/common/io/v;->b(Ljava/lang/Readable;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method
