.class public final Lcom/google/glass/sound/R$animator;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sound/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "animator"
.end annotation


# static fields
.field public static fragment_transition_come_back:I

.field public static fragment_transition_enter:I

.field public static fragment_transition_exit:I

.field public static fragment_transition_go_back:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/high16 v0, 0x7f050000

    sput v0, Lcom/google/glass/sound/R$animator;->fragment_transition_come_back:I

    .line 28
    const v0, 0x7f050001

    sput v0, Lcom/google/glass/sound/R$animator;->fragment_transition_enter:I

    .line 29
    const v0, 0x7f050002

    sput v0, Lcom/google/glass/sound/R$animator;->fragment_transition_exit:I

    .line 30
    const v0, 0x7f050003

    sput v0, Lcom/google/glass/sound/R$animator;->fragment_transition_go_back:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
