.class public final Lcom/google/android/maps/driveabout/e/o;
.super Lcom/google/android/maps/driveabout/e/h;
.source "SourceFile"


# instance fields
.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/e/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 336
    iput p3, p0, Lcom/google/android/maps/driveabout/e/o;->b:I

    .line 337
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x6

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/google/android/maps/driveabout/e/o;->b:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/o;->a:Landroid/content/Context;

    sget v1, Lcom/google/glass/navlib/R$string;->da_step_u_turn:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
