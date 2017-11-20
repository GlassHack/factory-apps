.class final Lcom/google/googlenav/f/b;
.super Lcom/google/googlenav/common/d/b;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/googlenav/common/d/c;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/google/googlenav/common/d/b;-><init>(Lcom/google/googlenav/common/d/c;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->e()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/io/PersistentStore;->a()V

    .line 133
    return-void
.end method
