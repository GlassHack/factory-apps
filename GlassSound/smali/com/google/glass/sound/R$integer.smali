.class public final Lcom/google/glass/sound/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sound/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static activity_animation_duration_ms:I

.field public static card_attribution_animation_duration:I

.field public static card_attribution_delay:I

.field public static card_synchronicity_icon_duration:I

.field public static fragment_transition_animation_duration:I

.field public static horizontal_scroll_deferred_load_animation_duration_ms:I

.field public static infos_error_duration_ms:I

.field public static infos_success_duration_ms:I

.field public static max_lines_in_hangouts_timeline_card:I

.field public static max_lines_in_phone_call_timeline_card:I

.field public static slider_in_out_animation_duration_ms:I

.field public static sys_storage_threshold_bytes:I

.field public static sys_storage_threshold_percentage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 705
    const v0, 0x7f0a0003

    sput v0, Lcom/google/glass/sound/R$integer;->activity_animation_duration_ms:I

    .line 708
    const v0, 0x7f0a0001

    sput v0, Lcom/google/glass/sound/R$integer;->card_attribution_animation_duration:I

    .line 711
    const/high16 v0, 0x7f0a0000

    sput v0, Lcom/google/glass/sound/R$integer;->card_attribution_delay:I

    .line 714
    const v0, 0x7f0a0002

    sput v0, Lcom/google/glass/sound/R$integer;->card_synchronicity_icon_duration:I

    .line 717
    const v0, 0x7f0a000a

    sput v0, Lcom/google/glass/sound/R$integer;->fragment_transition_animation_duration:I

    .line 720
    const v0, 0x7f0a0007

    sput v0, Lcom/google/glass/sound/R$integer;->horizontal_scroll_deferred_load_animation_duration_ms:I

    .line 723
    const v0, 0x7f0a0004

    sput v0, Lcom/google/glass/sound/R$integer;->infos_error_duration_ms:I

    .line 726
    const v0, 0x7f0a0005

    sput v0, Lcom/google/glass/sound/R$integer;->infos_success_duration_ms:I

    .line 729
    const v0, 0x7f0a000c

    sput v0, Lcom/google/glass/sound/R$integer;->max_lines_in_hangouts_timeline_card:I

    .line 732
    const v0, 0x7f0a000b

    sput v0, Lcom/google/glass/sound/R$integer;->max_lines_in_phone_call_timeline_card:I

    .line 735
    const v0, 0x7f0a0006

    sput v0, Lcom/google/glass/sound/R$integer;->slider_in_out_animation_duration_ms:I

    .line 738
    const v0, 0x7f0a0009

    sput v0, Lcom/google/glass/sound/R$integer;->sys_storage_threshold_bytes:I

    .line 741
    const v0, 0x7f0a0008

    sput v0, Lcom/google/glass/sound/R$integer;->sys_storage_threshold_percentage:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
