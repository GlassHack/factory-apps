.class public abstract Lcom/google/common/base/Optional;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static absent()Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/google/common/base/Absent;->INSTANCE:Lcom/google/common/base/Absent;

    return-object v0
.end method

.method public static fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/base/Present;

    invoke-direct {v0, p0}, Lcom/google/common/base/Present;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static of(Ljava/lang/Object;)Lcom/google/common/base/Optional;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/google/common/base/Present;

    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/Present;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static presentInstances(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 220
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v0, Lcom/google/common/base/ad;

    invoke-direct {v0, p0}, Lcom/google/common/base/ad;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public abstract asSet()Ljava/util/Set;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract get()Ljava/lang/Object;
.end method

.method public abstract hashCode()I
.end method

.method public abstract isPresent()Z
.end method

.method public abstract or(Lcom/google/common/base/Optional;)Lcom/google/common/base/Optional;
.end method

.method public abstract or(Lcom/google/common/base/av;)Ljava/lang/Object;
.end method

.method public abstract or(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract orNull()Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract transform(Lcom/google/common/base/v;)Lcom/google/common/base/Optional;
.end method
