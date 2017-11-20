.class public final Lcom/google/android/maps/driveabout/e/j;
.super Lcom/google/android/maps/driveabout/e/h;
.source "SourceFile"


# instance fields
.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/e/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 278
    iput p3, p0, Lcom/google/android/maps/driveabout/e/j;->b:I

    .line 279
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 299
    const/16 v0, 0x9

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/google/android/maps/driveabout/e/j;->b:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    iget v0, p0, Lcom/google/android/maps/driveabout/e/j;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/j;->a:Landroid/content/Context;

    sget v1, Lcom/google/glass/navlib/R$string;->da_step_fork_left:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    .line 290
    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/e/j;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 291
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/j;->a:Landroid/content/Context;

    sget v1, Lcom/google/glass/navlib/R$string;->da_step_fork_right:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
