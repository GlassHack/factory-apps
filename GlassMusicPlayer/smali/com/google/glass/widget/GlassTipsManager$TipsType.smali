.class public final enum Lcom/google/glass/widget/GlassTipsManager$TipsType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/widget/GlassTipsManager$TipsType;

.field public static final enum SAY_OK_GLASS:Lcom/google/glass/widget/GlassTipsManager$TipsType;

.field public static final enum TAP_TO_EXPAND:Lcom/google/glass/widget/GlassTipsManager$TipsType;

.field public static final enum TAP_TO_VIEW_MENU:Lcom/google/glass/widget/GlassTipsManager$TipsType;


# instance fields
.field final fontStyle:I

.field final maxTimes:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field final settingsName:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x3

    .line 43
    new-instance v0, Lcom/google/glass/widget/GlassTipsManager$TipsType;

    const-string v1, "TAP_TO_VIEW_MENU"

    const-string v3, "GLASS_TIPS_TAP_TO_VIEW_MENU"

    sget v5, Lcom/google/glass/common/R$style;->MediumOverlayText:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/widget/GlassTipsManager$TipsType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/google/glass/widget/GlassTipsManager$TipsType;->TAP_TO_VIEW_MENU:Lcom/google/glass/widget/GlassTipsManager$TipsType;

    .line 44
    new-instance v5, Lcom/google/glass/widget/GlassTipsManager$TipsType;

    const-string v6, "TAP_TO_EXPAND"

    const-string v8, "GLASS_TIPS_TAP_TO_EXPAND"

    sget v10, Lcom/google/glass/common/R$style;->MediumOverlayText:I

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/google/glass/widget/GlassTipsManager$TipsType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v5, Lcom/google/glass/widget/GlassTipsManager$TipsType;->TAP_TO_EXPAND:Lcom/google/glass/widget/GlassTipsManager$TipsType;

    .line 45
    new-instance v8, Lcom/google/glass/widget/GlassTipsManager$TipsType;

    const-string v9, "SAY_OK_GLASS"

    const-string v11, "GLASS_TIPS_SAY_OK_GLASS"

    sget v13, Lcom/google/glass/common/R$style;->OverlayText:I

    move v10, v14

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/google/glass/widget/GlassTipsManager$TipsType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v8, Lcom/google/glass/widget/GlassTipsManager$TipsType;->SAY_OK_GLASS:Lcom/google/glass/widget/GlassTipsManager$TipsType;

    .line 42
    new-array v0, v4, [Lcom/google/glass/widget/GlassTipsManager$TipsType;

    sget-object v1, Lcom/google/glass/widget/GlassTipsManager$TipsType;->TAP_TO_VIEW_MENU:Lcom/google/glass/widget/GlassTipsManager$TipsType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/widget/GlassTipsManager$TipsType;->TAP_TO_EXPAND:Lcom/google/glass/widget/GlassTipsManager$TipsType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/glass/widget/GlassTipsManager$TipsType;->SAY_OK_GLASS:Lcom/google/glass/widget/GlassTipsManager$TipsType;

    aput-object v1, v0, v14

    sput-object v0, Lcom/google/glass/widget/GlassTipsManager$TipsType;->$VALUES:[Lcom/google/glass/widget/GlassTipsManager$TipsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-object p3, p0, Lcom/google/glass/widget/GlassTipsManager$TipsType;->settingsName:Ljava/lang/String;

    .line 55
    iput p4, p0, Lcom/google/glass/widget/GlassTipsManager$TipsType;->maxTimes:I

    .line 56
    iput p5, p0, Lcom/google/glass/widget/GlassTipsManager$TipsType;->fontStyle:I

    .line 57
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/widget/GlassTipsManager$TipsType;
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/google/glass/widget/GlassTipsManager$TipsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/GlassTipsManager$TipsType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/widget/GlassTipsManager$TipsType;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/glass/widget/GlassTipsManager$TipsType;->$VALUES:[Lcom/google/glass/widget/GlassTipsManager$TipsType;

    invoke-virtual {v0}, [Lcom/google/glass/widget/GlassTipsManager$TipsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/widget/GlassTipsManager$TipsType;

    return-object v0
.end method
