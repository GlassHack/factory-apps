.class public final Lcom/google/h/a/b/b/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/h/a/b/b/ag;


# instance fields
.field private final a:[[D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/google/h/a/b/b/ab;->a:[[D

    .line 16
    return-void
.end method


# virtual methods
.method public final a(II)D
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/h/a/b/b/ab;->a:[[D

    aget-object v0, v0, p1

    aget-wide v0, v0, p2

    return-wide v0
.end method

.method public final a(IID)V
    .locals 5

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/h/a/b/b/ab;->a:[[D

    aget-object v0, v0, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    aput-wide v2, v0, p2

    .line 25
    return-void
.end method
