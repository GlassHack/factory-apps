.class public final Landroid/support/v4/f/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/f/o;


# instance fields
.field private final a:[Ljava/lang/Object;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/f/p;->a:[Ljava/lang/Object;

    .line 95
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 100
    iget v0, p0, Landroid/support/v4/f/p;->b:I

    if-lez v0, :cond_0

    .line 101
    iget v0, p0, Landroid/support/v4/f/p;->b:I

    add-int/lit8 v2, v0, -0x1

    .line 102
    iget-object v0, p0, Landroid/support/v4/f/p;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    .line 103
    iget-object v3, p0, Landroid/support/v4/f/p;->a:[Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 104
    iget v1, p0, Landroid/support/v4/f/p;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/v4/f/p;->b:I

    .line 107
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    move v0, v1

    :goto_0
    iget v3, p0, Landroid/support/v4/f/p;->b:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroid/support/v4/f/p;->a:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-ne v3, p1, :cond_0

    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already in the pool!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 115
    :cond_2
    iget v0, p0, Landroid/support/v4/f/p;->b:I

    iget-object v3, p0, Landroid/support/v4/f/p;->a:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 116
    iget-object v0, p0, Landroid/support/v4/f/p;->a:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/f/p;->b:I

    aput-object p1, v0, v1

    .line 117
    iget v0, p0, Landroid/support/v4/f/p;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/f/p;->b:I

    move v1, v2

    .line 120
    :cond_3
    return v1
.end method
