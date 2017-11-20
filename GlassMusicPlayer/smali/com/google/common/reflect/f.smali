.class public abstract Lcom/google/common/reflect/f;
.super Lcom/google/common/reflect/e;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/reflect/TypeVariable;


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/common/reflect/e;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/google/common/reflect/f;->capture()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 48
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    const-string v2, "%s should be a type variable."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/common/base/ai;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 49
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    iput-object v0, p0, Lcom/google/common/reflect/f;->a:Ljava/lang/reflect/TypeVariable;

    .line 50
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 59
    instance-of v0, p1, Lcom/google/common/reflect/f;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lcom/google/common/reflect/f;

    .line 61
    iget-object v0, p0, Lcom/google/common/reflect/f;->a:Ljava/lang/reflect/TypeVariable;

    iget-object v1, p1, Lcom/google/common/reflect/f;->a:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/common/reflect/f;->a:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/common/reflect/f;->a:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
