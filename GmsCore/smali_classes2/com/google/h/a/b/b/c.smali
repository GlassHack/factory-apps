.class public Lcom/google/h/a/b/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/h/a/b/b/t;


# static fields
.field private static final b:[Lcom/google/h/a/b/b/t;


# instance fields
.field a:[Lcom/google/h/a/b/b/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/h/a/b/b/t;

    sput-object v0, Lcom/google/h/a/b/b/c;->b:[Lcom/google/h/a/b/b/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/google/h/a/b/b/c;->b:[Lcom/google/h/a/b/b/t;

    iput-object v0, p0, Lcom/google/h/a/b/b/c;->a:[Lcom/google/h/a/b/b/t;

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 64
    .line 65
    iget-object v2, p0, Lcom/google/h/a/b/b/c;->a:[Lcom/google/h/a/b/b/t;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 66
    invoke-interface {v4, p1, p2}, Lcom/google/h/a/b/b/t;->a(J)I

    move-result v4

    or-int/2addr v1, v4

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return v1
.end method

.method public a()Lcom/google/h/a/b/a/b;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getPosition not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(JFFZ)V
    .locals 9

    .prologue
    .line 26
    iget-object v7, p0, Lcom/google/h/a/b/b/c;->a:[Lcom/google/h/a/b/b/t;

    array-length v8, v7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_0

    aget-object v1, v7, v0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    .line 27
    invoke-interface/range {v1 .. v6}, Lcom/google/h/a/b/b/t;->a(JFFZ)V

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public a(JIF)V
    .locals 5

    .prologue
    .line 40
    iget-object v1, p0, Lcom/google/h/a/b/b/c;->a:[Lcom/google/h/a/b/b/t;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 41
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/google/h/a/b/b/t;->a(JIF)V

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public a(JLcom/google/h/a/b/a/b;)V
    .locals 5

    .prologue
    .line 33
    iget-object v1, p0, Lcom/google/h/a/b/b/c;->a:[Lcom/google/h/a/b/b/t;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 34
    invoke-interface {v3, p1, p2, p3}, Lcom/google/h/a/b/b/t;->a(JLcom/google/h/a/b/a/b;)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public a(JLcom/google/h/a/b/b/u;)V
    .locals 5

    .prologue
    .line 19
    iget-object v1, p0, Lcom/google/h/a/b/b/c;->a:[Lcom/google/h/a/b/b/t;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 20
    invoke-interface {v3, p1, p2, p3}, Lcom/google/h/a/b/b/t;->a(JLcom/google/h/a/b/b/u;)V

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getTimeNs not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 47
    iget-object v1, p0, Lcom/google/h/a/b/b/c;->a:[Lcom/google/h/a/b/b/t;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 48
    invoke-interface {v3}, Lcom/google/h/a/b/b/t;->c()V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method
