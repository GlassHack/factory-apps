.class final Lcom/google/common/io/s;
.super Lcom/google/common/io/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/io/as;


# direct methods
.method constructor <init>(Lcom/google/common/io/as;)V
    .locals 0

    .prologue
    .line 989
    iput-object p1, p0, Lcom/google/common/io/s;->a:Lcom/google/common/io/as;

    invoke-direct {p0}, Lcom/google/common/io/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/google/common/io/s;->a:Lcom/google/common/io/as;

    invoke-interface {v0}, Lcom/google/common/io/as;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    return-object v0
.end method
