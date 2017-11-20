.class final Lcom/google/c/c/p;
.super Lcom/google/c/c/ck;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/c/c/m;


# direct methods
.method constructor <init>(Lcom/google/c/c/m;)V
    .locals 0

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/google/c/c/p;->a:Lcom/google/c/c/m;

    invoke-direct {p0}, Lcom/google/c/c/ck;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/c/c/ci;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/google/c/c/p;->a:Lcom/google/c/c/m;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/google/c/c/p;->a:Lcom/google/c/c/m;

    invoke-virtual {v0}, Lcom/google/c/c/m;->h()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
