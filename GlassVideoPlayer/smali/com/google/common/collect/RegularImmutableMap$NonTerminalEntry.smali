.class final Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;
.super Lcom/google/common/collect/ImmutableEntry;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ll;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field final next:Lcom/google/common/collect/ll;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ll;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;->next:Lcom/google/common/collect/ll;

    .line 114
    return-void
.end method


# virtual methods
.method public final next()Lcom/google/common/collect/ll;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;->next:Lcom/google/common/collect/ll;

    return-object v0
.end method
