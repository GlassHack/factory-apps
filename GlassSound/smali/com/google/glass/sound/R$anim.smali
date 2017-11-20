.class public final Lcom/google/glass/sound/R$anim;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sound/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "anim"
.end annotation


# static fields
.field public static bundle_enter:I

.field public static bundle_exit:I

.field public static contextual_enter:I

.field public static contextual_exit:I

.field public static fade_enter:I

.field public static modal_enter:I

.field public static modal_exit:I

.field public static pulsing_baseline_anim:I

.field public static pulsing_circle_anim:I

.field public static rotate_mic_gray:I

.field public static rotate_mic_red:I

.field public static timeline_enter:I

.field public static timeline_exit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/high16 v0, 0x7f040000

    sput v0, Lcom/google/glass/sound/R$anim;->bundle_enter:I

    .line 13
    const v0, 0x7f040001

    sput v0, Lcom/google/glass/sound/R$anim;->bundle_exit:I

    .line 14
    const v0, 0x7f040002

    sput v0, Lcom/google/glass/sound/R$anim;->contextual_enter:I

    .line 15
    const v0, 0x7f040003

    sput v0, Lcom/google/glass/sound/R$anim;->contextual_exit:I

    .line 16
    const v0, 0x7f040004

    sput v0, Lcom/google/glass/sound/R$anim;->fade_enter:I

    .line 17
    const v0, 0x7f040005

    sput v0, Lcom/google/glass/sound/R$anim;->modal_enter:I

    .line 18
    const v0, 0x7f040006

    sput v0, Lcom/google/glass/sound/R$anim;->modal_exit:I

    .line 19
    const v0, 0x7f040007

    sput v0, Lcom/google/glass/sound/R$anim;->pulsing_baseline_anim:I

    .line 20
    const v0, 0x7f040008

    sput v0, Lcom/google/glass/sound/R$anim;->pulsing_circle_anim:I

    .line 21
    const v0, 0x7f040009

    sput v0, Lcom/google/glass/sound/R$anim;->rotate_mic_gray:I

    .line 22
    const v0, 0x7f04000a

    sput v0, Lcom/google/glass/sound/R$anim;->rotate_mic_red:I

    .line 23
    const v0, 0x7f04000b

    sput v0, Lcom/google/glass/sound/R$anim;->timeline_enter:I

    .line 24
    const v0, 0x7f04000c

    sput v0, Lcom/google/glass/sound/R$anim;->timeline_exit:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
