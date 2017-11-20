.class final Lcom/google/c/c/o;
.super Lcom/google/c/c/cl;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/c/c/m;


# direct methods
.method constructor <init>(Lcom/google/c/c/m;)V
    .locals 0

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/google/c/c/o;->a:Lcom/google/c/c/m;

    invoke-direct {p0}, Lcom/google/c/c/cl;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/c/c/ci;
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/google/c/c/o;->a:Lcom/google/c/c/m;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/google/c/c/o;->a:Lcom/google/c/c/m;

    invoke-virtual {v0}, Lcom/google/c/c/m;->h()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
