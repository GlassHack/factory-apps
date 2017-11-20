.class public final Lcom/google/j/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/j/b/b;

.field private b:Ljava/util/Vector;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(IILcom/google/j/b/b;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/j/b/i;->c:I

    .line 33
    iput p2, p0, Lcom/google/j/b/i;->d:I

    .line 34
    iput-object p3, p0, Lcom/google/j/b/i;->a:Lcom/google/j/b/b;

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/j/b/i;->b:Ljava/util/Vector;

    .line 36
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/j/b/h;
    .locals 5

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/j/b/i;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/j/b/b;

    .line 44
    iget-object v1, p0, Lcom/google/j/b/i;->b:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 45
    new-instance v1, Lcom/google/j/b/h;

    iget v2, p0, Lcom/google/j/b/i;->c:I

    iget v3, p0, Lcom/google/j/b/i;->d:I

    iget-object v4, p0, Lcom/google/j/b/i;->a:Lcom/google/j/b/b;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/j/b/h;-><init>(IILcom/google/j/b/b;[Lcom/google/j/b/b;)V

    return-object v1
.end method

.method public final a(Lcom/google/j/b/b;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/j/b/i;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 40
    return-void
.end method
