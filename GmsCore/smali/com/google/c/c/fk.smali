.class public abstract Lcom/google/c/c/fk;
.super Lcom/google/c/c/fl;

# interfaces
.implements Lcom/google/c/c/hg;
.implements Ljava/util/SortedSet;


# static fields
.field private static final b:Ljava/util/Comparator;

.field private static final c:Lcom/google/c/c/fk;


# instance fields
.field final transient a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/c/c/gm;->b()Lcom/google/c/c/gm;

    move-result-object v0

    sput-object v0, Lcom/google/c/c/fk;->b:Ljava/util/Comparator;

    new-instance v0, Lcom/google/c/c/im;

    sget-object v1, Lcom/google/c/c/fk;->b:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/google/c/c/im;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/c/c/fk;->c:Lcom/google/c/c/fk;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/c/fl;-><init>()V

    iput-object p1, p0, Lcom/google/c/c/fk;->a:Ljava/util/Comparator;

    return-void
.end method

.method static a(Ljava/util/Comparator;)Lcom/google/c/c/fk;
    .locals 1

    sget-object v0, Lcom/google/c/c/fk;->b:Ljava/util/Comparator;

    invoke-interface {v0, p0}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/c/c/fk;->c:Lcom/google/c/c/fk;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/c/c/im;

    invoke-direct {v0, p0}, Lcom/google/c/c/im;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract b()Lcom/google/c/c/hi;
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/fk;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/fk;->b()Lcom/google/c/c/hi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/hi;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract h()Lcom/google/c/c/fk;
.end method

.method public synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/c/c/fk;->h()Lcom/google/c/c/fk;

    move-result-object v0

    return-object v0
.end method

.method abstract i()Lcom/google/c/c/fk;
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/fk;->b()Lcom/google/c/c/hi;

    move-result-object v0

    return-object v0
.end method

.method abstract j()Lcom/google/c/c/fk;
.end method

.method public abstract k()Lcom/google/c/c/hi;
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/fk;->k()Lcom/google/c/c/hi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/hi;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/c/c/fk;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/cj;->a(Z)V

    invoke-virtual {p0}, Lcom/google/c/c/fk;->i()Lcom/google/c/c/fk;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/c/c/fk;->j()Lcom/google/c/c/fk;

    move-result-object v0

    return-object v0
.end method
