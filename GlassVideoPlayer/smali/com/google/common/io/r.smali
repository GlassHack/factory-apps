.class final Lcom/google/common/io/r;
.super Lcom/google/common/io/j;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/io/an;


# direct methods
.method constructor <init>(Lcom/google/common/io/an;)V
    .locals 0

    .prologue
    .line 978
    iput-object p1, p0, Lcom/google/common/io/r;->a:Lcom/google/common/io/an;

    invoke-direct {p0}, Lcom/google/common/io/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lcom/google/common/io/r;->a:Lcom/google/common/io/an;

    invoke-interface {v0}, Lcom/google/common/io/an;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method
