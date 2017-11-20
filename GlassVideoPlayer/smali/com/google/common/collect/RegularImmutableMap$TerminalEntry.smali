.class final Lcom/google/common/collect/RegularImmutableMap$TerminalEntry;
.super Lcom/google/common/collect/ImmutableEntry;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ll;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    return-void
.end method


# virtual methods
.method public final next()Lcom/google/common/collect/ll;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method
