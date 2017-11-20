.class public abstract Lcom/google/c/c/bq;
.super Lcom/google/c/c/br;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/c/dt;
.implements Ljava/util/SortedSet;


# static fields
.field private static final c:Ljava/util/Comparator;

.field private static final d:Lcom/google/c/c/bq;


# instance fields
.field final transient a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/google/c/c/cz;->b()Lcom/google/c/c/cz;

    move-result-object v0

    sput-object v0, Lcom/google/c/c/bq;->c:Ljava/util/Comparator;

    .line 95
    new-instance v0, Lcom/google/c/c/ar;

    sget-object v1, Lcom/google/c/c/bq;->c:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/google/c/c/ar;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/c/c/bq;->d:Lcom/google/c/c/bq;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/google/c/c/br;-><init>()V

    .line 567
    iput-object p1, p0, Lcom/google/c/c/bq;->a:Ljava/util/Comparator;

    .line 568
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/c/c/ek;
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/c/c/bq;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method abstract d()Lcom/google/c/c/bq;
.end method

.method abstract e()Lcom/google/c/c/bq;
.end method

.method abstract f()Lcom/google/c/c/bq;
.end method

.method public synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 87
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/c/c/bq;->d()Lcom/google/c/c/bq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/c/c/bq;->a()Lcom/google/c/c/ek;

    move-result-object v0

    return-object v0
.end method

.method public synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 87
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/c/c/bq;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/ah;->a(Z)V

    invoke-virtual {p0}, Lcom/google/c/c/bq;->e()Lcom/google/c/c/bq;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 87
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/c/c/bq;->f()Lcom/google/c/c/bq;

    move-result-object v0

    return-object v0
.end method
