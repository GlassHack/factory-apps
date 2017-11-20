.class public final Lcom/google/android/maps/driveabout/e/n;
.super Lcom/google/android/maps/driveabout/e/h;
.source "SourceFile"


# static fields
.field private static final d:[I


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 111
    const/16 v0, 0xc

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/glass/navlib/R$string;->da_step_slight_left:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/google/glass/navlib/R$string;->da_step_slight_right:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/google/glass/navlib/R$string;->da_step_turn_left:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/google/glass/navlib/R$string;->da_step_turn_right:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/google/glass/navlib/R$string;->da_step_sharp_left:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/google/glass/navlib/R$string;->da_step_sharp_right:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/google/glass/navlib/R$string;->da_step_slight_left_onto:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/google/glass/navlib/R$string;->da_step_slight_right_onto:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/google/glass/navlib/R$string;->da_step_turn_left_onto:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/google/glass/navlib/R$string;->da_step_turn_right_onto:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/google/glass/navlib/R$string;->da_step_sharp_left_onto:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/google/glass/navlib/R$string;->da_step_sharp_right_onto:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/e/n;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/e/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 121
    iput p3, p0, Lcom/google/android/maps/driveabout/e/n;->b:I

    .line 122
    iput p4, p0, Lcom/google/android/maps/driveabout/e/n;->c:I

    .line 123
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/google/android/maps/driveabout/e/n;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/google/android/maps/driveabout/e/n;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    .line 134
    iget v0, p0, Lcom/google/android/maps/driveabout/e/n;->c:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v0, v1

    .line 140
    :goto_0
    iget v4, p0, Lcom/google/android/maps/driveabout/e/n;->b:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 141
    add-int/lit8 v0, v0, 0x2

    .line 148
    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/e/n;->a(I)Lcom/google/android/maps/driveabout/nav/aj;

    move-result-object v3

    .line 149
    if-eqz v3, :cond_4

    .line 150
    add-int/lit8 v0, v0, 0x6

    .line 151
    iget-object v4, p0, Lcom/google/android/maps/driveabout/e/n;->a:Landroid/content/Context;

    sget-object v5, Lcom/google/android/maps/driveabout/e/n;->d:[I

    aget v0, v5, v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/aj;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_2
    return-object v0

    .line 136
    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/e/n;->c:I

    if-eq v0, v1, :cond_5

    move-object v0, v3

    .line 137
    goto :goto_2

    .line 142
    :cond_2
    iget v4, p0, Lcom/google/android/maps/driveabout/e/n;->b:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 143
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 144
    :cond_3
    iget v4, p0, Lcom/google/android/maps/driveabout/e/n;->b:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    move-object v0, v3

    .line 145
    goto :goto_2

    .line 153
    :cond_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/n;->a:Landroid/content/Context;

    sget-object v2, Lcom/google/android/maps/driveabout/e/n;->d:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_0
.end method
