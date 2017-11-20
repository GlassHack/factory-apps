.class public Lcom/google/common/collect/Interners$InternerBuilder;
.super Ljava/lang/Object;
.source "Interners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternerBuilder"
.end annotation


# instance fields
.field private final mapMaker:Lcom/google/common/collect/MapMaker;

.field private strong:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/Interners$InternerBuilder;->mapMaker:Lcom/google/common/collect/MapMaker;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Interners$InternerBuilder;->strong:Z

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Interners$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/Interners$1;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/common/collect/Interners$InternerBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/collect/Interner;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/Interner",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-boolean v0, p0, Lcom/google/common/collect/Interners$InternerBuilder;->strong:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Interners$StrongInterner;

    iget-object v1, p0, Lcom/google/common/collect/Interners$InternerBuilder;->mapMaker:Lcom/google/common/collect/MapMaker;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Interners$StrongInterner;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/Interners$1;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/Interners$WeakInterner;

    iget-object v1, p0, Lcom/google/common/collect/Interners$InternerBuilder;->mapMaker:Lcom/google/common/collect/MapMaker;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Interners$WeakInterner;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/Interners$1;)V

    goto :goto_0
.end method

.method public concurrencyLevel(I)Lcom/google/common/collect/Interners$InternerBuilder;
    .locals 1
    .param p1, "concurrencyLevel"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/common/collect/Interners$InternerBuilder;->mapMaker:Lcom/google/common/collect/MapMaker;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/MapMaker;->concurrencyLevel(I)Lcom/google/common/collect/MapMaker;

    .line 78
    return-object p0
.end method

.method public strong()Lcom/google/common/collect/Interners$InternerBuilder;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Interners$InternerBuilder;->strong:Z

    .line 57
    return-object p0
.end method

.method public weak()Lcom/google/common/collect/Interners$InternerBuilder;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Interners$InternerBuilder;->strong:Z

    .line 68
    return-object p0
.end method
