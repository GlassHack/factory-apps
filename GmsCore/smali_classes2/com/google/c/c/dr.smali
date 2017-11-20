.class final Lcom/google/c/c/dr;
.super Lcom/google/c/c/bb;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/c/c/bb;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/google/c/c/dr;->a:Ljava/lang/Object;

    .line 109
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/c/c/ek;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/c/c/dr;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/c/c/bv;->a(Ljava/lang/Object;)Lcom/google/c/c/ek;

    move-result-object v0

    return-object v0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/c/c/dr;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/c/c/dr;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/c/c/bv;->a(Ljava/lang/Object;)Lcom/google/c/c/ek;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method
