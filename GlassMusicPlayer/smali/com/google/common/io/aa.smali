.class final Lcom/google/common/io/aa;
.super Lcom/google/common/io/t;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/io/as;


# direct methods
.method constructor <init>(Lcom/google/common/io/as;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/google/common/io/aa;->a:Lcom/google/common/io/as;

    invoke-direct {p0}, Lcom/google/common/io/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/common/io/aa;->a:Lcom/google/common/io/as;

    invoke-interface {v0}, Lcom/google/common/io/as;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Appendable;

    invoke-static {v0}, Lcom/google/common/io/v;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method
