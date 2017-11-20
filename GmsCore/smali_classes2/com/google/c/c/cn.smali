.class final Lcom/google/c/c/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/c/c/cm;


# direct methods
.method constructor <init>(Lcom/google/c/c/cm;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 2013
    iput-object p1, p0, Lcom/google/c/c/cn;->b:Lcom/google/c/c/cm;

    iput-object p2, p0, Lcom/google/c/c/cn;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/google/c/c/cn;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/google/c/c/cn;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/google/c/c/cn;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2024
    return-void
.end method
