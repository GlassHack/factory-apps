.class final Lcom/google/c/c/ah;
.super Lcom/google/c/c/cv;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/c/c/af;


# direct methods
.method constructor <init>(Lcom/google/c/c/af;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/c/c/ah;->a:Lcom/google/c/c/af;

    invoke-direct {p0}, Lcom/google/c/c/cv;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/c/c/co;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/c/c/ah;->a:Lcom/google/c/c/af;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/c/c/ah;->a:Lcom/google/c/c/af;

    invoke-virtual {v0}, Lcom/google/c/c/af;->b()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/c/c/ah;->a:Lcom/google/c/c/af;

    invoke-virtual {v0}, Lcom/google/c/c/af;->c()I

    move-result v0

    return v0
.end method
