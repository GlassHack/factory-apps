.class final Lcom/google/common/collect/ie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/io;


# instance fields
.field final synthetic a:Lcom/google/common/base/w;


# direct methods
.method constructor <init>(Lcom/google/common/base/w;)V
    .locals 0

    .prologue
    .line 1320
    iput-object p1, p0, Lcom/google/common/collect/ie;->a:Lcom/google/common/base/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/google/common/collect/ie;->a:Lcom/google/common/base/w;

    invoke-interface {v0, p2}, Lcom/google/common/base/w;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
